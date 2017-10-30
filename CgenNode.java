/*
   Copyright (c) 2000 The Regents of the University of California.
   All rights reserved.

   Permission to use, copy, modify, and distribute this software for any
   purpose, without fee, and without written agreement is hereby granted,
   provided that the above copyright notice and the following two
   paragraphs appear in all copies of this software.

   IN NO EVENT SHALL THE UNIVERSITY OF CALIFORNIA BE LIABLE TO ANY PARTY FOR
   DIRECT, INDIRECT, SPECIAL, INCIDENTAL, OR CONSEQUENTIAL DAMAGES ARISING OUT
   OF THE USE OF THIS SOFTWARE AND ITS DOCUMENTATION, EVEN IF THE UNIVERSITY OF
   CALIFORNIA HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

   THE UNIVERSITY OF CALIFORNIA SPECIFICALLY DISCLAIMS ANY WARRANTIES,
   INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY
   AND FITNESS FOR A PARTICULAR PURPOSE.  THE SOFTWARE PROVIDED HEREUNDER IS
   ON AN "AS IS" BASIS, AND THE UNIVERSITY OF CALIFORNIA HAS NO OBLIGATION TO
   PROVIDE MAINTENANCE, SUPPORT, UPDATES, ENHANCEMENTS, OR MODIFICATIONS.
   */

// This is a project skeleton file

import java.io.PrintStream;
import java.util.Vector;
import java.util.Enumeration;
import java.util.*; 

class CgenNode extends class_c {

    /** The parent of this node in the inheritance tree */
    private CgenNode parent;

    /** The children of this node in the inheritance tree */
    private Vector children;

    /** Indicates a basic class */
    final static int Basic = 0;

    /** Indicates a class that came from a Cool program */
    final static int NotBasic = 1;

    /** Does this node correspond to a basic class? */
    private int basic_status;

    private LinkedList<AbstractSymbol> methodList; 
    private HashMap<AbstractSymbol, AbstractSymbol> methodClass; 
    public static Map<AbstractSymbol, Map<AbstractSymbol, Integer>> attrOffsetMap = new HashMap<AbstractSymbol, Map<AbstractSymbol, Integer>>();

    private static AbstractSymbol currentType;

    public static AbstractSymbol getCurrentType() 
    {
        return currentType;
    }
    
    public Integer getMethodOffset(AbstractSymbol method_name) 
    {
        assert methodList!=null;
        assert methodList.contains(method_name);
        return methodList.indexOf(method_name);
    }
    
    public void printMethodOffsets() 
    {
        System.out.println("Method Offsets for "+getName());
        for(AbstractSymbol name : methodList) {
            System.out.println(methodClass.get(name) + "." +name+"="+methodList.indexOf(name));
        }
    }

    public final static int OBJECT_CLASS_TAG = 0;
    public final static int IO_CLASS_TAG = 1;
    public final static int INT_CLASS_TAG = 2;
    public final static int BOOL_CLASS_TAG = 3;
    public final static int STRING_CLASS_TAG = 4;
    private static int CURR_CLASS_TAG = 2; //strange hack since it starts at some weird offset

    private static int CURR_LABEL_COUNT = 0;

    private int tag;

    private CgenClassTable cgenTable;


    /** Constructs a new CgenNode to represent class "c".
     * @param c the class
     * @param basic_status is this class basic or not
     * @param table the class table
     * */
    CgenNode(Class_ c, int basic_status, CgenClassTable table) 
    {
        super(0, c.getName(), c.getParent(), c.getFeatures(), c.getFilename());
        this.parent = null;
        this.children = new Vector();
        this.basic_status = basic_status;
        AbstractTable.stringtable.addString(name.getString());
        if(c.getName().toString().equals(TreeConstants.Object_.toString()))
        {
            this.tag = OBJECT_CLASS_TAG;
        } 
        else if (c.getName().toString().equals(TreeConstants.IO.toString()))
        {
            this.tag = IO_CLASS_TAG;
        } 
        else if (c.getName().toString().equals(TreeConstants.Int.toString()))
        {
            this.tag = INT_CLASS_TAG;
        } 
        else if (c.getName().toString().equals(TreeConstants.Bool.toString()))
        {
            this.tag = BOOL_CLASS_TAG;
        } 
        else if (c.getName().toString().equals(TreeConstants.Str.toString()))
        {
            this.tag = STRING_CLASS_TAG;
        } 
        else 
        {
            this.tag = CURR_CLASS_TAG;
            CURR_CLASS_TAG++;
        }
        this.cgenTable = table;
    }

