	.data
	.align	2
	.globl	class_nameTab
	.globl	Main_protObj
	.globl	Int_protObj
	.globl	String_protObj
	.globl	bool_const0
	.globl	bool_const1
	.globl	_int_tag
	.globl	_bool_tag
	.globl	_string_tag
_int_tag:
	.word	2
_bool_tag:
	.word	3
_string_tag:
	.word	4
	.globl	_MemMgr_INITIALIZER
_MemMgr_INITIALIZER:
	.word	_NoGC_Init
	.globl	_MemMgr_COLLECTOR
_MemMgr_COLLECTOR:
	.word	_NoGC_Collect
	.globl	_MemMgr_TEST
_MemMgr_TEST:
	.word	0
	.word	-1
str_const16:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const1
	.byte	0	
	.align	2
	.word	-1
str_const15:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const3
	.ascii	"Main"
	.byte	0	
	.align	2
	.word	-1
str_const14:
	.word	4
	.word	9
	.word	String_dispTab
	.word	int_const4
	.ascii	"CellularAutomaton"
	.byte	0	
	.align	2
	.word	-1
str_const13:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const5
	.ascii	"String"
	.byte	0	
	.align	2
	.word	-1
str_const12:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const3
	.ascii	"Bool"
	.byte	0	
	.align	2
	.word	-1
str_const11:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const6
	.ascii	"Int"
	.byte	0	
	.align	2
	.word	-1
str_const10:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const7
	.ascii	"IO"
	.byte	0	
	.align	2
	.word	-1
str_const9:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const5
	.ascii	"Object"
	.byte	0	
	.align	2
	.word	-1
str_const8:
	.word	4
	.word	7
	.word	String_dispTab
	.word	int_const8
	.ascii	"_prim_slot"
	.byte	0	
	.align	2
	.word	-1
str_const7:
	.word	4
	.word	7
	.word	String_dispTab
	.word	int_const9
	.ascii	"SELF_TYPE"
	.byte	0	
	.align	2
	.word	-1
str_const6:
	.word	4
	.word	7
	.word	String_dispTab
	.word	int_const9
	.ascii	"_no_class"
	.byte	0	
	.align	2
	.word	-1
str_const5:
	.word	4
	.word	8
	.word	String_dispTab
	.word	int_const10
	.ascii	"<basic class>"
	.byte	0	
	.align	2
	.word	-1
str_const4:
	.word	4
	.word	9
	.word	String_dispTab
	.word	int_const11
	.ascii	"         X         "
	.byte	0	
	.align	2
	.word	-1
str_const3:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const0
	.ascii	"."
	.byte	0	
	.align	2
	.word	-1
str_const2:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const0
	.ascii	"X"
	.byte	0	
	.align	2
	.word	-1
str_const1:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const0
	.ascii	"\n"
	.byte	0	
	.align	2
	.word	-1
str_const0:
	.word	4
	.word	7
	.word	String_dispTab
	.word	int_const8
	.ascii	"./cells.cl"
	.byte	0	
	.align	2
	.word	-1
int_const11:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	19
	.word	-1
int_const10:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	13
	.word	-1
int_const9:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	9
	.word	-1
int_const8:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	10
	.word	-1
int_const7:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	2
	.word	-1
int_const6:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	3
	.word	-1
int_const5:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	6
	.word	-1
int_const4:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	17
	.word	-1
int_const3:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	4
	.word	-1
int_const2:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	20
	.word	-1
int_const1:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	0
	.word	-1
int_const0:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	1
	.word	-1
bool_const0:
	.word	3
	.word	4
	.word	Bool_dispTab
	.word	0
	.word	-1
bool_const1:
	.word	3
	.word	4
	.word	Bool_dispTab
	.word	1
class_nameTab:
				#Entered codeNameTab
	.word	str_const9
				#Leaving codeNameTab
				#Entered codeNameTab
	.word	str_const10
				#Leaving codeNameTab
				#Entered codeNameTab
	.word	str_const11
				#Leaving codeNameTab
				#Entered codeNameTab
	.word	str_const12
				#Leaving codeNameTab
				#Entered codeNameTab
	.word	str_const13
				#Leaving codeNameTab
				#Entered codeNameTab
	.word	str_const14
				#Leaving codeNameTab
				#Entered codeNameTab
	.word	str_const15
				#Leaving codeNameTab
