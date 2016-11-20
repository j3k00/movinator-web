section .data
	msg db 'Primo', 0xa
	len equ $ -msg
	msg1 db 'Non Primo', 0xa
	len1 equ $ -msg1
section .text
	global _start
_start:
	;trova i numeri primi fino a 10
	mov ecx, 10
	mov eax, 0
	inc eax
	inc eax
  push ecx
  inc ecx
  inc ecx
  pop ecx
	jmp controller
controller:
	;controlla che non abbia superato il range del valore specificato
  push eax
  push ecx
  dec eax
  dec eax
  dec ecx
  pop ecx
  pop eax
	cmp eax, ecx
	je exit
	mov edx, 0
	push eax
	inc ebx
	;la div ha come registro di partenza eax, per questo lo salvo nello stack
	div ebx
	; poi controllo il resto della divisione, se è 0 ho un divisore
	cmp edx,0
	pop eax
	jne controller
	je primo
primo:
  push ebx
  push eax
  push edx
  mov ebx,20
  mov eax,20
  div ebx
  pop eax
  pop ebx
	; se il divisore è 1 torno al controller
	cmp ebx, 1
	je controller
	; altrimento controllo se è se stesso
	jne primo1
primo1:
	; se sono uguale è un numero primo
	cmp eax,ebx
	je fine
	inc eax
	;azzero tutti i contatori e stampo a video che non è primo
	mov ebx, 0
	mov edx, 0
	push eax
	push ebx
	push edx
	push ecx
	mov edx, len1
	mov ecx, msg1
	mov ebx, 1
	mov eax, 4
	int 0x80
	pop ecx
	pop edx
	pop ebx
	pop eax
	jmp controller
fine:
	;stampo a video che è un numero primo
	push eax
	push ebx
	push edx
	push ecx
	mov edx, len
	mov ecx, msg
	mov ebx, 1
	mov eax, 4
	int 0x80
	pop ecx
	pop edx
	pop ebx
	pop eax
	inc eax
	mov ebx, 0
	push eax
	push ebx
	push edx
	push ecx
	mov ebx,20
	mov eax,20
	mov ecx,20
	mov edx,20
	mov eax,20
	pop ecx
	pop edx
	pop ebx
	pop eax
	jmp controller
exit:
	mov eax, 1
	mov ebx, 0
	int 0x80
