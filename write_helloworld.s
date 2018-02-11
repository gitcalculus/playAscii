	# hello asm
	# as write_helloworld.s -o hello_asm.o
	# ld hello_asm.o -e _main -lc -o hello_asm

	.section __DATA,__data
str:
	.asciz "Hello world and Asm!!!!\n"

	.section __TEXT,__text
	.globl _main
_main:
	pushq %rbp
	movq %rsp, %rbp
	movq str@GOTPCREL(%rip), %rdi
	movb $0, %al
	callq _printf
	popq %rbp
	movl $0x2000001, %eax
	movl $0x0, %edi
	syscal
