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
str_const15:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const0
	.byte	0	
	.align	2
	.word	-1
str_const14:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const1
	.ascii	"Main"
	.byte	0	
	.align	2
	.word	-1
str_const13:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const2
	.ascii	"Derived"
	.byte	0	
	.align	2
	.word	-1
str_const12:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const1
	.ascii	"Base"
	.byte	0	
	.align	2
	.word	-1
str_const11:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const3
	.ascii	"String"
	.byte	0	
	.align	2
	.word	-1
str_const10:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const1
	.ascii	"Bool"
	.byte	0	
	.align	2
	.word	-1
str_const9:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const4
	.ascii	"Int"
	.byte	0	
	.align	2
	.word	-1
str_const8:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const5
	.ascii	"IO"
	.byte	0	
	.align	2
	.word	-1
str_const7:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const3
	.ascii	"Object"
	.byte	0	
	.align	2
	.word	-1
str_const6:
	.word	4
	.word	7
	.word	String_dispTab
	.word	int_const6
	.ascii	"_prim_slot"
	.byte	0	
	.align	2
	.word	-1
str_const5:
	.word	4
	.word	7
	.word	String_dispTab
	.word	int_const7
	.ascii	"SELF_TYPE"
	.byte	0	
	.align	2
	.word	-1
str_const4:
	.word	4
	.word	7
	.word	String_dispTab
	.word	int_const7
	.ascii	"_no_class"
	.byte	0	
	.align	2
	.word	-1
str_const3:
	.word	4
	.word	8
	.word	String_dispTab
	.word	int_const8
	.ascii	"<basic class>"
	.byte	0	
	.align	2
	.word	-1
str_const2:
	.word	4
	.word	7
	.word	String_dispTab
	.word	int_const9
	.ascii	"derived\n"
	.byte	0	
	.align	2
	.word	-1
str_const1:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const10
	.ascii	"base\n"
	.byte	0	
	.align	2
	.word	-1
str_const0:
	.word	4
	.word	10
	.word	String_dispTab
	.word	int_const11
	.ascii	"./copy-self-dispatch.cl"
	.byte	0	
	.align	2
	.word	-1
int_const11:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	23
	.word	-1
int_const10:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	5
	.word	-1
int_const9:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	8
	.word	-1
int_const8:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	13
	.word	-1
int_const7:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	9
	.word	-1
int_const6:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	10
	.word	-1
int_const5:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	2
	.word	-1
int_const4:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	3
	.word	-1
int_const3:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	6
	.word	-1
int_const2:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	7
	.word	-1
int_const1:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	4
	.word	-1
int_const0:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	0
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
	.word	str_const7
				#Leaving codeNameTab
				#Entered codeNameTab
	.word	str_const8
				#Leaving codeNameTab
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
	.word	Base_protObj
	.word	Base_init
	.word	Derived_protObj
	.word	Derived_init
	.word	Main_protObj
	.word	Main_init
class_parentTab:
	.word	-2
	.word	0
	.word	0
	.word	0
	.word	0
	.word	1
	.word	5
	.word	0
class_attrTabTab:
	.word	Object_attrTab
	.word	IO_attrTab
	.word	Int_attrTab
	.word	Bool_attrTab
	.word	String_attrTab
	.word	Base_attrTab
	.word	Derived_attrTab
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
Base_attrTab:
Derived_attrTab:
Main_attrTab:
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
Base_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	Base.identify
	.word	Base.duplicate
Derived_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	Derived.identify
	.word	Base.duplicate
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
				#Entered codeProtObj for Base
Base_protObj:
	.word	5
	.word	3
	.word	Base_dispTab
				#Leaving codeProtObj for Base
	.word	-1
				#Entered codeProtObj for Derived
Derived_protObj:
	.word	6
	.word	3
	.word	Derived_dispTab
				#Leaving codeProtObj for Derived
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
	.word	int_const0
	.word	0
				#Leaving codeProtObj for String
	.word	-1
				#Entered codeProtObj for Main
Main_protObj:
	.word	7
	.word	3
	.word	Main_dispTab
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
				#Entered codeObjInit for Base
Base_init:
				#Entered objectInitPrologue
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 16
	move	$s0 $a0
				#Leaving objectInitPrologue
	jal	IO_init
	move	$a0 $s0
				#Entered objectInitEpilogue
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
				#Leaving objectInitEpilogue
				#Leaving codeObjInit for Base
				#Entered codeObjInit for Derived
