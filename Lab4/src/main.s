	.file	"main.cpp"
	.text
	.section	.text$_ZNSt11char_traitsIcE6lengthEPKc,"x"
	.linkonce discard
	.globl	_ZNSt11char_traitsIcE6lengthEPKc
	.def	_ZNSt11char_traitsIcE6lengthEPKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt11char_traitsIcE6lengthEPKc
_ZNSt11char_traitsIcE6lengthEPKc:
.LFB184:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	$0, %eax
	testb	%al, %al
	je	.L3
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc
	jmp	.L4
.L3:
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	strlen
	nop
.L4:
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt10_Head_baseILy1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt10_Head_baseILy1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev
	.def	_ZNSt10_Head_baseILy1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt10_Head_baseILy1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev
_ZNSt10_Head_baseILy1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev:
.LFB2119:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt11_Tuple_implILy1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt11_Tuple_implILy1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev
	.def	_ZNSt11_Tuple_implILy1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt11_Tuple_implILy1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev
_ZNSt11_Tuple_implILy1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev:
.LFB2121:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt10_Head_baseILy1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt11_Tuple_implILy0EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt11_Tuple_implILy0EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev
	.def	_ZNSt11_Tuple_implILy0EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt11_Tuple_implILy0EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev
_ZNSt11_Tuple_implILy0EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev:
.LFB2123:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt11_Tuple_implILy1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED1Ev
	.def	_ZNSt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED1Ev
_ZNSt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED1Ev:
.LFB2126:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt11_Tuple_implILy0EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt10_Head_baseILy2ESt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt10_Head_baseILy2ESt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EED2Ev
	.def	_ZNSt10_Head_baseILy2ESt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt10_Head_baseILy2ESt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EED2Ev
_ZNSt10_Head_baseILy2ESt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EED2Ev:
.LFB2149:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED1Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt11_Tuple_implILy2EJSt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEifEED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt11_Tuple_implILy2EJSt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEifEED2Ev
	.def	_ZNSt11_Tuple_implILy2EJSt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEifEED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt11_Tuple_implILy2EJSt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEifEED2Ev
_ZNSt11_Tuple_implILy2EJSt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEifEED2Ev:
.LFB2151:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rcx
	call	_ZNSt10_Head_baseILy2ESt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EED2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt11_Tuple_implILy1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5tupleIJiS5_EEifEED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt11_Tuple_implILy1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5tupleIJiS5_EEifEED2Ev
	.def	_ZNSt11_Tuple_implILy1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5tupleIJiS5_EEifEED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt11_Tuple_implILy1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5tupleIJiS5_EEifEED2Ev
_ZNSt11_Tuple_implILy1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5tupleIJiS5_EEifEED2Ev:
.LFB2153:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	addq	$48, %rax
	movq	%rax, %rcx
	call	_ZNSt10_Head_baseILy1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt11_Tuple_implILy2EJSt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEifEED2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt11_Tuple_implILy0EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5tupleIJiS5_EEifEED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt11_Tuple_implILy0EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5tupleIJiS5_EEifEED2Ev
	.def	_ZNSt11_Tuple_implILy0EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5tupleIJiS5_EEifEED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt11_Tuple_implILy0EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5tupleIJiS5_EEifEED2Ev
_ZNSt11_Tuple_implILy0EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5tupleIJiS5_EEifEED2Ev:
.LFB2155:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt11_Tuple_implILy1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5tupleIJiS5_EEifEED2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IJiS5_EEifEED1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IJiS5_EEifEED1Ev
	.def	_ZNSt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IJiS5_EEifEED1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IJiS5_EEifEED1Ev
_ZNSt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IJiS5_EEifEED1Ev:
.LFB2158:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt11_Tuple_implILy0EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5tupleIJiS5_EEifEED2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC0:
	.ascii "World\0"
.LC1:
	.ascii "Hello\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB2097:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$248, %rsp
	.seh_stackalloc	248
	leaq	240(%rsp), %rbp
	.seh_setframe	%rbp, 240
	.seh_endprologue
	movl	%ecx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	call	__main
	movl	$3, -104(%rbp)
	movl	$2, -100(%rbp)
	movl	$123, -52(%rbp)
	leaq	-52(%rbp), %rdx
	leaq	-96(%rbp), %rax
	leaq	.LC0(%rip), %r8
	movq	%rax, %rcx
.LEHB0:
	call	_ZNSt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC1IiRA6_KcLb1EEEOT_OT0_
