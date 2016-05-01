.section .data

.global _start
_start:

push $4
push $4
push $4
pop %eax
pop %eax
pop %eax
xor %eax, %eax