Derived_init:
				#Entered objectInitPrologue
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 16
	move	$s0 $a0
				#Leaving objectInitPrologue
	jal	Base_init
	move	$a0 $s0
				#Entered objectInitEpilogue
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
				#Leaving objectInitEpilogue
				#Leaving codeObjInit for Derived
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
	move	$a0 $s0
				#Entered objectInitEpilogue
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
				#Leaving objectInitEpilogue
				#Leaving codeObjInit for Main
				#Entered codeClassMethods for Base
				#Generating code for method identify in class Base
Base.identify:
	addiu	$sp $sp -4
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	addiu	$fp $sp 16
	move	$s0 $a0
				#Generating inner code for method identify with AR_size of 12
				#BEGIN dispatch for method out_string in class Base
				#Evaluating and pushing argument of type String to current frame
				#Entered cgen for string const expression
	la	$a0 str_const1
				#Leaving cgen for string const expression
	sw	$a0 0($sp)
	addiu	$sp $sp -4
				#Done pushing argument of type String to current frame
				#Entered cgen for object: self
	move	$a0 $s0
				#Exited cgen for object
	bne	$a0 $zero label0
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label0:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr	$t1
				#DONE dispatch for method out_string in class Base
				#Done Generating inner code for method identify with AR_size of 12
				#Incrementing Stack pointer and Restoring FP, SELF, and then jumping
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	addiu	$sp $sp 4
	jr	$ra	
				#Generating code for method duplicate in class Base
Base.duplicate:
	addiu	$sp $sp -4
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	addiu	$fp $sp 16
	move	$s0 $a0
				#Generating inner code for method duplicate with AR_size of 12
				#BEGIN dispatch for method copy in class Base
				#Entered cgen for object: self
	move	$a0 $s0
				#Exited cgen for object
	bne	$a0 $zero label1
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label1:
	lw	$t1 8($a0)
	lw	$t1 8($t1)
	jalr	$t1
				#DONE dispatch for method copy in class Base
				#Done Generating inner code for method duplicate with AR_size of 12
				#Incrementing Stack pointer and Restoring FP, SELF, and then jumping
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	addiu	$sp $sp 4
	jr	$ra	
				#Leaving codeClassMethods for Base
				#Entered codeClassMethods for Derived
				#Generating code for method identify in class Derived
Derived.identify:
	addiu	$sp $sp -4
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	addiu	$fp $sp 16
	move	$s0 $a0
				#Generating inner code for method identify with AR_size of 12
				#BEGIN dispatch for method out_string in class Derived
				#Evaluating and pushing argument of type String to current frame
				#Entered cgen for string const expression
	la	$a0 str_const2
				#Leaving cgen for string const expression
	sw	$a0 0($sp)
	addiu	$sp $sp -4
				#Done pushing argument of type String to current frame
				#Entered cgen for object: self
	move	$a0 $s0
				#Exited cgen for object
	bne	$a0 $zero label2
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label2:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr	$t1
				#DONE dispatch for method out_string in class Derived
				#Done Generating inner code for method identify with AR_size of 12
				#Incrementing Stack pointer and Restoring FP, SELF, and then jumping
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	addiu	$sp $sp 4
	jr	$ra	
				#Leaving codeClassMethods for Derived
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
				#BEGIN dispatch for method identify in class Base
				#BEGIN dispatch for method duplicate in class Derived
				#Entered cgen for new
	la	$a0 Derived_protObj
	jal	Object.copy
	jal	Derived_init
				#Leaving cgen for new
	bne	$a0 $zero label3
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label3:
	lw	$t1 8($a0)
	lw	$t1 32($t1)
	jalr	$t1
				#DONE dispatch for method duplicate in class Derived
	bne	$a0 $zero label4
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label4:
	lw	$t1 8($a0)
	lw	$t1 28($t1)
	jalr	$t1
				#DONE dispatch for method identify in class Base
				#Done Generating inner code for method main with AR_size of 12
				#Incrementing Stack pointer and Restoring FP, SELF, and then jumping
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	addiu	$sp $sp 4
	jr	$ra	
				#Leaving codeClassMethods for Main
