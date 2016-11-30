mov eax,7
mov eax,7
mov eax,ebx
mov eax,DWORD PTR[eax + eax*4]
mov eax,DWORD PTR[eax + eax*4 - 4]
mov eax,DWORD PTR[eax + eax*4 + 4]
int 0x80
jmp ciao
mov eax,7
mov eax,7
mov eax,ebx
mov eax,DWORD PTR[eax + eax*4]
mov eax,DWORD PTR[eax + eax*4 - 4]
mov eax,DWORD PTR[eax + eax*4 + 4]