    void addChild(CgenNode child) {
        children.addElement(child);
    }

    /** Gets the children of this class
     * @return the children
     * */
    Enumeration getChildren() {
        return children.elements(); 
    }

    /** Sets the parent of this class.
     * @param parent the parent
     * */
    void setParentNd(CgenNode parent) 
    {
        if (this.parent != null) 
        {
            Utilities.fatalError("parent already set in CgenNode.setParent()");
        }
        if (parent == null) 
        {
            Utilities.fatalError("null parent in CgenNode.setParent()");
        }
        this.parent = parent;
    }    


    /** Gets the parent of this class
     * @return the parent
     * */
    CgenNode getParentNd() 
    {
        return parent; 
    }

    /** Returns true is this is a basic class.
     * @return true or false
     * */
    boolean basic() 
    { 
        return basic_status == Basic; 
    }

    public int getTag(){
        return this.tag;
    }

    /** emits Class Object Table
     *
     **/
    public void codeClassObjTab(PrintStream str) 
    {
        str.println(CgenSupport.WORD + this.getName() + CgenSupport.PROTOBJ_SUFFIX);
        str.println(CgenSupport.WORD + this.getName() + CgenSupport.CLASSINIT_SUFFIX);
    }

    /***
     * Wonder if WE NEED TO PRINT 'class_parentTab' and
     * 'class_attrTabTab'
     * Yes I think we do, it will help for case expressions I think
     * **/
    public void codeParentTables(PrintStream str) 
    {
         if(this.tag != 0) 
            str.println(CgenSupport.WORD + this.getParentNd().tag);
        else
            str.println(CgenSupport.WORD + -2);
    }
    public void codeAttrTableTables(PrintStream str) {
        str.println(CgenSupport.WORD + this.name + "_attrTab");
    }
    public void codeAttrTables(PrintStream str) 
    {

        Stack<attr> attrStack = new Stack<attr>();
        CgenNode curr = this;
        while(curr != null) 
        {
            List<attr> tmp = new ArrayList<attr>();
            for(Enumeration e = curr.getFeatures().getElements(); e.hasMoreElements();)
            {
                Feature feat = (Feature) e.nextElement();
                if (feat instanceof  attr)
                {
                    tmp.add((attr) feat);
                }
            }
            for(int i = tmp.size()-1;i >= 0; i--)
            {
                attrStack.push(tmp.get(i));
            }
            curr = curr.getParentNd();
        }

        List<attr> attrList = new LinkedList<attr>();
        while(!attrStack.empty())
        {
            attrList.add(attrStack.pop());
        }

        str.println(this.name + "_attrTab:");
        for(attr at : attrList)
        {
            CgenNode tmp = (CgenNode) this.cgenTable.probe(at.type_decl);
            if (this.name.equals(TreeConstants.Int))
            {
                str.println(CgenSupport.WORD + -2);
            } 
            else if (this.name.equals(TreeConstants.Bool))
            {
                str.println(CgenSupport.WORD + -2);
            } 
            else if (this.name.equals(TreeConstants.Str))
            {
                if(tmp.tag != CgenNode.INT_CLASS_TAG)
                {
                    str.println(CgenSupport.WORD + -2);
                } 
                else 
                {
                    str.println(CgenSupport.WORD + tmp.tag);
                }
            }  
            else 
            {
                str.println(CgenSupport.WORD + tmp.tag);
            }
        }
    }