class_objTab:
	.word	Object_protObj
	.word	Object_init
	.word	IO_protObj
	.word	IO_init
	.word	Int_protObj
	.word	Int_init
	.word	Bool_protObj
	.word	Bool_init
	.word	String_protObj
	.word	String_init
	.word	CellularAutomaton_protObj
	.word	CellularAutomaton_init
	.word	Main_protObj
	.word	Main_init
class_parentTab:
	.word	-2
	.word	0
	.word	0
	.word	0
	.word	0
	.word	1
	.word	0
class_attrTabTab:
	.word	Object_attrTab
	.word	IO_attrTab
	.word	Int_attrTab
	.word	Bool_attrTab
	.word	String_attrTab
	.word	CellularAutomaton_attrTab
	.word	Main_attrTab
Object_attrTab:
IO_attrTab:
Int_attrTab:
	.word	-2
Bool_attrTab:
	.word	-2
String_attrTab:
	.word	2
	.word	-2
CellularAutomaton_attrTab:
	.word	4
Main_attrTab:
	.word	5
Object_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
IO_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
CellularAutomaton_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	CellularAutomaton.init
	.word	CellularAutomaton.print
	.word	CellularAutomaton.num_cells
	.word	CellularAutomaton.cell
	.word	CellularAutomaton.cell_left_neighbor
	.word	CellularAutomaton.cell_right_neighbor
	.word	CellularAutomaton.cell_at_next_evolution
	.word	CellularAutomaton.evolve
Int_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
Bool_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
String_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	String.length
	.word	String.concat
	.word	String.substr
Main_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	Main.main
	.word	-1
				#Entered codeProtObj for Object
Object_protObj:
	.word	0
	.word	3
	.word	Object_dispTab
				#Leaving codeProtObj for Object
	.word	-1
				#Entered codeProtObj for IO
IO_protObj:
	.word	1
	.word	3
	.word	IO_dispTab
				#Leaving codeProtObj for IO
	.word	-1
				#Entered codeProtObj for CellularAutomaton
CellularAutomaton_protObj:
	.word	5
	.word	4
	.word	CellularAutomaton_dispTab
	.word	str_const16
				#Leaving codeProtObj for CellularAutomaton
	.word	-1
				#Entered codeProtObj for Int
Int_protObj:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	0
				#Leaving codeProtObj for Int
	.word	-1
				#Entered codeProtObj for Bool
Bool_protObj:
	.word	3
	.word	4
	.word	Bool_dispTab
	.word	0
				#Leaving codeProtObj for Bool
	.word	-1
				#Entered codeProtObj for String
String_protObj:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const1
	.word	0
				#Leaving codeProtObj for String
	.word	-1
				#Entered codeProtObj for Main
Main_protObj:
	.word	6
	.word	4
	.word	Main_dispTab
	.word	0
				#Leaving codeProtObj for Main
	.globl	heap_start
heap_start:
	.word	0
	.text
	.globl	Main_init
	.globl	Int_init
	.globl	String_init
	.globl	Bool_init
	.globl	Main.main
				#Entered codeObjInit for Object
Object_init:
				#Entered objectInitPrologue
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 16
	move	$s0 $a0
				#Leaving objectInitPrologue
	move	$a0 $s0
				#Entered objectInitEpilogue
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
				#Leaving objectInitEpilogue
				#Leaving codeObjInit for Object
				#Entered codeObjInit for IO
IO_init:
				#Entered objectInitPrologue
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 16
	move	$s0 $a0
				#Leaving objectInitPrologue
	jal	Object_init
	move	$a0 $s0
				#Entered objectInitEpilogue
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
				#Leaving objectInitEpilogue
				#Leaving codeObjInit for IO
				#Entered codeObjInit for Int
Int_init:
				#Entered objectInitPrologue
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 16
	move	$s0 $a0
				#Leaving objectInitPrologue
	jal	Object_init
	move	$a0 $s0
				#Entered objectInitEpilogue
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
				#Leaving objectInitEpilogue
				#Leaving codeObjInit for Int
				#Entered codeObjInit for Bool
