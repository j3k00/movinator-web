.section .data

.global _start
_start:

mov	$3, %eax
mov	$3, %ebx
pop %eax
	mov	$3, %ebx
mov	%ebx, %ebx
mov	( %ebx), %ebx
mov	4 (%ebx), %ebx
mov	4( %ebx, %ebx), %ebx
add	123  ( , %ebx, 4), %ebx
movl -12(, %eax,4),%eax