    /** emits prototype objects
     *
     **/
    public void codeObjProt(PrintStream str) 
    {
        System.out.println("new prot obj on "+getName());
        str.println(CgenSupport.WORD + "-1");
        CgenSupport.emitComment(str, "Entered codeProtObj for " + this.name);
        str.print(this.getName()+CgenSupport.PROTOBJ_SUFFIX+CgenSupport.LABEL);
        Stack<attr> attrStack = new Stack<attr>();

        CgenNode curr = this;
        while(curr != null) 
        {
            List<attr> tmp = new ArrayList<attr>();
            for(Enumeration e = curr.getFeatures().getElements(); e.hasMoreElements();)
            {
                Feature feat = (Feature) e.nextElement();
                if (feat instanceof  attr)
                {
                    tmp.add((attr) feat);
                }
            }
            for(int i = tmp.size()-1;i >= 0; i--)
            {
                attrStack.push(tmp.get(i));
            }
            curr = curr.getParentNd();
        }

        List<attr> attrList = new LinkedList<attr>();
        Map<AbstractSymbol, Integer> attrNameIndexMap = new HashMap<AbstractSymbol, Integer>();
        int j = 1;
        while(!attrStack.empty())
        {
            attr tmp = attrStack.pop();
            attrList.add(tmp);
            attrNameIndexMap.put(tmp.name, j);
            j++;
        }
        CgenNode.attrOffsetMap.put(this.name, attrNameIndexMap);
        str.println(CgenSupport.WORD + this.tag);
        str.println(CgenSupport.WORD + Integer.toString(3 + attrList.size()));

        // dispatch tables 
        str.println(CgenSupport.WORD + this.getName() + CgenSupport.DISPTAB_SUFFIX);
        
        for(int i = 0;i < attrList.size(); i++) 
        {
            attr at = attrList.get(i);
            AbstractSymbol attrType = at.type_decl;
            if(attrType.equals(TreeConstants.Object_))
            {
                str.println(CgenSupport.WORD + 0);
            } 
            else if (attrType.equals(TreeConstants.IO))
            {
                str.println(CgenSupport.WORD + 0);
            } 
            else if (attrType.equals(TreeConstants.Main))
            {
                str.println(CgenSupport.WORD + 0);
            } 
            else if (attrType.equals(TreeConstants.Int))
            {   str.print(CgenSupport.WORD);
                IntSymbol defaultVal = (IntSymbol) AbstractTable.inttable.lookup("0");
                defaultVal.codeRef(str);
                str.println();
            } 
            else if (attrType.equals(TreeConstants.Bool))
            {   str.print(CgenSupport.WORD);
                BoolConst defaultVal = new BoolConst(false);
                defaultVal.codeRef(str);
                str.println();
            } 
            else if (attrType.equals(TreeConstants.Str))
            {   str.print(CgenSupport.WORD);
                StringSymbol defaultVal = (StringSymbol) AbstractTable.stringtable.lookup("") ;
                defaultVal.codeRef(str);
                str.println();
            } else {        //all other objects are void for default
                str.println(CgenSupport.WORD + 0);
            }
        }
        CgenSupport.emitComment(str, "Leaving codeProtObj for " + this.name);
        for(Enumeration en = getChildren() ; en.hasMoreElements() ; ) {
            ((CgenNode) en.nextElement()).codeObjProt(str);
        }
    }


    public void buildDispatchTables(PrintStream str, LinkedList<AbstractSymbol> ancestorMethodList, HashMap<AbstractSymbol,AbstractSymbol> ancestorMethodClass) 
    {
        this.methodList = (LinkedList) ancestorMethodList.clone();
        HashSet<AbstractSymbol> methodSet = new HashSet<AbstractSymbol>();
        this.methodClass = (HashMap<AbstractSymbol, AbstractSymbol>) ancestorMethodClass.clone();
        str.print(this.getName()+CgenSupport.DISPTAB_SUFFIX+CgenSupport.LABEL);
        for(Enumeration e = getFeatures().getElements() ; e.hasMoreElements() ; ) {
            Feature feat = (Feature) e.nextElement();
            if (feat instanceof method) {
                method met = (method) feat;
    
                if(!methodList.contains(met.name)) {
                    methodList.add(met.name);
                } 
                methodClass.put(met.name, getName());
            }
        }
        for(AbstractSymbol method_name : methodList) {
            str.println(CgenSupport.WORD + methodClass.get(method_name) + CgenSupport.METHOD_SEP+method_name);
        }
        for(Enumeration en = getChildren() ; en.hasMoreElements(); ) 
        {
            ((CgenNode) en.nextElement()).buildDispatchTables(str, methodList, methodClass);
        }
    }
    

    /**
    * Helper function for codeProtObj
    * Recursively goes up to the Object
    **/
//    private void build

    /**
     * emits name tab
     **/
    public void codeNameTab(PrintStream str) {
        CgenSupport.emitComment(str, "Entered codeNameTab");
        str.print(CgenSupport.WORD);
        String name = this.getName().toString();
        StringSymbol s = (StringSymbol) AbstractTable.stringtable.lookup(name);
        s.codeRef(str);
        str.println();
        CgenSupport.emitComment(str, "Leaving codeNameTab");
    }



    private void objectInitPrologue(PrintStream str)
    {

        CgenSupport.emitComment(str, "Entered objectInitPrologue");
        int offset = CgenSupport.DEFAULT_OBJFIELDS;

        CgenSupport.emitAddiu(CgenSupport.SP, CgenSupport.SP, -offset * CgenSupport.WORD_SIZE, str);
        CgenSupport.emitStore(CgenSupport.FP, offset--, CgenSupport.SP, str);
        CgenSupport.emitStore(CgenSupport.SELF, offset--, CgenSupport.SP, str);
        CgenSupport.emitStore(CgenSupport.RA, offset--, CgenSupport.SP, str);
        CgenSupport.emitAddiu(CgenSupport.FP, CgenSupport.SP, 16, str);
        CgenSupport.emitMove(CgenSupport.SELF, CgenSupport.ACC, str);
        CgenSupport.emitComment(str, "Leaving objectInitPrologue");
    }

    private void popObjectInitEpilogue(PrintStream str)
    {
        CgenSupport.emitComment(str, "Entered objectInitEpilogue");
        int offset = CgenSupport.DEFAULT_OBJFIELDS;
        CgenSupport.emitLoad(CgenSupport.FP, offset--, CgenSupport.SP, str);
        CgenSupport.emitLoad(CgenSupport.SELF, offset--, CgenSupport.SP, str);
        CgenSupport.emitLoad(CgenSupport.RA, offset, CgenSupport.SP, str);
        CgenSupport.emitAddiu(CgenSupport.SP, CgenSupport.SP, CgenSupport.DEFAULT_OBJFIELDS * CgenSupport.WORD_SIZE, str);
        CgenSupport.emitReturn(str);
        CgenSupport.emitComment(str, "Leaving objectInitEpilogue");
    }

    /**
     * emits code for object initializer
     */
    public void codeObjInit(PrintStream str) {
        CgenSupport.emitComment(str, "Entered codeObjInit for " + this.name);
        str.print(this.getName() + CgenSupport.CLASSINIT_SUFFIX + CgenSupport.LABEL);

        objectInitPrologue(str);

        if (! getName().equals(TreeConstants.Object_) ) 
        {
            CgenSupport.emitJal(getParentNd().getName() + CgenSupport.CLASSINIT_SUFFIX, str);
        }

        if(this.name.equals(TreeConstants.Bool) || this.name.equals(TreeConstants.Str) || this.name.equals(TreeConstants.Int)){
        
        }   
        else 
        {
            for(Enumeration e = getFeatures().getElements() ; e.hasMoreElements() ; ) 
            {
                Feature feat = (Feature) e.nextElement();
                if (feat instanceof attr) 
                {
                    attr at = (attr) feat;
                    CgenSupport.emitComment(str, "Generating code for attribute " + at.name  + " of type " + at.type_decl  + " in class " + this.name);

                    at.init.code(str, this.cgenTable);

                    int offset = CgenNode.attrOffsetMap.get(this.name).get(at.name) + 2;
                    CgenSupport.emitStore(CgenSupport.ACC, offset, CgenSupport.SELF, str);

                    CgenSupport.emitComment(str, " Done Generating code for attribute " + at.name  + " of type " + at.type_decl  + " in class " + this.name);
                }
            }
        }

        CgenSupport.emitMove(CgenSupport.ACC, CgenSupport.SELF, str);
        popObjectInitEpilogue(str);
        CgenSupport.emitComment(str, "Leaving codeObjInit for " + this.name);
    }


    /**
     * emits code for class methods 
     */
    public void codeClassMethods(PrintStream str) 
    {
        this.currentType = this.getName();
        if(this.basic()) 
        {
            return;
        }
        
        CgenSupport.emitComment(str, "Entered codeClassMethods for " + this.name);
        for(Enumeration e = getFeatures().getElements() ; e.hasMoreElements() ; ) 
        {
            Feature feat = (Feature) e.nextElement();
            if (feat instanceof method) {
                this.cgenTable.enterScope();
                method met = (method) feat;
                CgenSupport.emitComment(str, "Generating code for method " + met.name  +  " in class " + this.name);
                str.print(this.getName()+CgenSupport.METHOD_SEP+met.name+CgenSupport.LABEL);
                int offsetFormals = CgenSupport.WORD_SIZE*(met.formals.getLength() + 1);
                CgenSupport.emitAddiu(CgenSupport.SP, CgenSupport.SP, -offsetFormals,str);
                CgenSupport.emitPush(CgenSupport.FP, str);
                CgenSupport.emitPush(CgenSupport.SELF, str);
                CgenSupport.emitPush(CgenSupport.RA, str);
                CgenSupport.emitAddiu(CgenSupport.FP, CgenSupport.SP, 16, str);
                CgenSupport.emitMove(CgenSupport.SELF, CgenSupport.ACC, str);

                int i = 1;
                for(Enumeration e2 = met.formals.getElements(); e2.hasMoreElements(); ) 
                {
                    formalc formy = (formalc) e2.nextElement();
                    this.cgenTable.addId(formy.name, i);
                    i++;
                }

                int AR_size = 12 + met.formals.getLength()*CgenSupport.WORD_SIZE;
                CgenSupport.emitComment(str, "Generating inner code for method " + met.name +" with AR_size of " + AR_size);
                met.expr.code(str, this.cgenTable);
                CgenSupport.emitComment(str, "Done Generating inner code for method " + met.name +" with AR_size of " + AR_size);
                CgenSupport.emitComment(str, "Incrementing Stack pointer and Restoring FP, SELF, and then jumping");
                CgenSupport.emitLoad(CgenSupport.FP, 3, CgenSupport.SP, str);
                CgenSupport.emitLoad(CgenSupport.SELF, 2, CgenSupport.SP, str);
                CgenSupport.emitLoad(CgenSupport.RA, 1, CgenSupport.SP, str);
                CgenSupport.emitAddiu(CgenSupport.SP, CgenSupport.SP, AR_size, str);
                CgenSupport.emitAddiu(CgenSupport.SP, CgenSupport.SP, offsetFormals,str);
                CgenSupport.emitReturn(str);

                this.cgenTable.exitScope();
            }
        }
        CgenSupport.emitComment(str, "Leaving codeClassMethods for " + this.name);
    }

    public static int getLabelCountAndIncrement(){
        return CURR_LABEL_COUNT++;
    }
}