Bool_init:
				#Entered objectInitPrologue
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 16
	move	$s0 $a0
				#Leaving objectInitPrologue
	jal	Object_init
	move	$a0 $s0
				#Entered objectInitEpilogue
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
				#Leaving objectInitEpilogue
				#Leaving codeObjInit for Bool
				#Entered codeObjInit for String
String_init:
				#Entered objectInitPrologue
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 16
	move	$s0 $a0
				#Leaving objectInitPrologue
	jal	Object_init
	move	$a0 $s0
				#Entered objectInitEpilogue
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
				#Leaving objectInitEpilogue
				#Leaving codeObjInit for String
				#Entered codeObjInit for CellularAutomaton
CellularAutomaton_init:
				#Entered objectInitPrologue
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 16
	move	$s0 $a0
				#Leaving objectInitPrologue
	jal	IO_init
				#Generating code for attribute population_map of type String in class CellularAutomaton
				#Entered and exited cgen for no expression
	move	$a0 $zero
	sw	$a0 12($s0)
				# Done Generating code for attribute population_map of type String in class CellularAutomaton
	move	$a0 $s0
				#Entered objectInitEpilogue
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
				#Leaving objectInitEpilogue
				#Leaving codeObjInit for CellularAutomaton
				#Entered codeObjInit for Main
Main_init:
				#Entered objectInitPrologue
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 16
	move	$s0 $a0
				#Leaving objectInitPrologue
	jal	Object_init
				#Generating code for attribute cells of type CellularAutomaton in class Main
				#Entered and exited cgen for no expression
	move	$a0 $zero
	sw	$a0 12($s0)
				# Done Generating code for attribute cells of type CellularAutomaton in class Main
	move	$a0 $s0
				#Entered objectInitEpilogue
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
				#Leaving objectInitEpilogue
				#Leaving codeObjInit for Main
				#Entered codeClassMethods for CellularAutomaton
				#Generating code for method init in class CellularAutomaton
CellularAutomaton.init:
	addiu	$sp $sp -8
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	addiu	$fp $sp 16
	move	$s0 $a0
				#Generating inner code for method init with AR_size of 16
				#Entered cgen for block
				#Entered cgen for assign
				#Entered cgen for object: map
	lw	$a0 8($fp)
				#Exited cgen for object
	sw	$a0 12($s0)
				#Leaving cgen for assign
				#Entered cgen for object: self
	move	$a0 $s0
				#Exited cgen for object
				#Leaving cgen for block
				#Done Generating inner code for method init with AR_size of 16
				#Incrementing Stack pointer and Restoring FP, SELF, and then jumping
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 16
	addiu	$sp $sp 8
	jr	$ra	
				#Generating code for method print in class CellularAutomaton
CellularAutomaton.print:
	addiu	$sp $sp -4
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	addiu	$fp $sp 16
	move	$s0 $a0
				#Generating inner code for method print with AR_size of 12
				#Entered cgen for block
				#BEGIN dispatch for method out_string in class CellularAutomaton
				#Evaluating and pushing argument of type String to current frame
				#BEGIN dispatch for method concat in class String
				#Evaluating and pushing argument of type String to current frame
				#Entered cgen for string const expression
	la	$a0 str_const1
				#Leaving cgen for string const expression
	sw	$a0 0($sp)
	addiu	$sp $sp -4
				#Done pushing argument of type String to current frame
				#Entered cgen for object: population_map
	lw	$a0 12($s0)
				#Exited cgen for object
	bne	$a0 $zero label0
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label0:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr	$t1
				#DONE dispatch for method concat in class String
	sw	$a0 0($sp)
	addiu	$sp $sp -4
				#Done pushing argument of type String to current frame
				#Entered cgen for object: self
	move	$a0 $s0
				#Exited cgen for object
	bne	$a0 $zero label1
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label1:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr	$t1
				#DONE dispatch for method out_string in class CellularAutomaton
				#Entered cgen for object: self
	move	$a0 $s0
				#Exited cgen for object
				#Leaving cgen for block
				#Done Generating inner code for method print with AR_size of 12
				#Incrementing Stack pointer and Restoring FP, SELF, and then jumping
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	addiu	$sp $sp 4
	jr	$ra	
				#Generating code for method num_cells in class CellularAutomaton
