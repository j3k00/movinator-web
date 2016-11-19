.section .data
var:
	.long 0
var1:
	.long 0
.section .text
.global _start
_start:
inzio:
	cmp $0, var1
	je  procedi
	jne fine
procedi:
	push eax
	push ebx
	push ecx
	pop %edx
	pop %ebx
	movl $10,%ecx
	movl $0,%eax
	incl %eax
	incl %eax
	jmp controller
controller:
	cmp %ecx,%eax
	je exit
	movl $0,%edx
	movl %eax,var
	incl %ebx
	div %ebx
	cmp $0,%dx
	movl var,%eax
	jne controller
	je primo
primo:
	cmp $1,%ebx
	je controller
	jne primo1
primo1:
	cmp %ebx,%eax
	je stampa
	inc %eax
	movl $0,%ebx
	movl $0,%ebx
	jmp controller
stampa:
	push %eax
	push %ecx
	call itoa
	pop %ecx
	pop %eax
	inc %eax
	movl $0,%ebx
	jmp controller
	
fine:
	
exit:
	movl $0, %ebx
	movl $1, %eax
	int $0x80