.LEHE0:
	leaq	-13(%rbp), %rax
	movq	%rax, -8(%rbp)
	nop
	nop
	leaq	-13(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %r8
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
.LEHB1:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE1:
	movl	$123, -12(%rbp)
	leaq	-96(%rbp), %r9
	leaq	-48(%rbp), %r8
	leaq	-12(%rbp), %rdx
	leaq	-192(%rbp), %rax
	leaq	-104(%rbp), %rcx
	movq	%rcx, 40(%rsp)
	leaq	-100(%rbp), %rcx
	movq	%rcx, 32(%rsp)
	movq	%rax, %rcx
	call	_ZNSt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IJiS5_EEifEEC1IJiS5_S6_iiELb1ELb1EEEDpOT_
	leaq	-192(%rbp), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
.LEHB2:
	call	_ZlsIcSt11char_traitsIcEJiNSt7__cxx1112basic_stringIcS1_SaIcEEESt5tupleIJiS5_EEifEERSt13basic_ostreamIT_T0_ESC_RKS6_IJDpT1_EE
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
.LEHE2:
	leaq	-192(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IJiS5_EEifEED1Ev
	leaq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	leaq	-13(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED1Ev
	movl	$0, %eax
	jmp	.L20
.L19:
	movq	%rax, %rbx
	leaq	-192(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IJiS5_EEifEED1Ev
	leaq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L17
.L18:
	movq	%rax, %rbx
.L17:
	leaq	-13(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB3:
	call	_Unwind_Resume
.LEHE3:
.L20:
	addq	$248, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA2097:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2097-.LLSDACSB2097
.LLSDACSB2097:
	.uleb128 .LEHB0-.LFB2097
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB2097
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L18-.LFB2097
	.uleb128 0
	.uleb128 .LEHB2-.LFB2097
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L19-.LFB2097
	.uleb128 0
	.uleb128 .LEHB3-.LFB2097
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSE2097:
	.text
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc
	.def	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc
_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc:
.LFB2159:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L22
.L23:
	addq	$1, -8(%rbp)
.L22:
	movb	$0, -9(%rbp)
	movq	16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-9(%rbp), %rax
	movq	%rax, %rdx
	call	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_
	xorl	$1, %eax
	testb	%al, %al
	jne	.L23
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev:
.LFB2258:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC2:
	.ascii "basic_string: construction from null is not valid\0"
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_:
.LFB2434:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	leaq	48(%rsp), %rbp
	.seh_setframe	%rbp, 48
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	%r8, 48(%rbp)
	movq	32(%rbp), %rbx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv
	movq	48(%rbp), %rdx
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	%rbx, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_
	cmpq	$0, 40(%rbp)
	jne	.L27
	leaq	.LC2(%rip), %rax
	movq	%rax, %rcx
.LEHB4:
	call	_ZSt19__throw_logic_errorPKc
.L27:
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt11char_traitsIcE6lengthEPKc
	movq	40(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rcx
	movq	40(%rbp), %rdx
	movq	32(%rbp), %rax
	movl	%esi, %r9d
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag
.LEHE4:
	jmp	.L30
.L29:
	movq	%rax, %rbx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB5:
	call	_Unwind_Resume
	nop
.LEHE5:
.L30:
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA2434:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2434-.LLSDACSB2434
.LLSDACSB2434:
	.uleb128 .LEHB4-.LFB2434
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L29-.LFB2434
	.uleb128 0
	.uleb128 .LEHB5-.LFB2434
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSE2434:
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC1IiRA6_KcLb1EEEOT_OT0_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC1IiRA6_KcLb1EEEOT_OT0_
	.def	_ZNSt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC1IiRA6_KcLb1EEEOT_OT0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC1IiRA6_KcLb1EEEOT_OT0_
_ZNSt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC1IiRA6_KcLb1EEEOT_OT0_:
.LFB2437:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	leaq	32(%rsp), %rbp
	.seh_setframe	%rbp, 32
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	%r8, 48(%rbp)
	movq	32(%rbp), %rbx
	movq	48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIRA6_KcEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %rsi
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rsi, %r8
	movq	%rax, %rdx
	movq	%rbx, %rcx
	call	_ZNSt11_Tuple_implILy0EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IiJRA6_KcEvEEOT_DpOT0_
	nop
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IJiS5_EEifEEC1IJiS5_S6_iiELb1ELb1EEEDpOT_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IJiS5_EEifEEC1IJiS5_S6_iiELb1ELb1EEEDpOT_
	.def	_ZNSt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IJiS5_EEifEEC1IJiS5_S6_iiELb1ELb1EEEDpOT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IJiS5_EEifEEC1IJiS5_S6_iiELb1ELb1EEEDpOT_
_ZNSt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IJiS5_EEifEEC1IJiS5_S6_iiELb1ELb1EEEDpOT_:
.LFB2440:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	leaq	48(%rsp), %rbp
	.seh_setframe	%rbp, 48
	.seh_endprologue
	movq	%rcx, 64(%rbp)
	movq	%rdx, 72(%rbp)
	movq	%r8, 80(%rbp)
	movq	%r9, 88(%rbp)
	movq	64(%rbp), %rbx
	movq	104(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %rdi
	movq	96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %rsi
	movq	88(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardISt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEOT_RNSt16remove_referenceIS8_E4typeE
	movq	%rax, %r13
	movq	80(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS6_E4typeE
	movq	%rax, %r12
	movq	72(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rdi, 40(%rsp)
	movq	%rsi, 32(%rsp)
	movq	%r13, %r9
	movq	%r12, %r8
	movq	%rax, %rdx
	movq	%rbx, %rcx
	call	_ZNSt11_Tuple_implILy0EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5tupleIJiS5_EEifEEC2IiJS5_S7_iiEvEEOT_DpOT0_
	nop
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%r12
	popq	%r13
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA2440:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2440-.LLSDACSB2440
.LLSDACSB2440:
.LLSDACSE2440:
	.section	.text$_ZNSt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IJiS5_EEifEEC1IJiS5_S6_iiELb1ELb1EEEDpOT_,"x"
	.linkonce discard
	.seh_endproc
	.section .rdata,"dr"
.LC3:
	.ascii "<\0"
.LC4:
	.ascii ">\0"
	.section	.text$_ZlsIcSt11char_traitsIcEJiNSt7__cxx1112basic_stringIcS1_SaIcEEESt5tupleIJiS5_EEifEERSt13basic_ostreamIT_T0_ESC_RKS6_IJDpT1_EE,"x"
	.linkonce discard
	.globl	_ZlsIcSt11char_traitsIcEJiNSt7__cxx1112basic_stringIcS1_SaIcEEESt5tupleIJiS5_EEifEERSt13basic_ostreamIT_T0_ESC_RKS6_IJDpT1_EE
	.def	_ZlsIcSt11char_traitsIcEJiNSt7__cxx1112basic_stringIcS1_SaIcEEESt5tupleIJiS5_EEifEERSt13basic_ostreamIT_T0_ESC_RKS6_IJDpT1_EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZlsIcSt11char_traitsIcEJiNSt7__cxx1112basic_stringIcS1_SaIcEEESt5tupleIJiS5_EEifEERSt13basic_ostreamIT_T0_ESC_RKS6_IJDpT1_EE
_ZlsIcSt11char_traitsIcEJiNSt7__cxx1112basic_stringIcS1_SaIcEEESt5tupleIJiS5_EEifEERSt13basic_ostreamIT_T0_ESC_RKS6_IJDpT1_EE:
.LFB2441:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	32(%rsp), %rbp
	.seh_setframe	%rbp, 32
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	32(%rbp), %rax
	leaq	.LC3(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	40(%rbp), %rdx
	movq	32(%rbp), %rax
	movl	%ebx, %r8d
	movq	%rax, %rcx
	call	_Z10PrintTupleIcSt11char_traitsIcEJiNSt7__cxx1112basic_stringIcS1_SaIcEEESt5tupleIJiS5_EEifELy4EENSt9enable_ifIXneT2_Li0EEvE4typeERSt13basic_ostreamIT_T0_ERKS6_IJDpT1_EESt17integral_constantIyXT2_EE
	movq	32(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	32(%rbp), %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_,"x"
	.linkonce discard
	.globl	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_
	.def	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_
_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_:
.LFB2444:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movzbl	(%rax), %edx
	movq	24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	sete	%al
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt15__new_allocatorIcED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt15__new_allocatorIcED2Ev
	.def	_ZNSt15__new_allocatorIcED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt15__new_allocatorIcED2Ev
_ZNSt15__new_allocatorIcED2Ev:
.LFB2498:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC1EPS4_,"x"
	.linkonce discard
	.align 2
	.globl	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC1EPS4_
	.def	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC1EPS4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC1EPS4_
_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC1EPS4_:
.LFB2506:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD1Ev
	.def	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD1Ev
_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD1Ev:
.LFB2509:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L41
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
.L41:
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA2509:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2509-.LLSDACSB2509
.LLSDACSB2509:
.LLSDACSE2509:
	.section	.text$_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD1Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag:
.LFB2503:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$104, %rsp
	.seh_stackalloc	104
	leaq	96(%rsp), %rbp
	.seh_setframe	%rbp, 96
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	%r8, 48(%rbp)
	movq	40(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	48(%rbp), %rax
	movq	%rax, -8(%rbp)
	nop
	movq	-56(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	subq	-16(%rbp), %rax
	nop
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$15, %rax
	jbe	.L46
	leaq	-40(%rbp), %rdx
	movq	32(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rcx
.LEHB6:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy
.LEHE6:
	movq	%rax, %rdx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc
	movq	-40(%rbp), %rdx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEy
	jmp	.L47
.L46:
	movq	32(%rbp), %rax
	movq	%rax, -32(%rbp)
	nop
.L47:
	movq	32(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC1EPS4_
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv
	movq	%rax, %rcx
	movq	48(%rbp), %rdx
	movq	40(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_
	movq	$0, -48(%rbp)
	movq	-40(%rbp), %rdx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
.LEHB7:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEy
.LEHE7:
	leaq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD1Ev
	jmp	.L50
.L49:
	movq	%rax, %rbx
	leaq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD1Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB8:
	call	_Unwind_Resume
	nop
.LEHE8:
.L50:
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA2503:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2503-.LLSDACSB2503
.LLSDACSB2503:
	.uleb128 .LEHB6-.LFB2503
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB7-.LFB2503
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L49-.LFB2503
	.uleb128 0
	.uleb128 .LEHB8-.LFB2503
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
.LLSDACSE2503:
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE,"x"
	.linkonce discard
	.globl	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	.def	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE:
.LFB2556:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt7forwardIRA6_KcEOT_RNSt16remove_referenceIS3_E4typeE,"x"
	.linkonce discard
	.globl	_ZSt7forwardIRA6_KcEOT_RNSt16remove_referenceIS3_E4typeE
	.def	_ZSt7forwardIRA6_KcEOT_RNSt16remove_referenceIS3_E4typeE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt7forwardIRA6_KcEOT_RNSt16remove_referenceIS3_E4typeE
_ZSt7forwardIRA6_KcEOT_RNSt16remove_referenceIS3_E4typeE:
.LFB2557:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt11_Tuple_implILy0EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IiJRA6_KcEvEEOT_DpOT0_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt11_Tuple_implILy0EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IiJRA6_KcEvEEOT_DpOT0_
	.def	_ZNSt11_Tuple_implILy0EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IiJRA6_KcEvEEOT_DpOT0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt11_Tuple_implILy0EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IiJRA6_KcEvEEOT_DpOT0_
_ZNSt11_Tuple_implILy0EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IiJRA6_KcEvEEOT_DpOT0_:
.LFB2559:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	32(%rsp), %rbp
	.seh_setframe	%rbp, 32
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	%r8, 48(%rbp)
	movq	32(%rbp), %rbx
	movq	48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIRA6_KcEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %rdx
	movq	%rbx, %rcx
	call	_ZNSt11_Tuple_implILy1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IRA6_KcEEOT_
	movq	32(%rbp), %rax
	leaq	32(%rax), %rbx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %rdx
	movq	%rbx, %rcx
	call	_ZNSt10_Head_baseILy0EiLb0EEC2IiEEOT_
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt7forwardINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS6_E4typeE,"x"
	.linkonce discard
	.globl	_ZSt7forwardINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS6_E4typeE
	.def	_ZSt7forwardINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS6_E4typeE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt7forwardINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS6_E4typeE
_ZSt7forwardINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS6_E4typeE:
.LFB2561:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt7forwardISt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEOT_RNSt16remove_referenceIS8_E4typeE,"x"
	.linkonce discard
	.globl	_ZSt7forwardISt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEOT_RNSt16remove_referenceIS8_E4typeE
	.def	_ZSt7forwardISt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEOT_RNSt16remove_referenceIS8_E4typeE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt7forwardISt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEOT_RNSt16remove_referenceIS8_E4typeE
_ZSt7forwardISt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEOT_RNSt16remove_referenceIS8_E4typeE:
.LFB2562:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt11_Tuple_implILy0EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5tupleIJiS5_EEifEEC2IiJS5_S7_iiEvEEOT_DpOT0_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt11_Tuple_implILy0EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5tupleIJiS5_EEifEEC2IiJS5_S7_iiEvEEOT_DpOT0_
	.def	_ZNSt11_Tuple_implILy0EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5tupleIJiS5_EEifEEC2IiJS5_S7_iiEvEEOT_DpOT0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt11_Tuple_implILy0EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5tupleIJiS5_EEifEEC2IiJS5_S7_iiEvEEOT_DpOT0_
_ZNSt11_Tuple_implILy0EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5tupleIJiS5_EEifEEC2IiJS5_S7_iiEvEEOT_DpOT0_:
.LFB2564:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	leaq	48(%rsp), %rbp
	.seh_setframe	%rbp, 48
	.seh_endprologue
	movq	%rcx, 48(%rbp)
	movq	%rdx, 56(%rbp)
	movq	%r8, 64(%rbp)
	movq	%r9, 72(%rbp)
	movq	48(%rbp), %rbx
	movq	88(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %rsi
	movq	80(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %r12
	movq	72(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardISt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEOT_RNSt16remove_referenceIS8_E4typeE
	movq	%rax, %rdi
	movq	64(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS6_E4typeE
	movq	%rsi, 32(%rsp)
	movq	%r12, %r9
	movq	%rdi, %r8
	movq	%rax, %rdx
	movq	%rbx, %rcx
	call	_ZNSt11_Tuple_implILy1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5tupleIJiS5_EEifEEC2IS5_JS7_iiEvEEOT_DpOT0_
	movq	48(%rbp), %rax
	leaq	80(%rax), %rbx
	movq	56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %rdx
	movq	%rbx, %rcx
	call	_ZNSt10_Head_baseILy0EiLb0EEC2IiEEOT_
	nop
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%r12
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC5:
	.ascii ", \0"
	.section	.text$_Z10PrintTupleIcSt11char_traitsIcEJiNSt7__cxx1112basic_stringIcS1_SaIcEEESt5tupleIJiS5_EEifELy4EENSt9enable_ifIXneT2_Li0EEvE4typeERSt13basic_ostreamIT_T0_ERKS6_IJDpT1_EESt17integral_constantIyXT2_EE,"x"
	.linkonce discard
	.globl	_Z10PrintTupleIcSt11char_traitsIcEJiNSt7__cxx1112basic_stringIcS1_SaIcEEESt5tupleIJiS5_EEifELy4EENSt9enable_ifIXneT2_Li0EEvE4typeERSt13basic_ostreamIT_T0_ERKS6_IJDpT1_EESt17integral_constantIyXT2_EE
	.def	_Z10PrintTupleIcSt11char_traitsIcEJiNSt7__cxx1112basic_stringIcS1_SaIcEEESt5tupleIJiS5_EEifELy4EENSt9enable_ifIXneT2_Li0EEvE4typeERSt13basic_ostreamIT_T0_ERKS6_IJDpT1_EESt17integral_constantIyXT2_EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z10PrintTupleIcSt11char_traitsIcEJiNSt7__cxx1112basic_stringIcS1_SaIcEEESt5tupleIJiS5_EEifELy4EENSt9enable_ifIXneT2_Li0EEvE4typeERSt13basic_ostreamIT_T0_ERKS6_IJDpT1_EESt17integral_constantIyXT2_EE
_Z10PrintTupleIcSt11char_traitsIcEJiNSt7__cxx1112basic_stringIcS1_SaIcEEESt5tupleIJiS5_EEifELy4EENSt9enable_ifIXneT2_Li0EEvE4typeERSt13basic_ostreamIT_T0_ERKS6_IJDpT1_EESt17integral_constantIyXT2_EE:
.LFB2567:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	32(%rsp), %rbp
	.seh_setframe	%rbp, 32
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt3getILy0EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5tupleIJiS5_EEifEERKNSt13tuple_elementIXT_ES6_IJDpT0_EEE4typeERKSB_
	movl	(%rax), %edx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSolsEi
	movq	%rax, %rcx
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	40(%rbp), %rdx
	movq	32(%rbp), %rax
	movl	%ebx, %r8d
	movq	%rax, %rcx
	call	_Z10PrintTupleIcSt11char_traitsIcEJiNSt7__cxx1112basic_stringIcS1_SaIcEEESt5tupleIJiS5_EEifELy3EENSt9enable_ifIXneT2_Li0EEvE4typeERSt13basic_ostreamIT_T0_ERKS6_IJDpT1_EESt17integral_constantIyXT2_EE
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt11_Tuple_implILy1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IRA6_KcEEOT_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt11_Tuple_implILy1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IRA6_KcEEOT_
	.def	_ZNSt11_Tuple_implILy1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IRA6_KcEEOT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt11_Tuple_implILy1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IRA6_KcEEOT_
_ZNSt11_Tuple_implILy1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IRA6_KcEEOT_:
.LFB2629:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	32(%rsp), %rbp
	.seh_setframe	%rbp, 32
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	32(%rbp), %rbx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIRA6_KcEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %rdx
	movq	%rbx, %rcx
	call	_ZNSt10_Head_baseILy1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EEC2IRA6_KcEEOT_
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt10_Head_baseILy0EiLb0EEC2IiEEOT_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt10_Head_baseILy0EiLb0EEC2IiEEOT_
	.def	_ZNSt10_Head_baseILy0EiLb0EEC2IiEEOT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt10_Head_baseILy0EiLb0EEC2IiEEOT_
_ZNSt10_Head_baseILy0EiLb0EEC2IiEEOT_:
.LFB2632:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movl	(%rax), %edx
	movq	16(%rbp), %rax
	movl	%edx, (%rax)
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt11_Tuple_implILy1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5tupleIJiS5_EEifEEC2IS5_JS7_iiEvEEOT_DpOT0_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt11_Tuple_implILy1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5tupleIJiS5_EEifEEC2IS5_JS7_iiEvEEOT_DpOT0_
	.def	_ZNSt11_Tuple_implILy1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5tupleIJiS5_EEifEEC2IS5_JS7_iiEvEEOT_DpOT0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt11_Tuple_implILy1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5tupleIJiS5_EEifEEC2IS5_JS7_iiEvEEOT_DpOT0_
_ZNSt11_Tuple_implILy1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5tupleIJiS5_EEifEEC2IS5_JS7_iiEvEEOT_DpOT0_:
.LFB2635:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	32(%rsp), %rbp
	.seh_setframe	%rbp, 32
	.seh_endprologue
	movq	%rcx, 48(%rbp)
	movq	%rdx, 56(%rbp)
	movq	%r8, 64(%rbp)
	movq	%r9, 72(%rbp)
	movq	48(%rbp), %rbx
	movq	80(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %rdi
	movq	72(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %rsi
	movq	64(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardISt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEOT_RNSt16remove_referenceIS8_E4typeE
	movq	%rdi, %r9
	movq	%rsi, %r8
	movq	%rax, %rdx
	movq	%rbx, %rcx
	call	_ZNSt11_Tuple_implILy2EJSt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEifEEC2IS7_JiiEvEEOT_DpOT0_
	movq	48(%rbp), %rax
	leaq	48(%rax), %rbx
	movq	56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS6_E4typeE
	movq	%rax, %rdx
	movq	%rbx, %rcx
	call	_ZNSt10_Head_baseILy1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EEC2IS5_EEOT_
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt3getILy0EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5tupleIJiS5_EEifEERKNSt13tuple_elementIXT_ES6_IJDpT0_EEE4typeERKSB_,"x"
	.linkonce discard
	.globl	_ZSt3getILy0EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5tupleIJiS5_EEifEERKNSt13tuple_elementIXT_ES6_IJDpT0_EEE4typeERKSB_
	.def	_ZSt3getILy0EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5tupleIJiS5_EEifEERKNSt13tuple_elementIXT_ES6_IJDpT0_EEE4typeERKSB_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt3getILy0EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5tupleIJiS5_EEifEERKNSt13tuple_elementIXT_ES6_IJDpT0_EEE4typeERKSB_
_ZSt3getILy0EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5tupleIJiS5_EEifEERKNSt13tuple_elementIXT_ES6_IJDpT0_EEE4typeERKSB_:
.LFB2638:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt12__get_helperILy0EiJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5tupleIJiS5_EEifEERKT0_RKSt11_Tuple_implIXT_EJS8_DpT1_EE
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_Z10PrintTupleIcSt11char_traitsIcEJiNSt7__cxx1112basic_stringIcS1_SaIcEEESt5tupleIJiS5_EEifELy3EENSt9enable_ifIXneT2_Li0EEvE4typeERSt13basic_ostreamIT_T0_ERKS6_IJDpT1_EESt17integral_constantIyXT2_EE,"x"
	.linkonce discard
	.globl	_Z10PrintTupleIcSt11char_traitsIcEJiNSt7__cxx1112basic_stringIcS1_SaIcEEESt5tupleIJiS5_EEifELy3EENSt9enable_ifIXneT2_Li0EEvE4typeERSt13basic_ostreamIT_T0_ERKS6_IJDpT1_EESt17integral_constantIyXT2_EE
	.def	_Z10PrintTupleIcSt11char_traitsIcEJiNSt7__cxx1112basic_stringIcS1_SaIcEEESt5tupleIJiS5_EEifELy3EENSt9enable_ifIXneT2_Li0EEvE4typeERSt13basic_ostreamIT_T0_ERKS6_IJDpT1_EESt17integral_constantIyXT2_EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z10PrintTupleIcSt11char_traitsIcEJiNSt7__cxx1112basic_stringIcS1_SaIcEEESt5tupleIJiS5_EEifELy3EENSt9enable_ifIXneT2_Li0EEvE4typeERSt13basic_ostreamIT_T0_ERKS6_IJDpT1_EESt17integral_constantIyXT2_EE
_Z10PrintTupleIcSt11char_traitsIcEJiNSt7__cxx1112basic_stringIcS1_SaIcEEESt5tupleIJiS5_EEifELy3EENSt9enable_ifIXneT2_Li0EEvE4typeERSt13basic_ostreamIT_T0_ERKS6_IJDpT1_EESt17integral_constantIyXT2_EE:
.LFB2639:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	32(%rsp), %rbp
	.seh_setframe	%rbp, 32
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt3getILy1EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5tupleIJiS5_EEifEERKNSt13tuple_elementIXT_ES6_IJDpT0_EEE4typeERKSB_
	movq	%rax, %rdx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE
	movq	%rax, %rcx
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	40(%rbp), %rdx
	movq	32(%rbp), %rax
	movl	%ebx, %r8d
	movq	%rax, %rcx
	call	_Z10PrintTupleIcSt11char_traitsIcEJiNSt7__cxx1112basic_stringIcS1_SaIcEEESt5tupleIJiS5_EEifELy2EENSt9enable_ifIXneT2_Li0EEvE4typeERSt13basic_ostreamIT_T0_ERKS6_IJDpT1_EESt17integral_constantIyXT2_EE
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt10_Head_baseILy1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EEC2IRA6_KcEEOT_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt10_Head_baseILy1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EEC2IRA6_KcEEOT_
	.def	_ZNSt10_Head_baseILy1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EEC2IRA6_KcEEOT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt10_Head_baseILy1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EEC2IRA6_KcEEOT_
_ZNSt10_Head_baseILy1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EEC2IRA6_KcEEOT_:
.LFB2691:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	leaq	48(%rsp), %rbp
	.seh_setframe	%rbp, 48
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	32(%rbp), %rbx
	leaq	-9(%rbp), %rax
	movq	%rax, -8(%rbp)
	nop
	nop
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIRA6_KcEOT_RNSt16remove_referenceIS3_E4typeE
	leaq	-9(%rbp), %rdx
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	%rbx, %rcx
.LEHB9:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE9:
	leaq	-9(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
	jmp	.L71
.L70:
	movq	%rax, %rbx
	leaq	-9(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB10:
	call	_Unwind_Resume
	nop
.LEHE10:
.L71:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA2691:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2691-.LLSDACSB2691
.LLSDACSB2691:
	.uleb128 .LEHB9-.LFB2691
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L70-.LFB2691
	.uleb128 0
	.uleb128 .LEHB10-.LFB2691
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
.LLSDACSE2691:
	.section	.text$_ZNSt10_Head_baseILy1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EEC2IRA6_KcEEOT_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt11_Tuple_implILy2EJSt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEifEEC2IS7_JiiEvEEOT_DpOT0_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt11_Tuple_implILy2EJSt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEifEEC2IS7_JiiEvEEOT_DpOT0_
	.def	_ZNSt11_Tuple_implILy2EJSt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEifEEC2IS7_JiiEvEEOT_DpOT0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt11_Tuple_implILy2EJSt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEifEEC2IS7_JiiEvEEOT_DpOT0_
_ZNSt11_Tuple_implILy2EJSt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEifEEC2IS7_JiiEvEEOT_DpOT0_:
.LFB2694:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	leaq	32(%rsp), %rbp
	.seh_setframe	%rbp, 32
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	%r8, 48(%rbp)
	movq	%r9, 56(%rbp)
	movq	32(%rbp), %rbx
	movq	56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %rsi
	movq	48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rsi, %r8
	movq	%rax, %rdx
	movq	%rbx, %rcx
	call	_ZNSt11_Tuple_implILy3EJifEEC2IiJiEvEEOT_DpOT0_
	movq	32(%rbp), %rax
	leaq	8(%rax), %rbx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardISt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEOT_RNSt16remove_referenceIS8_E4typeE
	movq	%rax, %rdx
	movq	%rbx, %rcx
	call	_ZNSt10_Head_baseILy2ESt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EEC2IS7_EEOT_
	nop
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt10_Head_baseILy1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EEC2IS5_EEOT_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt10_Head_baseILy1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EEC2IS5_EEOT_
	.def	_ZNSt10_Head_baseILy1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EEC2IS5_EEOT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt10_Head_baseILy1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EEC2IS5_EEOT_
_ZNSt10_Head_baseILy1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EEC2IS5_EEOT_:
.LFB2697:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	32(%rsp), %rbp
	.seh_setframe	%rbp, 32
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	32(%rbp), %rbx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS6_E4typeE
	movq	%rax, %rdx
	movq	%rbx, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt12__get_helperILy0EiJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5tupleIJiS5_EEifEERKT0_RKSt11_Tuple_implIXT_EJS8_DpT1_EE,"x"
	.linkonce discard
	.globl	_ZSt12__get_helperILy0EiJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5tupleIJiS5_EEifEERKT0_RKSt11_Tuple_implIXT_EJS8_DpT1_EE
	.def	_ZSt12__get_helperILy0EiJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5tupleIJiS5_EEifEERKT0_RKSt11_Tuple_implIXT_EJS8_DpT1_EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt12__get_helperILy0EiJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5tupleIJiS5_EEifEERKT0_RKSt11_Tuple_implIXT_EJS8_DpT1_EE
_ZSt12__get_helperILy0EiJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5tupleIJiS5_EEifEERKT0_RKSt11_Tuple_implIXT_EJS8_DpT1_EE:
.LFB2700:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt11_Tuple_implILy0EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5tupleIJiS5_EEifEE7_M_headERKS8_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt3getILy1EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5tupleIJiS5_EEifEERKNSt13tuple_elementIXT_ES6_IJDpT0_EEE4typeERKSB_,"x"
	.linkonce discard
	.globl	_ZSt3getILy1EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5tupleIJiS5_EEifEERKNSt13tuple_elementIXT_ES6_IJDpT0_EEE4typeERKSB_
	.def	_ZSt3getILy1EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5tupleIJiS5_EEifEERKNSt13tuple_elementIXT_ES6_IJDpT0_EEE4typeERKSB_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt3getILy1EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5tupleIJiS5_EEifEERKNSt13tuple_elementIXT_ES6_IJDpT0_EEE4typeERKSB_
_ZSt3getILy1EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5tupleIJiS5_EEifEERKNSt13tuple_elementIXT_ES6_IJDpT0_EEE4typeERKSB_:
.LFB2701:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt12__get_helperILy1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSt5tupleIJiS5_EEifEERKT0_RKSt11_Tuple_implIXT_EJS8_DpT1_EE
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_Z10PrintTupleIcSt11char_traitsIcEJiNSt7__cxx1112basic_stringIcS1_SaIcEEESt5tupleIJiS5_EEifELy2EENSt9enable_ifIXneT2_Li0EEvE4typeERSt13basic_ostreamIT_T0_ERKS6_IJDpT1_EESt17integral_constantIyXT2_EE,"x"
	.linkonce discard
	.globl	_Z10PrintTupleIcSt11char_traitsIcEJiNSt7__cxx1112basic_stringIcS1_SaIcEEESt5tupleIJiS5_EEifELy2EENSt9enable_ifIXneT2_Li0EEvE4typeERSt13basic_ostreamIT_T0_ERKS6_IJDpT1_EESt17integral_constantIyXT2_EE
	.def	_Z10PrintTupleIcSt11char_traitsIcEJiNSt7__cxx1112basic_stringIcS1_SaIcEEESt5tupleIJiS5_EEifELy2EENSt9enable_ifIXneT2_Li0EEvE4typeERSt13basic_ostreamIT_T0_ERKS6_IJDpT1_EESt17integral_constantIyXT2_EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z10PrintTupleIcSt11char_traitsIcEJiNSt7__cxx1112basic_stringIcS1_SaIcEEESt5tupleIJiS5_EEifELy2EENSt9enable_ifIXneT2_Li0EEvE4typeERSt13basic_ostreamIT_T0_ERKS6_IJDpT1_EESt17integral_constantIyXT2_EE
_Z10PrintTupleIcSt11char_traitsIcEJiNSt7__cxx1112basic_stringIcS1_SaIcEEESt5tupleIJiS5_EEifELy2EENSt9enable_ifIXneT2_Li0EEvE4typeERSt13basic_ostreamIT_T0_ERKS6_IJDpT1_EESt17integral_constantIyXT2_EE:
.LFB2703:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	32(%rsp), %rbp
	.seh_setframe	%rbp, 32
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt3getILy2EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5tupleIJiS5_EEifEERKNSt13tuple_elementIXT_ES6_IJDpT0_EEE4typeERKSB_
	movq	%rax, %rdx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZlsIcSt11char_traitsIcEJiNSt7__cxx1112basic_stringIcS1_SaIcEEEEERSt13basic_ostreamIT_T0_ESA_RKSt5tupleIJDpT1_EE
	movq	%rax, %rcx
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	40(%rbp), %rdx
	movq	32(%rbp), %rax
	movl	%ebx, %r8d
	movq	%rax, %rcx
	call	_Z10PrintTupleIcSt11char_traitsIcEJiNSt7__cxx1112basic_stringIcS1_SaIcEEESt5tupleIJiS5_EEifELy1EENSt9enable_ifIXneT2_Li0EEvE4typeERSt13basic_ostreamIT_T0_ERKS6_IJDpT1_EESt17integral_constantIyXT2_EE
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt11_Tuple_implILy3EJifEEC2IiJiEvEEOT_DpOT0_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt11_Tuple_implILy3EJifEEC2IiJiEvEEOT_DpOT0_
	.def	_ZNSt11_Tuple_implILy3EJifEEC2IiJiEvEEOT_DpOT0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt11_Tuple_implILy3EJifEEC2IiJiEvEEOT_DpOT0_
_ZNSt11_Tuple_implILy3EJifEEC2IiJiEvEEOT_DpOT0_:
.LFB2724:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	32(%rsp), %rbp
	.seh_setframe	%rbp, 32
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	%r8, 48(%rbp)
	movq	32(%rbp), %rbx
	movq	48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %rdx
	movq	%rbx, %rcx
	call	_ZNSt11_Tuple_implILy4EJfEEC2IiEEOT_
	movq	32(%rbp), %rax
	leaq	4(%rax), %rbx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %rdx
	movq	%rbx, %rcx
	call	_ZNSt10_Head_baseILy3EiLb0EEC2IiEEOT_
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt11_Tuple_implILy0EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS6_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt11_Tuple_implILy0EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS6_
	.def	_ZNSt11_Tuple_implILy0EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS6_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt11_Tuple_implILy0EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS6_
_ZNSt11_Tuple_implILy0EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS6_:
.LFB2729:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt11_Tuple_implILy1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS6_
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movl	32(%rdx), %edx
	movl	%edx, 32(%rax)
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC1EOS6_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC1EOS6_
	.def	_ZNSt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC1EOS6_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC1EOS6_
_ZNSt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC1EOS6_:
.LFB2732:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt11_Tuple_implILy0EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS6_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt10_Head_baseILy1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EEC2EOS6_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt10_Head_baseILy1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EEC2EOS6_
	.def	_ZNSt10_Head_baseILy1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EEC2EOS6_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt10_Head_baseILy1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EEC2EOS6_
_ZNSt10_Head_baseILy1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EEC2EOS6_:
.LFB2735:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt11_Tuple_implILy1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS6_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt11_Tuple_implILy1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS6_
	.def	_ZNSt11_Tuple_implILy1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS6_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt11_Tuple_implILy1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS6_
_ZNSt11_Tuple_implILy1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS6_:
.LFB2737:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt10_Head_baseILy1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EEC2EOS6_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt10_Head_baseILy2ESt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EEC2IS7_EEOT_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt10_Head_baseILy2ESt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EEC2IS7_EEOT_
	.def	_ZNSt10_Head_baseILy2ESt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EEC2IS7_EEOT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt10_Head_baseILy2ESt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EEC2IS7_EEOT_
_ZNSt10_Head_baseILy2ESt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EEC2IS7_EEOT_:
.LFB2739:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	32(%rsp), %rbp
	.seh_setframe	%rbp, 32
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	32(%rbp), %rbx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardISt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEOT_RNSt16remove_referenceIS8_E4typeE
	movq	%rax, %rdx
	movq	%rbx, %rcx
	call	_ZNSt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC1EOS6_
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt11_Tuple_implILy0EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5tupleIJiS5_EEifEE7_M_headERKS8_,"x"
	.linkonce discard
	.globl	_ZNSt11_Tuple_implILy0EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5tupleIJiS5_EEifEE7_M_headERKS8_
	.def	_ZNSt11_Tuple_implILy0EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5tupleIJiS5_EEifEE7_M_headERKS8_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt11_Tuple_implILy0EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5tupleIJiS5_EEifEE7_M_headERKS8_
_ZNSt11_Tuple_implILy0EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5tupleIJiS5_EEifEE7_M_headERKS8_:
.LFB2741:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	addq	$80, %rax
	movq	%rax, %rcx
	call	_ZNSt10_Head_baseILy0EiLb0EE7_M_headERKS0_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt12__get_helperILy1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSt5tupleIJiS5_EEifEERKT0_RKSt11_Tuple_implIXT_EJS8_DpT1_EE,"x"
	.linkonce discard
	.globl	_ZSt12__get_helperILy1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSt5tupleIJiS5_EEifEERKT0_RKSt11_Tuple_implIXT_EJS8_DpT1_EE
	.def	_ZSt12__get_helperILy1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSt5tupleIJiS5_EEifEERKT0_RKSt11_Tuple_implIXT_EJS8_DpT1_EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt12__get_helperILy1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSt5tupleIJiS5_EEifEERKT0_RKSt11_Tuple_implIXT_EJS8_DpT1_EE
_ZSt12__get_helperILy1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSt5tupleIJiS5_EEifEERKT0_RKSt11_Tuple_implIXT_EJS8_DpT1_EE:
.LFB2742:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt11_Tuple_implILy1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5tupleIJiS5_EEifEE7_M_headERKS8_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt3getILy2EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5tupleIJiS5_EEifEERKNSt13tuple_elementIXT_ES6_IJDpT0_EEE4typeERKSB_,"x"
	.linkonce discard
	.globl	_ZSt3getILy2EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5tupleIJiS5_EEifEERKNSt13tuple_elementIXT_ES6_IJDpT0_EEE4typeERKSB_
	.def	_ZSt3getILy2EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5tupleIJiS5_EEifEERKNSt13tuple_elementIXT_ES6_IJDpT0_EEE4typeERKSB_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt3getILy2EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5tupleIJiS5_EEifEERKNSt13tuple_elementIXT_ES6_IJDpT0_EEE4typeERKSB_
_ZSt3getILy2EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5tupleIJiS5_EEifEERKNSt13tuple_elementIXT_ES6_IJDpT0_EEE4typeERKSB_:
.LFB2743:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt12__get_helperILy2ESt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJifEERKT0_RKSt11_Tuple_implIXT_EJS8_DpT1_EE
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZlsIcSt11char_traitsIcEJiNSt7__cxx1112basic_stringIcS1_SaIcEEEEERSt13basic_ostreamIT_T0_ESA_RKSt5tupleIJDpT1_EE,"x"
	.linkonce discard
	.globl	_ZlsIcSt11char_traitsIcEJiNSt7__cxx1112basic_stringIcS1_SaIcEEEEERSt13basic_ostreamIT_T0_ESA_RKSt5tupleIJDpT1_EE
	.def	_ZlsIcSt11char_traitsIcEJiNSt7__cxx1112basic_stringIcS1_SaIcEEEEERSt13basic_ostreamIT_T0_ESA_RKSt5tupleIJDpT1_EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZlsIcSt11char_traitsIcEJiNSt7__cxx1112basic_stringIcS1_SaIcEEEEERSt13basic_ostreamIT_T0_ESA_RKSt5tupleIJDpT1_EE
_ZlsIcSt11char_traitsIcEJiNSt7__cxx1112basic_stringIcS1_SaIcEEEEERSt13basic_ostreamIT_T0_ESA_RKSt5tupleIJDpT1_EE:
.LFB2744:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	32(%rsp), %rbp
	.seh_setframe	%rbp, 32
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	32(%rbp), %rax
	leaq	.LC3(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	40(%rbp), %rdx
	movq	32(%rbp), %rax
	movl	%ebx, %r8d
	movq	%rax, %rcx
	call	_Z10PrintTupleIcSt11char_traitsIcEJiNSt7__cxx1112basic_stringIcS1_SaIcEEEELy1EENSt9enable_ifIXneT2_Li0EEvE4typeERSt13basic_ostreamIT_T0_ERKSt5tupleIJDpT1_EESt17integral_constantIyXT2_EE
	movq	32(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	32(%rbp), %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_Z10PrintTupleIcSt11char_traitsIcEJiNSt7__cxx1112basic_stringIcS1_SaIcEEESt5tupleIJiS5_EEifELy1EENSt9enable_ifIXneT2_Li0EEvE4typeERSt13basic_ostreamIT_T0_ERKS6_IJDpT1_EESt17integral_constantIyXT2_EE,"x"
	.linkonce discard
	.globl	_Z10PrintTupleIcSt11char_traitsIcEJiNSt7__cxx1112basic_stringIcS1_SaIcEEESt5tupleIJiS5_EEifELy1EENSt9enable_ifIXneT2_Li0EEvE4typeERSt13basic_ostreamIT_T0_ERKS6_IJDpT1_EESt17integral_constantIyXT2_EE
	.def	_Z10PrintTupleIcSt11char_traitsIcEJiNSt7__cxx1112basic_stringIcS1_SaIcEEESt5tupleIJiS5_EEifELy1EENSt9enable_ifIXneT2_Li0EEvE4typeERSt13basic_ostreamIT_T0_ERKS6_IJDpT1_EESt17integral_constantIyXT2_EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z10PrintTupleIcSt11char_traitsIcEJiNSt7__cxx1112basic_stringIcS1_SaIcEEESt5tupleIJiS5_EEifELy1EENSt9enable_ifIXneT2_Li0EEvE4typeERSt13basic_ostreamIT_T0_ERKS6_IJDpT1_EESt17integral_constantIyXT2_EE
_Z10PrintTupleIcSt11char_traitsIcEJiNSt7__cxx1112basic_stringIcS1_SaIcEEESt5tupleIJiS5_EEifELy1EENSt9enable_ifIXneT2_Li0EEvE4typeERSt13basic_ostreamIT_T0_ERKS6_IJDpT1_EESt17integral_constantIyXT2_EE:
.LFB2745:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	32(%rsp), %rbp
	.seh_setframe	%rbp, 32
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt3getILy3EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5tupleIJiS5_EEifEERKNSt13tuple_elementIXT_ES6_IJDpT0_EEE4typeERKSB_
	movl	(%rax), %edx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSolsEi
	movq	%rax, %rcx
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	40(%rbp), %rdx
	movq	32(%rbp), %rax
	movl	%ebx, %r8d
	movq	%rax, %rcx
	call	_Z10PrintTupleIcSt11char_traitsIcEJiNSt7__cxx1112basic_stringIcS1_SaIcEEESt5tupleIJiS5_EEifELy0EENSt9enable_ifIXeqT2_Li0EEvE4typeERSt13basic_ostreamIT_T0_ERKS6_IJDpT1_EESt17integral_constantIyXT2_EE
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt11_Tuple_implILy4EJfEEC2IiEEOT_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt11_Tuple_implILy4EJfEEC2IiEEOT_
	.def	_ZNSt11_Tuple_implILy4EJfEEC2IiEEOT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt11_Tuple_implILy4EJfEEC2IiEEOT_
_ZNSt11_Tuple_implILy4EJfEEC2IiEEOT_:
.LFB2757:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	32(%rsp), %rbp
	.seh_setframe	%rbp, 32
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	32(%rbp), %rbx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %rdx
	movq	%rbx, %rcx
	call	_ZNSt10_Head_baseILy4EfLb0EEC2IiEEOT_
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt10_Head_baseILy3EiLb0EEC2IiEEOT_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt10_Head_baseILy3EiLb0EEC2IiEEOT_
	.def	_ZNSt10_Head_baseILy3EiLb0EEC2IiEEOT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt10_Head_baseILy3EiLb0EEC2IiEEOT_
_ZNSt10_Head_baseILy3EiLb0EEC2IiEEOT_:
.LFB2760:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movl	(%rax), %edx
	movq	16(%rbp), %rax
	movl	%edx, (%rax)
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt10_Head_baseILy0EiLb0EE7_M_headERKS0_,"x"
	.linkonce discard
	.globl	_ZNSt10_Head_baseILy0EiLb0EE7_M_headERKS0_
	.def	_ZNSt10_Head_baseILy0EiLb0EE7_M_headERKS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt10_Head_baseILy0EiLb0EE7_M_headERKS0_
_ZNSt10_Head_baseILy0EiLb0EE7_M_headERKS0_:
.LFB2762:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt11_Tuple_implILy1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5tupleIJiS5_EEifEE7_M_headERKS8_,"x"
	.linkonce discard
	.globl	_ZNSt11_Tuple_implILy1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5tupleIJiS5_EEifEE7_M_headERKS8_
	.def	_ZNSt11_Tuple_implILy1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5tupleIJiS5_EEifEE7_M_headERKS8_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt11_Tuple_implILy1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5tupleIJiS5_EEifEE7_M_headERKS8_
_ZNSt11_Tuple_implILy1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5tupleIJiS5_EEifEE7_M_headERKS8_:
.LFB2763:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	addq	$48, %rax
	movq	%rax, %rcx
	call	_ZNSt10_Head_baseILy1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE7_M_headERKS6_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt12__get_helperILy2ESt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJifEERKT0_RKSt11_Tuple_implIXT_EJS8_DpT1_EE,"x"
	.linkonce discard
	.globl	_ZSt12__get_helperILy2ESt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJifEERKT0_RKSt11_Tuple_implIXT_EJS8_DpT1_EE
	.def	_ZSt12__get_helperILy2ESt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJifEERKT0_RKSt11_Tuple_implIXT_EJS8_DpT1_EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt12__get_helperILy2ESt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJifEERKT0_RKSt11_Tuple_implIXT_EJS8_DpT1_EE
_ZSt12__get_helperILy2ESt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJifEERKT0_RKSt11_Tuple_implIXT_EJS8_DpT1_EE:
.LFB2764:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt11_Tuple_implILy2EJSt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEifEE7_M_headERKS8_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_Z10PrintTupleIcSt11char_traitsIcEJiNSt7__cxx1112basic_stringIcS1_SaIcEEEELy1EENSt9enable_ifIXneT2_Li0EEvE4typeERSt13basic_ostreamIT_T0_ERKSt5tupleIJDpT1_EESt17integral_constantIyXT2_EE,"x"
	.linkonce discard
	.globl	_Z10PrintTupleIcSt11char_traitsIcEJiNSt7__cxx1112basic_stringIcS1_SaIcEEEELy1EENSt9enable_ifIXneT2_Li0EEvE4typeERSt13basic_ostreamIT_T0_ERKSt5tupleIJDpT1_EESt17integral_constantIyXT2_EE
	.def	_Z10PrintTupleIcSt11char_traitsIcEJiNSt7__cxx1112basic_stringIcS1_SaIcEEEELy1EENSt9enable_ifIXneT2_Li0EEvE4typeERSt13basic_ostreamIT_T0_ERKSt5tupleIJDpT1_EESt17integral_constantIyXT2_EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z10PrintTupleIcSt11char_traitsIcEJiNSt7__cxx1112basic_stringIcS1_SaIcEEEELy1EENSt9enable_ifIXneT2_Li0EEvE4typeERSt13basic_ostreamIT_T0_ERKSt5tupleIJDpT1_EESt17integral_constantIyXT2_EE
_Z10PrintTupleIcSt11char_traitsIcEJiNSt7__cxx1112basic_stringIcS1_SaIcEEEELy1EENSt9enable_ifIXneT2_Li0EEvE4typeERSt13basic_ostreamIT_T0_ERKSt5tupleIJDpT1_EESt17integral_constantIyXT2_EE:
.LFB2765:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	32(%rsp), %rbp
	.seh_setframe	%rbp, 32
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt3getILy0EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKSA_
	movl	(%rax), %edx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSolsEi
	movq	%rax, %rcx
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	40(%rbp), %rdx
	movq	32(%rbp), %rax
	movl	%ebx, %r8d
	movq	%rax, %rcx
	call	_Z10PrintTupleIcSt11char_traitsIcEJiNSt7__cxx1112basic_stringIcS1_SaIcEEEELy0EENSt9enable_ifIXeqT2_Li0EEvE4typeERSt13basic_ostreamIT_T0_ERKSt5tupleIJDpT1_EESt17integral_constantIyXT2_EE
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt3getILy3EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5tupleIJiS5_EEifEERKNSt13tuple_elementIXT_ES6_IJDpT0_EEE4typeERKSB_,"x"
	.linkonce discard
	.globl	_ZSt3getILy3EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5tupleIJiS5_EEifEERKNSt13tuple_elementIXT_ES6_IJDpT0_EEE4typeERKSB_
	.def	_ZSt3getILy3EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5tupleIJiS5_EEifEERKNSt13tuple_elementIXT_ES6_IJDpT0_EEE4typeERKSB_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt3getILy3EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5tupleIJiS5_EEifEERKNSt13tuple_elementIXT_ES6_IJDpT0_EEE4typeERKSB_
_ZSt3getILy3EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5tupleIJiS5_EEifEERKNSt13tuple_elementIXT_ES6_IJDpT0_EEE4typeERKSB_:
.LFB2766:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt12__get_helperILy3EiJfEERKT0_RKSt11_Tuple_implIXT_EJS0_DpT1_EE
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_Z10PrintTupleIcSt11char_traitsIcEJiNSt7__cxx1112basic_stringIcS1_SaIcEEESt5tupleIJiS5_EEifELy0EENSt9enable_ifIXeqT2_Li0EEvE4typeERSt13basic_ostreamIT_T0_ERKS6_IJDpT1_EESt17integral_constantIyXT2_EE,"x"
	.linkonce discard
	.globl	_Z10PrintTupleIcSt11char_traitsIcEJiNSt7__cxx1112basic_stringIcS1_SaIcEEESt5tupleIJiS5_EEifELy0EENSt9enable_ifIXeqT2_Li0EEvE4typeERSt13basic_ostreamIT_T0_ERKS6_IJDpT1_EESt17integral_constantIyXT2_EE
	.def	_Z10PrintTupleIcSt11char_traitsIcEJiNSt7__cxx1112basic_stringIcS1_SaIcEEESt5tupleIJiS5_EEifELy0EENSt9enable_ifIXeqT2_Li0EEvE4typeERSt13basic_ostreamIT_T0_ERKS6_IJDpT1_EESt17integral_constantIyXT2_EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z10PrintTupleIcSt11char_traitsIcEJiNSt7__cxx1112basic_stringIcS1_SaIcEEESt5tupleIJiS5_EEifELy0EENSt9enable_ifIXeqT2_Li0EEvE4typeERSt13basic_ostreamIT_T0_ERKS6_IJDpT1_EESt17integral_constantIyXT2_EE
_Z10PrintTupleIcSt11char_traitsIcEJiNSt7__cxx1112basic_stringIcS1_SaIcEEESt5tupleIJiS5_EEifELy0EENSt9enable_ifIXeqT2_Li0EEvE4typeERSt13basic_ostreamIT_T0_ERKS6_IJDpT1_EESt17integral_constantIyXT2_EE:
.LFB2767:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt3getILy4EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5tupleIJiS5_EEifEERKNSt13tuple_elementIXT_ES6_IJDpT0_EEE4typeERKSB_
	movss	(%rax), %xmm0
	movq	16(%rbp), %rax
	movaps	%xmm0, %xmm1
	movq	%rax, %rcx
	call	_ZNSolsEf
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt10_Head_baseILy4EfLb0EEC2IiEEOT_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt10_Head_baseILy4EfLb0EEC2IiEEOT_
	.def	_ZNSt10_Head_baseILy4EfLb0EEC2IiEEOT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt10_Head_baseILy4EfLb0EEC2IiEEOT_
_ZNSt10_Head_baseILy4EfLb0EEC2IiEEOT_:
.LFB2772:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movl	(%rax), %eax
	pxor	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movq	16(%rbp), %rax
	movss	%xmm0, (%rax)
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt10_Head_baseILy1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE7_M_headERKS6_,"x"
	.linkonce discard
	.globl	_ZNSt10_Head_baseILy1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE7_M_headERKS6_
	.def	_ZNSt10_Head_baseILy1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE7_M_headERKS6_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt10_Head_baseILy1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE7_M_headERKS6_
_ZNSt10_Head_baseILy1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE7_M_headERKS6_:
.LFB2774:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt11_Tuple_implILy2EJSt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEifEE7_M_headERKS8_,"x"
	.linkonce discard
	.globl	_ZNSt11_Tuple_implILy2EJSt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEifEE7_M_headERKS8_
	.def	_ZNSt11_Tuple_implILy2EJSt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEifEE7_M_headERKS8_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt11_Tuple_implILy2EJSt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEifEE7_M_headERKS8_
_ZNSt11_Tuple_implILy2EJSt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEifEE7_M_headERKS8_:
.LFB2775:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rcx
	call	_ZNSt10_Head_baseILy2ESt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EE7_M_headERKS8_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt3getILy0EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKSA_,"x"
	.linkonce discard
	.globl	_ZSt3getILy0EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKSA_
	.def	_ZSt3getILy0EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKSA_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt3getILy0EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKSA_
_ZSt3getILy0EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKSA_:
.LFB2776:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt12__get_helperILy0EiJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT0_RKSt11_Tuple_implIXT_EJS6_DpT1_EE
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_Z10PrintTupleIcSt11char_traitsIcEJiNSt7__cxx1112basic_stringIcS1_SaIcEEEELy0EENSt9enable_ifIXeqT2_Li0EEvE4typeERSt13basic_ostreamIT_T0_ERKSt5tupleIJDpT1_EESt17integral_constantIyXT2_EE,"x"
	.linkonce discard
	.globl	_Z10PrintTupleIcSt11char_traitsIcEJiNSt7__cxx1112basic_stringIcS1_SaIcEEEELy0EENSt9enable_ifIXeqT2_Li0EEvE4typeERSt13basic_ostreamIT_T0_ERKSt5tupleIJDpT1_EESt17integral_constantIyXT2_EE
	.def	_Z10PrintTupleIcSt11char_traitsIcEJiNSt7__cxx1112basic_stringIcS1_SaIcEEEELy0EENSt9enable_ifIXeqT2_Li0EEvE4typeERSt13basic_ostreamIT_T0_ERKSt5tupleIJDpT1_EESt17integral_constantIyXT2_EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z10PrintTupleIcSt11char_traitsIcEJiNSt7__cxx1112basic_stringIcS1_SaIcEEEELy0EENSt9enable_ifIXeqT2_Li0EEvE4typeERSt13basic_ostreamIT_T0_ERKSt5tupleIJDpT1_EESt17integral_constantIyXT2_EE
_Z10PrintTupleIcSt11char_traitsIcEJiNSt7__cxx1112basic_stringIcS1_SaIcEEEELy0EENSt9enable_ifIXeqT2_Li0EEvE4typeERSt13basic_ostreamIT_T0_ERKSt5tupleIJDpT1_EESt17integral_constantIyXT2_EE:
.LFB2777:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt3getILy1EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKSA_
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt12__get_helperILy3EiJfEERKT0_RKSt11_Tuple_implIXT_EJS0_DpT1_EE,"x"
	.linkonce discard
	.globl	_ZSt12__get_helperILy3EiJfEERKT0_RKSt11_Tuple_implIXT_EJS0_DpT1_EE
	.def	_ZSt12__get_helperILy3EiJfEERKT0_RKSt11_Tuple_implIXT_EJS0_DpT1_EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt12__get_helperILy3EiJfEERKT0_RKSt11_Tuple_implIXT_EJS0_DpT1_EE
_ZSt12__get_helperILy3EiJfEERKT0_RKSt11_Tuple_implIXT_EJS0_DpT1_EE:
.LFB2778:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt11_Tuple_implILy3EJifEE7_M_headERKS0_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt3getILy4EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5tupleIJiS5_EEifEERKNSt13tuple_elementIXT_ES6_IJDpT0_EEE4typeERKSB_,"x"
	.linkonce discard
	.globl	_ZSt3getILy4EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5tupleIJiS5_EEifEERKNSt13tuple_elementIXT_ES6_IJDpT0_EEE4typeERKSB_
	.def	_ZSt3getILy4EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5tupleIJiS5_EEifEERKNSt13tuple_elementIXT_ES6_IJDpT0_EEE4typeERKSB_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt3getILy4EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5tupleIJiS5_EEifEERKNSt13tuple_elementIXT_ES6_IJDpT0_EEE4typeERKSB_
_ZSt3getILy4EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5tupleIJiS5_EEifEERKNSt13tuple_elementIXT_ES6_IJDpT0_EEE4typeERKSB_:
.LFB2779:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt12__get_helperILy4EfJEERKT0_RKSt11_Tuple_implIXT_EJS0_DpT1_EE
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt10_Head_baseILy2ESt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EE7_M_headERKS8_,"x"
	.linkonce discard
	.globl	_ZNSt10_Head_baseILy2ESt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EE7_M_headERKS8_
	.def	_ZNSt10_Head_baseILy2ESt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EE7_M_headERKS8_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt10_Head_baseILy2ESt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EE7_M_headERKS8_
_ZNSt10_Head_baseILy2ESt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EE7_M_headERKS8_:
.LFB2781:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt12__get_helperILy0EiJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT0_RKSt11_Tuple_implIXT_EJS6_DpT1_EE,"x"
	.linkonce discard
	.globl	_ZSt12__get_helperILy0EiJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT0_RKSt11_Tuple_implIXT_EJS6_DpT1_EE
	.def	_ZSt12__get_helperILy0EiJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT0_RKSt11_Tuple_implIXT_EJS6_DpT1_EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt12__get_helperILy0EiJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT0_RKSt11_Tuple_implIXT_EJS6_DpT1_EE
_ZSt12__get_helperILy0EiJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT0_RKSt11_Tuple_implIXT_EJS6_DpT1_EE:
.LFB2782:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt11_Tuple_implILy0EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7_M_headERKS6_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt3getILy1EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKSA_,"x"
	.linkonce discard
	.globl	_ZSt3getILy1EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKSA_
	.def	_ZSt3getILy1EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKSA_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt3getILy1EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKSA_
_ZSt3getILy1EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKSA_:
.LFB2783:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt12__get_helperILy1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEERKT0_RKSt11_Tuple_implIXT_EJS6_DpT1_EE
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt11_Tuple_implILy3EJifEE7_M_headERKS0_,"x"
	.linkonce discard
	.globl	_ZNSt11_Tuple_implILy3EJifEE7_M_headERKS0_
	.def	_ZNSt11_Tuple_implILy3EJifEE7_M_headERKS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt11_Tuple_implILy3EJifEE7_M_headERKS0_
_ZNSt11_Tuple_implILy3EJifEE7_M_headERKS0_:
.LFB2784:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	addq	$4, %rax
	movq	%rax, %rcx
	call	_ZNSt10_Head_baseILy3EiLb0EE7_M_headERKS0_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt12__get_helperILy4EfJEERKT0_RKSt11_Tuple_implIXT_EJS0_DpT1_EE,"x"
	.linkonce discard
	.globl	_ZSt12__get_helperILy4EfJEERKT0_RKSt11_Tuple_implIXT_EJS0_DpT1_EE
	.def	_ZSt12__get_helperILy4EfJEERKT0_RKSt11_Tuple_implIXT_EJS0_DpT1_EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt12__get_helperILy4EfJEERKT0_RKSt11_Tuple_implIXT_EJS0_DpT1_EE
_ZSt12__get_helperILy4EfJEERKT0_RKSt11_Tuple_implIXT_EJS0_DpT1_EE:
.LFB2785:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt11_Tuple_implILy4EJfEE7_M_headERKS0_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt11_Tuple_implILy0EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7_M_headERKS6_,"x"
	.linkonce discard
	.globl	_ZNSt11_Tuple_implILy0EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7_M_headERKS6_
	.def	_ZNSt11_Tuple_implILy0EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7_M_headERKS6_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt11_Tuple_implILy0EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7_M_headERKS6_
_ZNSt11_Tuple_implILy0EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7_M_headERKS6_:
.LFB2786:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rcx
	call	_ZNSt10_Head_baseILy0EiLb0EE7_M_headERKS0_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt12__get_helperILy1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEERKT0_RKSt11_Tuple_implIXT_EJS6_DpT1_EE,"x"
	.linkonce discard
	.globl	_ZSt12__get_helperILy1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEERKT0_RKSt11_Tuple_implIXT_EJS6_DpT1_EE
	.def	_ZSt12__get_helperILy1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEERKT0_RKSt11_Tuple_implIXT_EJS6_DpT1_EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt12__get_helperILy1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEERKT0_RKSt11_Tuple_implIXT_EJS6_DpT1_EE
_ZSt12__get_helperILy1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEERKT0_RKSt11_Tuple_implIXT_EJS6_DpT1_EE:
.LFB2787:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt11_Tuple_implILy1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7_M_headERKS6_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt10_Head_baseILy3EiLb0EE7_M_headERKS0_,"x"
	.linkonce discard
	.globl	_ZNSt10_Head_baseILy3EiLb0EE7_M_headERKS0_
	.def	_ZNSt10_Head_baseILy3EiLb0EE7_M_headERKS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt10_Head_baseILy3EiLb0EE7_M_headERKS0_
_ZNSt10_Head_baseILy3EiLb0EE7_M_headERKS0_:
.LFB2788:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt11_Tuple_implILy4EJfEE7_M_headERKS0_,"x"
	.linkonce discard
	.globl	_ZNSt11_Tuple_implILy4EJfEE7_M_headERKS0_
	.def	_ZNSt11_Tuple_implILy4EJfEE7_M_headERKS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt11_Tuple_implILy4EJfEE7_M_headERKS0_
_ZNSt11_Tuple_implILy4EJfEE7_M_headERKS0_:
.LFB2789:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt10_Head_baseILy4EfLb0EE7_M_headERKS0_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt11_Tuple_implILy1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7_M_headERKS6_,"x"
	.linkonce discard
	.globl	_ZNSt11_Tuple_implILy1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7_M_headERKS6_
	.def	_ZNSt11_Tuple_implILy1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7_M_headERKS6_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt11_Tuple_implILy1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7_M_headERKS6_
_ZNSt11_Tuple_implILy1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7_M_headERKS6_:
.LFB2790:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt10_Head_baseILy1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE7_M_headERKS6_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt10_Head_baseILy4EfLb0EE7_M_headERKS0_,"x"
	.linkonce discard
	.globl	_ZNSt10_Head_baseILy4EfLb0EE7_M_headERKS0_
	.def	_ZNSt10_Head_baseILy4EfLb0EE7_M_headERKS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt10_Head_baseILy4EfLb0EE7_M_headERKS0_
_ZNSt10_Head_baseILy4EfLb0EE7_M_headERKS0_:
.LFB2791:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
_ZNSt8__detail30__integer_to_chars_is_unsignedIjEE:
	.byte	1
_ZNSt8__detail30__integer_to_chars_is_unsignedImEE:
	.byte	1
_ZNSt8__detail30__integer_to_chars_is_unsignedIyEE:
	.byte	1
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.def	__main;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (Rev1, Built by MSYS2 project) 14.2.0"
	.def	strlen;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEPFRSoS_E;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_;	.scl	2;	.type	32;	.endef
	.def	_ZSt19__throw_logic_errorPKc;	.scl	2;	.type	32;	.endef
	.def	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEy;	.scl	2;	.type	32;	.endef
	.def	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEy;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEi;	.scl	2;	.type	32;	.endef
	.def	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEf;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, "dr"
	.globl	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	.linkonce	discard
.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_:
	.quad	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	.section	.rdata$.refptr._ZSt4cout, "dr"
	.globl	.refptr._ZSt4cout
	.linkonce	discard
.refptr._ZSt4cout:
	.quad	_ZSt4cout