CellularAutomaton.num_cells:
	addiu	$sp $sp -4
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	addiu	$fp $sp 16
	move	$s0 $a0
				#Generating inner code for method num_cells with AR_size of 12
				#BEGIN dispatch for method length in class String
				#Entered cgen for object: population_map
	lw	$a0 12($s0)
				#Exited cgen for object
	bne	$a0 $zero label2
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label2:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr	$t1
				#DONE dispatch for method length in class String
				#Done Generating inner code for method num_cells with AR_size of 12
				#Incrementing Stack pointer and Restoring FP, SELF, and then jumping
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	addiu	$sp $sp 4
	jr	$ra	
				#Generating code for method cell in class CellularAutomaton
CellularAutomaton.cell:
	addiu	$sp $sp -8
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	addiu	$fp $sp 16
	move	$s0 $a0
				#Generating inner code for method cell with AR_size of 16
				#BEGIN dispatch for method substr in class String
				#Evaluating and pushing argument of type Int to current frame
				#Entered cgen for object: position
	lw	$a0 8($fp)
				#Exited cgen for object
	sw	$a0 0($sp)
	addiu	$sp $sp -4
				#Done pushing argument of type Int to current frame
				#Evaluating and pushing argument of type Int to current frame
				#Entered cgen for int const expression
	la	$a0 int_const0
				#Leaving cgen for int const expression
	sw	$a0 0($sp)
	addiu	$sp $sp -4
				#Done pushing argument of type Int to current frame
				#Entered cgen for object: population_map
	lw	$a0 12($s0)
				#Exited cgen for object
	bne	$a0 $zero label3
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label3:
	lw	$t1 8($a0)
	lw	$t1 20($t1)
	jalr	$t1
				#DONE dispatch for method substr in class String
				#Done Generating inner code for method cell with AR_size of 16
				#Incrementing Stack pointer and Restoring FP, SELF, and then jumping
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 16
	addiu	$sp $sp 8
	jr	$ra	
				#Generating code for method cell_left_neighbor in class CellularAutomaton
CellularAutomaton.cell_left_neighbor:
	addiu	$sp $sp -8
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	addiu	$fp $sp 16
	move	$s0 $a0
				#Generating inner code for method cell_left_neighbor with AR_size of 16
				#Entered cgen for conditional
				#Entering cgen for equal to
				#Entered cgen for object: position
	lw	$a0 8($fp)
				#Exited cgen for object
	move	$t1 $a0
				#Entered cgen for int const expression
	la	$a0 int_const1
				#Leaving cgen for int const expression
	move	$t2 $a0
	la	$a0 bool_const1
	la	$a1 bool_const0
	jal	equality_test
label7:
				#Leaving cgen for equal to
	la	$t1 bool_const1
	beq	$a0 $t1 label5
label4:
				#BEGIN dispatch for method cell in class CellularAutomaton
				#Evaluating and pushing argument of type Int to current frame
				#Entered cgen for subtract
				#Entered cgen for object: position
	lw	$a0 8($fp)
				#Exited cgen for object
	sw	$a0 0($sp)
	addiu	$sp $sp -4
				#Entered cgen for int const expression
	la	$a0 int_const0
				#Leaving cgen for int const expression
	jal	Object.copy
	lw	$t1 4($sp)
	lw	$t1 12($t1)
	lw	$t2 12($a0)
	sub	$t1 $t1 $t2
	sw	$t1 12($a0)
	addiu	$sp $sp 4
				#Leaving cgen for subtract
	sw	$a0 0($sp)
	addiu	$sp $sp -4
				#Done pushing argument of type Int to current frame
				#Entered cgen for object: self
	move	$a0 $s0
				#Exited cgen for object
	bne	$a0 $zero label8
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label8:
	lw	$t1 8($a0)
	lw	$t1 40($t1)
	jalr	$t1
				#DONE dispatch for method cell in class CellularAutomaton
	b	label6
