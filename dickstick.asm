.Ltext0:
             		.section	.rodata
             		.align 8
             	.LC0:
0000 4F524557 		.string	"OREWA O CHINCHIN GA DAISUKI NANDAYO%d\n"
     41204F20 
     4348494E 
     4348494E 
     20474120 
             		.text
             		.globl	main
             	main:
             	.LFB0:
             		.cfi_startproc
0000 55       		pushq	%rbp
             		.cfi_def_cfa_offset 16
             		.cfi_offset 6, -16
0001 4889E5   		movq	%rsp, %rbp
             		.cfi_def_cfa_register 6
0004 4883EC10 		subq	$16, %rsp
0008 C745F802 		movl	$2, -8(%rbp)
     000000
000f 8B55F8   		movl	-8(%rbp), %edx
0012 89D0     		movl	%edx, %eax
0014 C1E002   		sall	$2, %eax
0017 01D0     		addl	%edx, %eax
0019 C1E002   		sall	$2, %eax
001c 83C002   		addl	$2, %eax
001f 8945F8   		movl	%eax, -8(%rbp)
0022 C745FC00 		movl	$0, -4(%rbp)
     000000
0029 EB0A     		jmp	.L2
             	.L3:
0031 8345FC01 		addl	$1, -4(%rbp)
002b 8B45FC   		movl	-4(%rbp), %eax
002e 0145F8   		addl	%eax, -8(%rbp)
             	.L2:
0035 837DFC63 		cmpl	$99, -4(%rbp)
0039 7EF0     		jle	.L3
003b 8B45F8   		movl	-8(%rbp), %eax
003e 89C6     		movl	%eax, %esi
0040 BF000000 		movl	$.LC0, %edi
     00
0045 B8000000 		movl	$0, %eax
     00
004a E8000000 		call	printf
     00
004f B8000000 		movl	$0, %eax
     00
0054 C9       		leave
             		.cfi_def_cfa 7, 8
0055 C3       		ret
             		.cfi_endproc
             	.LFE0:
             	.Letext0:
