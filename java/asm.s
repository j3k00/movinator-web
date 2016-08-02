.section .data

.global _start
_start:

incl %eax
incl (%eax)
incl 4(%eax)
incl (%eax,%ebx)
incl 4(%eax,%ebx)
incl (%eax,%ebx,4)
incl 4(%eax,%ebx,4)