label5:
				#BEGIN dispatch for method cell in class CellularAutomaton
				#Evaluating and pushing argument of type Int to current frame
				#Entered cgen for subtract
				#BEGIN dispatch for method num_cells in class CellularAutomaton
				#Entered cgen for object: self
	move	$a0 $s0
				#Exited cgen for object
	bne	$a0 $zero label9
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label9:
	lw	$t1 8($a0)
	lw	$t1 36($t1)
	jalr	$t1
				#DONE dispatch for method num_cells in class CellularAutomaton
	sw	$a0 0($sp)
	addiu	$sp $sp -4
				#Entered cgen for int const expression
	la	$a0 int_const0
				#Leaving cgen for int const expression
	jal	Object.copy
	lw	$t1 4($sp)
	lw	$t1 12($t1)
	lw	$t2 12($a0)
	sub	$t1 $t1 $t2
	sw	$t1 12($a0)
	addiu	$sp $sp 4
				#Leaving cgen for subtract
	sw	$a0 0($sp)
	addiu	$sp $sp -4
				#Done pushing argument of type Int to current frame
				#Entered cgen for object: self
	move	$a0 $s0
				#Exited cgen for object
	bne	$a0 $zero label10
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label10:
	lw	$t1 8($a0)
	lw	$t1 40($t1)
	jalr	$t1
				#DONE dispatch for method cell in class CellularAutomaton
label6:
				#Leaving cgen for conditional
				#Done Generating inner code for method cell_left_neighbor with AR_size of 16
				#Incrementing Stack pointer and Restoring FP, SELF, and then jumping
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 16
	addiu	$sp $sp 8
	jr	$ra	
				#Generating code for method cell_right_neighbor in class CellularAutomaton
CellularAutomaton.cell_right_neighbor:
	addiu	$sp $sp -8
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	addiu	$fp $sp 16
	move	$s0 $a0
				#Generating inner code for method cell_right_neighbor with AR_size of 16
				#Entered cgen for conditional
				#Entering cgen for equal to
				#Entered cgen for object: position
	lw	$a0 8($fp)
				#Exited cgen for object
	move	$t1 $a0
				#Entered cgen for subtract
				#BEGIN dispatch for method num_cells in class CellularAutomaton
				#Entered cgen for object: self
	move	$a0 $s0
				#Exited cgen for object
	bne	$a0 $zero label15
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label15:
	lw	$t1 8($a0)
	lw	$t1 36($t1)
	jalr	$t1
				#DONE dispatch for method num_cells in class CellularAutomaton
	sw	$a0 0($sp)
	addiu	$sp $sp -4
				#Entered cgen for int const expression
	la	$a0 int_const0
				#Leaving cgen for int const expression
	jal	Object.copy
	lw	$t1 4($sp)
	lw	$t1 12($t1)
	lw	$t2 12($a0)
	sub	$t1 $t1 $t2
	sw	$t1 12($a0)
	addiu	$sp $sp 4
				#Leaving cgen for subtract
	move	$t2 $a0
	la	$a0 bool_const1
	la	$a1 bool_const0
	jal	equality_test
label14:
				#Leaving cgen for equal to
	la	$t1 bool_const1
	beq	$a0 $t1 label12
label11:
				#BEGIN dispatch for method cell in class CellularAutomaton
				#Evaluating and pushing argument of type Int to current frame
				#Entered cgen for addition
				#Entered cgen for object: position
	lw	$a0 8($fp)
				#Exited cgen for object
	sw	$a0 0($sp)
	addiu	$sp $sp -4
				#Entered cgen for int const expression
	la	$a0 int_const0
				#Leaving cgen for int const expression
	jal	Object.copy
	lw	$t1 4($sp)
	lw	$t1 12($t1)
	lw	$t2 12($a0)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	addiu	$sp $sp 4
				#Leaving cgen for addition
	sw	$a0 0($sp)
	addiu	$sp $sp -4
				#Done pushing argument of type Int to current frame
				#Entered cgen for object: self
	move	$a0 $s0
				#Exited cgen for object
	bne	$a0 $zero label16
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label16:
	lw	$t1 8($a0)
	lw	$t1 40($t1)
	jalr	$t1
				#DONE dispatch for method cell in class CellularAutomaton
	b	label13
label12:
				#BEGIN dispatch for method cell in class CellularAutomaton
				#Evaluating and pushing argument of type Int to current frame
				#Entered cgen for int const expression
	la	$a0 int_const1
				#Leaving cgen for int const expression
	sw	$a0 0($sp)
	addiu	$sp $sp -4
				#Done pushing argument of type Int to current frame
				#Entered cgen for object: self
	move	$a0 $s0
				#Exited cgen for object
	bne	$a0 $zero label17
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label17:
	lw	$t1 8($a0)
	lw	$t1 40($t1)
	jalr	$t1
				#DONE dispatch for method cell in class CellularAutomaton
label13:
				#Leaving cgen for conditional
				#Done Generating inner code for method cell_right_neighbor with AR_size of 16
				#Incrementing Stack pointer and Restoring FP, SELF, and then jumping
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 16
	addiu	$sp $sp 8
	jr	$ra	
				#Generating code for method cell_at_next_evolution in class CellularAutomaton
CellularAutomaton.cell_at_next_evolution:
	addiu	$sp $sp -8
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	addiu	$fp $sp 16
	move	$s0 $a0
				#Generating inner code for method cell_at_next_evolution with AR_size of 16
				#Entered cgen for conditional
				#Entering cgen for equal to
				#Entered cgen for addition
				#Entered cgen for addition
				#Entered cgen for conditional
				#Entering cgen for equal to
				#BEGIN dispatch for method cell in class CellularAutomaton
				#Evaluating and pushing argument of type Int to current frame
				#Entered cgen for object: position
	lw	$a0 8($fp)
				#Exited cgen for object
	sw	$a0 0($sp)
	addiu	$sp $sp -4
				#Done pushing argument of type Int to current frame
				#Entered cgen for object: self
	move	$a0 $s0
				#Exited cgen for object
	bne	$a0 $zero label26
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label26:
	lw	$t1 8($a0)
	lw	$t1 40($t1)
	jalr	$t1
				#DONE dispatch for method cell in class CellularAutomaton
	move	$t1 $a0
				#Entered cgen for string const expression
	la	$a0 str_const2
				#Leaving cgen for string const expression
	move	$t2 $a0
	la	$a0 bool_const1
	la	$a1 bool_const0
	jal	equality_test
label25:
				#Leaving cgen for equal to
	la	$t1 bool_const1
	beq	$a0 $t1 label23
label22:
				#Entered cgen for int const expression
	la	$a0 int_const1
				#Leaving cgen for int const expression
	b	label24
label23:
				#Entered cgen for int const expression
	la	$a0 int_const0
				#Leaving cgen for int const expression
label24:
				#Leaving cgen for conditional
	sw	$a0 0($sp)
	addiu	$sp $sp -4
				#Entered cgen for conditional
				#Entering cgen for equal to
				#BEGIN dispatch for method cell_left_neighbor in class CellularAutomaton
				#Evaluating and pushing argument of type Int to current frame
				#Entered cgen for object: position
	lw	$a0 8($fp)
				#Exited cgen for object
	sw	$a0 0($sp)
	addiu	$sp $sp -4
				#Done pushing argument of type Int to current frame
				#Entered cgen for object: self
	move	$a0 $s0
				#Exited cgen for object
	bne	$a0 $zero label31
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label31:
	lw	$t1 8($a0)
	lw	$t1 44($t1)
	jalr	$t1
				#DONE dispatch for method cell_left_neighbor in class CellularAutomaton
	move	$t1 $a0
				#Entered cgen for string const expression
	la	$a0 str_const2
				#Leaving cgen for string const expression
	move	$t2 $a0
	la	$a0 bool_const1
	la	$a1 bool_const0
	jal	equality_test
label30:
				#Leaving cgen for equal to
	la	$t1 bool_const1
	beq	$a0 $t1 label28
label27:
				#Entered cgen for int const expression
	la	$a0 int_const1
				#Leaving cgen for int const expression
	b	label29
label28:
				#Entered cgen for int const expression
	la	$a0 int_const0
				#Leaving cgen for int const expression
label29:
				#Leaving cgen for conditional
	jal	Object.copy
	lw	$t1 4($sp)
	lw	$t1 12($t1)
	lw	$t2 12($a0)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	addiu	$sp $sp 4
				#Leaving cgen for addition
	sw	$a0 0($sp)
	addiu	$sp $sp -4
				#Entered cgen for conditional
				#Entering cgen for equal to
				#BEGIN dispatch for method cell_right_neighbor in class CellularAutomaton
				#Evaluating and pushing argument of type Int to current frame
				#Entered cgen for object: position
	lw	$a0 8($fp)
				#Exited cgen for object
	sw	$a0 0($sp)
	addiu	$sp $sp -4
				#Done pushing argument of type Int to current frame
				#Entered cgen for object: self
	move	$a0 $s0
				#Exited cgen for object
	bne	$a0 $zero label36
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label36:
	lw	$t1 8($a0)
	lw	$t1 48($t1)
	jalr	$t1
				#DONE dispatch for method cell_right_neighbor in class CellularAutomaton
	move	$t1 $a0
				#Entered cgen for string const expression
	la	$a0 str_const2
				#Leaving cgen for string const expression
	move	$t2 $a0
	la	$a0 bool_const1
	la	$a1 bool_const0
	jal	equality_test
label35:
				#Leaving cgen for equal to
	la	$t1 bool_const1
	beq	$a0 $t1 label33
label32:
				#Entered cgen for int const expression
	la	$a0 int_const1
				#Leaving cgen for int const expression
	b	label34
label33:
				#Entered cgen for int const expression
	la	$a0 int_const0
				#Leaving cgen for int const expression
label34:
				#Leaving cgen for conditional
	jal	Object.copy
	lw	$t1 4($sp)
	lw	$t1 12($t1)
	lw	$t2 12($a0)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	addiu	$sp $sp 4
				#Leaving cgen for addition
	move	$t1 $a0
				#Entered cgen for int const expression
	la	$a0 int_const0
				#Leaving cgen for int const expression
	move	$t2 $a0
	la	$a0 bool_const1
	la	$a1 bool_const0
	jal	equality_test
label21:
				#Leaving cgen for equal to
	la	$t1 bool_const1
	beq	$a0 $t1 label19
label18:
				#Entered cgen for string const expression
	la	$a0 str_const3
				#Leaving cgen for string const expression
	b	label20
label19:
				#Entered cgen for string const expression
	la	$a0 str_const2
				#Leaving cgen for string const expression
label20:
				#Leaving cgen for conditional
				#Done Generating inner code for method cell_at_next_evolution with AR_size of 16
				#Incrementing Stack pointer and Restoring FP, SELF, and then jumping
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 16
	addiu	$sp $sp 8
	jr	$ra	
				#Generating code for method evolve in class CellularAutomaton
CellularAutomaton.evolve:
	addiu	$sp $sp -4
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	addiu	$fp $sp 16
	move	$s0 $a0
				#Generating inner code for method evolve with AR_size of 12
				#Done Generating inner code for method evolve with AR_size of 12
				#Incrementing Stack pointer and Restoring FP, SELF, and then jumping
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	addiu	$sp $sp 4
	jr	$ra	
				#Leaving codeClassMethods for CellularAutomaton
				#Entered codeClassMethods for Main
				#Generating code for method main in class Main
Main.main:
	addiu	$sp $sp -4
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	addiu	$fp $sp 16
	move	$s0 $a0
				#Generating inner code for method main with AR_size of 12
				#Entered cgen for block
				#Entered cgen for assign
				#BEGIN dispatch for method init in class CellularAutomaton
				#Evaluating and pushing argument of type String to current frame
				#Entered cgen for string const expression
	la	$a0 str_const4
				#Leaving cgen for string const expression
	sw	$a0 0($sp)
	addiu	$sp $sp -4
				#Done pushing argument of type String to current frame
				#Entered cgen for new
	la	$a0 CellularAutomaton_protObj
	jal	Object.copy
	jal	CellularAutomaton_init
				#Leaving cgen for new
	bne	$a0 $zero label37
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label37:
	lw	$t1 8($a0)
	lw	$t1 28($t1)
	jalr	$t1
				#DONE dispatch for method init in class CellularAutomaton
	sw	$a0 12($s0)
				#Leaving cgen for assign
				#BEGIN dispatch for method print in class CellularAutomaton
				#Entered cgen for object: cells
	lw	$a0 12($s0)
				#Exited cgen for object
	bne	$a0 $zero label38
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label38:
	lw	$t1 8($a0)
	lw	$t1 32($t1)
	jalr	$t1
				#DONE dispatch for method print in class CellularAutomaton
				#Entered cgen for object: self
	move	$a0 $s0
				#Exited cgen for object
				#Leaving cgen for block
				#Done Generating inner code for method main with AR_size of 12
				#Incrementing Stack pointer and Restoring FP, SELF, and then jumping
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	addiu	$sp $sp 4
	jr	$ra	
				#Leaving codeClassMethods for Main
