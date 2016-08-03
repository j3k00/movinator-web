	push   0x11c
	mov    eax,0x401d18
	call   0x401c74
	push   DWORD PTR [ebp+0xc]
	mov    esi,DWORD PTR ds:0x4020ec
	push   DWORD PTR [ebp+0x8]
	push   0x402154
	call   esi
	add    esp,0xc
	push   0x1
	push   0x40
	push   0x20
	push   DWORD PTR [ebp+0x8]
	lea    ecx,[ebp-0xa0]
	call   DWORD PTR ds:0x402048
	xor    edi,edi
	mov    DWORD PTR [ebp-0x4],edi
	cmp    DWORD PTR [ebp-0x4c],edi
	jne    0x40106d
	call   DWORD PTR ds:0x40200c
	push   eax
	push   0x402168
	call   esi
	or     DWORD PTR [ebp-0x4],0xffffffff
	pop    ecx
	pop    ecx
	lea    ecx,[ebp-0xa0]
	call   DWORD PTR ds:0x40204c
	xor    eax,eax
	inc    eax
	call   0x401cdd
	ret    
	push   0x1
	push   0x40
	push   0x20
	push   DWORD PTR [ebp+0xc]
	lea    ecx,[ebp-0x128]
	call   DWORD PTR ds:0x402070
	mov    BYTE PTR [ebp-0x4],0x1
	cmp    DWORD PTR [ebp-0xd8],edi
	jne    0x4010de
	call   DWORD PTR ds:0x40200c
	push   eax
	push   0x40218c
	call   esi
	xor    edi,edi
	pop    ecx
	inc    edi
	pop    ecx
	lea    ecx,[ebp-0x128]
	mov    BYTE PTR [ebp-0x4],0x0
	call   DWORD PTR ds:0x402050
	or     DWORD PTR [ebp-0x4],0xffffffff
	lea    ecx,[ebp-0xa0]
	call   DWORD PTR ds:0x40204c
	mov    eax,edi
	jmp    0x401067
	lea    ecx,[ebp-0xa0]
	call   DWORD PTR ds:0x402068
	push   eax
	lea    ecx,[ebp-0x128]
	call   DWORD PTR ds:0x402060
	mov    eax,DWORD PTR [ebp-0xa0]
	mov    eax,DWORD PTR [eax+0x4]
	lea    eax,[ebp+eax*1-0xa0]
	mov    ecx,DWORD PTR [eax+0x8]
	and    cl,0x6
	movsx  ecx,cl
	neg    ecx
	sbb    ecx,ecx
	not    ecx
	test   eax,ecx
	jne    0x4010c5
	lea    ecx,[ebp-0x128]
	call   DWORD PTR ds:0x402064
	lea    ecx,[ebp-0xa0]
	call   DWORD PTR ds:0x40206c
	lea    ecx,[ebp-0x128]
	call   DWORD PTR ds:0x402074
	push   0x4021b0
	call   esi
	jmp    0x4010a0
	push   ebp
	mov    ebp,esp
	sub    esp,0x414
	mov    eax,ds:0x403000
	xor    eax,ebp
	mov    DWORD PTR [ebp-0x4],eax
	push   esi
	mov    esi,DWORD PTR ds:0x4020ec
	push   edi
	push   0x4021c4
	call   esi
	mov    edx,DWORD PTR [ebp+0x8]
	lea    eax,[ebp-0x414]
	pop    ecx
	mov    ecx,eax
	mov    edi,0x208
	sub    edx,ecx
	lea    ecx,[edi+0x7ffffdf6]
	test   ecx,ecx
	je     0x401181
	movzx  ecx,WORD PTR [edx+eax*1]
	test   cx,cx
	je     0x401181
	mov    WORD PTR [eax],cx
	inc    eax
	inc    eax
	dec    edi
	jne    0x401166
	test   edi,edi
	jne    0x401187
	dec    eax
	dec    eax
	push   ebx
	xor    ecx,ecx
	push   0x20019
	mov    WORD PTR [eax],cx
	push   ecx
	lea    eax,[ebp-0x414]
	push   eax
	push   0x80000002
	call   DWORD PTR ds:0x402004
	mov    edi,eax
	test   edi,edi
	jne    0x4011b4
	push   0x4021d8
	call   esi
	jmp    0x4011bd
	push   edi
	push   0x4021e8
	call   esi
	pop    ecx
	pop    ecx
	mov    ecx,DWORD PTR [ebp-0x4]
	mov    eax,edi
	pop    edi
	xor    ecx,ebp
	pop    esi
	call   0x40146d
	leave  
	ret    
	push   0x3c
	mov    eax,0x401d3f
	call   0x401ca7
	mov    eax,DWORD PTR [ebp+0x14]
	mov    ebx,ecx
	push   0x40220c
	mov    DWORD PTR [ebp-0x44],ebx
	mov    DWORD PTR [ebp-0x40],eax
	call   DWORD PTR ds:0x4020ec
	and    DWORD PTR [ebp-0x3c],0x0
	pop    ecx
	mov    esi,0x2000
	push   esi
	call   0x40147c
	pop    ecx
	mov    edi,0x1000
	push   esi
	mov    DWORD PTR [ebp-0x30],eax
	mov    DWORD PTR [ebp+0x8],edi
	call   0x40147c
	pop    ecx
	lea    ecx,[ebp+0xc]
	push   ecx
	push   eax
	mov    DWORD PTR [ebp-0x34],eax
	lea    eax,[ebp+0x10]
	push   eax
	push   0x0
	lea    eax,[ebp+0x8]
	push   eax
	push   DWORD PTR [ebp-0x30]
	mov    DWORD PTR [ebp+0xc],edi
	push   0x0
	push   ebx
	call   DWORD PTR ds:0x402000
	mov    ebx,eax
	test   ebx,ebx
	jne    0x401357
	mov    ebx,DWORD PTR ds:0x4020e4
	push   DWORD PTR [ebp-0x30]
	push   0x402220
	call   DWORD PTR ds:0x4020e8
	push   DWORD PTR [ebp-0x34]
	push   0x402234
	call   DWORD PTR ds:0x4020e8
	push   DWORD PTR [ebp+0x10]
	push   0x402248
	call   DWORD PTR ds:0x4020e8
	add    esp,0x18
	cmp    DWORD PTR [ebp+0x10],0x1
	jne    0x40130f
	push   0x0
	push   DWORD PTR [ebp-0x34]
	push   0x0
	call   ebx
	add    esp,0xc
	inc    eax
	push   eax
	mov    DWORD PTR [ebp-0x38],eax
	call   0x40147c
	pop    ecx
	push   DWORD PTR [ebp-0x38]
	mov    DWORD PTR [ebp-0x30],eax
	push   DWORD PTR [ebp-0x34]
	push   eax
	call   ebx
	add    esp,0xc
	push   DWORD PTR [ebp-0x30]
	lea    ecx,[ebp-0x2c]
	call   DWORD PTR ds:0x402054
	and    DWORD PTR [ebp-0x4],0x0
	push   0x0
	push   0x40225c
	lea    ecx,[ebp-0x2c]
	call   DWORD PTR ds:0x40205c
	mov    ecx,DWORD PTR ds:0x402078
	cmp    eax,DWORD PTR [ecx]
	je     0x401302
	push   0x0
	push   DWORD PTR [ebp-0x40]
	push   0x0
	call   ebx
	add    esp,0xc
	inc    eax
	push   eax
	mov    DWORD PTR [ebp-0x38],eax
	call   0x40147c
	pop    ecx
	push   DWORD PTR [ebp-0x38]
	mov    DWORD PTR [ebp-0x34],eax
	push   DWORD PTR [ebp-0x40]
	push   eax
	call   ebx
	add    esp,0xc
	push   DWORD PTR [ebp-0x30]
	push   DWORD PTR [ebp-0x34]
	call   0x401000
	pop    ecx
	pop    ecx
	test   eax,eax
	je     0x40136f
	or     DWORD PTR [ebp-0x4],0xffffffff
	lea    ecx,[ebp-0x2c]
	call   DWORD PTR ds:0x402058
	inc    DWORD PTR [ebp-0x3c]
	push   esi
	call   0x40147c
	pop    ecx
	push   esi
	mov    DWORD PTR [ebp-0x30],eax
	mov    DWORD PTR [ebp+0x8],edi
	call   0x40147c
	pop    ecx
	lea    ecx,[ebp+0xc]
	push   ecx
	push   eax
	mov    DWORD PTR [ebp-0x34],eax
	lea    eax,[ebp+0x10]
	push   eax
	push   0x0
	lea    eax,[ebp+0x8]
	push   eax
	push   DWORD PTR [ebp-0x30]
	mov    DWORD PTR [ebp+0xc],edi
	push   DWORD PTR [ebp-0x3c]
	push   DWORD PTR [ebp-0x44]
	call   DWORD PTR ds:0x402000
	mov    DWORD PTR [ebp-0x38],eax
	test   eax,eax
	je     0x401244
	mov    ebx,eax
	mov    esi,0xea
	cmp    ebx,esi
	jne    0x401380
	push   0x402264
	call   DWORD PTR ds:0x4020ec
	mov    eax,esi
	jmp    0x40138f
	or     DWORD PTR [ebp-0x4],0xffffffff
	lea    ecx,[ebp-0x2c]
	call   DWORD PTR ds:0x402058
	xor    eax,eax
	jmp    0x401390
	push   ebx
	push   0x402278
	call   DWORD PTR ds:0x4020ec
	pop    ecx
	mov    eax,ebx
	pop    ecx
	call   0x401cf1
	ret    
	push   ebp
	mov    ebp,esp
	and    esp,0xfffffff8
	sub    esp,0xc
	push   ebx
	push   esi
	push   edi
	push   0x0
	push   0x402298
	call   DWORD PTR ds:0x4020ec
	push   0x2
	pop    edi
	xor    ecx,ecx
	push   0x4
	pop    edx
	mov    eax,edi
	mul    edx
	seto   cl
	neg    ecx
	or     ecx,eax
	push   ecx
	call   0x40147c
	add    esp,0xc
	mov    ebx,0x208
	push   ebx
	mov    esi,eax
	call   0x40147c
	pop    ecx
	push   ebx
	mov    DWORD PTR [esi],eax
	call   0x40147c
	mov    DWORD PTR [esi+0x4],eax
	mov    eax,DWORD PTR [esi]
	pop    ecx
	mov    edx,0x4022b0
	movzx  ecx,WORD PTR [edx]
	mov    WORD PTR [eax],cx
	add    edx,edi
	add    eax,edi
	test   cx,cx
	jne    0x4013ec
	mov    ecx,DWORD PTR [esi+0x4]
	mov    edx,0x402310
	movzx  eax,WORD PTR [edx]
	mov    WORD PTR [ecx],ax
	add    edx,edi
	add    ecx,edi
	test   ax,ax
	jne    0x401403
	and    DWORD PTR [esp+0x10],0x0
	mov    eax,DWORD PTR [esp+0x10]
	push   DWORD PTR [esi+eax*4]
	lea    ebx,[esp+0x18]
	call   0x401131
	pop    ecx
	test   eax,eax
	jne    0x40144d
	mov    eax,DWORD PTR [ebp+0x8]
	push   DWORD PTR [eax]
	mov    ecx,DWORD PTR [esp+0x18]
	push   DWORD PTR [esp+0x18]
	push   DWORD PTR [esp+0x1c]
	push   DWORD PTR [esp+0x20]
	call   0x4011ce
	add    esp,0x10
	test   eax,eax
	je     0x401457
	inc    DWORD PTR [esp+0x10]
	cmp    DWORD PTR [esp+0x10],edi
	jl     0x401417
	pop    edi
	pop    esi
	xor    eax,eax
	pop    ebx
	mov    esp,ebp
	pop    ebp
	ret    
	push   DWORD PTR [esp+0x8]
	call   0x401396
	pop    ecx
	xor    eax,eax
	ret    
	cmp    ecx,DWORD PTR ds:0x403000
	jne    0x401477
	repz ret 
	jmp    0x40172e
	jmp    DWORD PTR ds:0x4020f0
	push   0x40196c
	call   0x40192f
	mov    eax,ds:0x40336c
	mov    DWORD PTR [esp],0x403034
	push   DWORD PTR ds:0x403368
	mov    ds:0x403034,eax
	push   0x403024
	push   0x403028
	push   0x403020
	call   DWORD PTR ds:0x4020dc
	add    esp,0x14
	mov    ds:0x403030,eax
	test   eax,eax
	jge    0x4014cc
	push   0x8
	call   0x401884
	pop    ecx
	ret    
	push   0x10
	push   0x402450
	call   0x401afc
	xor    ebx,ebx
	mov    DWORD PTR [ebp-0x4],ebx
	mov    eax,fs:0x18
	mov    esi,DWORD PTR [eax+0x4]
	mov    DWORD PTR [ebp-0x1c],ebx
	mov    edi,0x403384
	push   ebx
	push   esi
	push   edi
	call   DWORD PTR ds:0x402034
	cmp    eax,ebx
	je     0x401515
	cmp    eax,esi
	jne    0x401508
	xor    esi,esi
	inc    esi
	mov    DWORD PTR [ebp-0x1c],esi
	jmp    0x401518
	push   0x3e8
	call   DWORD PTR ds:0x402038
	jmp    0x4014ef
	xor    esi,esi
	inc    esi
	mov    eax,ds:0x403380
	cmp    eax,esi
	jne    0x40152b
	push   0x1f
	call   0x401884
	pop    ecx
	jmp    0x401566
	mov    eax,ds:0x403380
	test   eax,eax
	jne    0x401560
	mov    DWORD PTR ds:0x403380,esi
	push   0x402118
	push   0x40210c
	call   0x401af4
	pop    ecx
	pop    ecx
	test   eax,eax
	je     0x401566
	mov    DWORD PTR [ebp-0x4],0xfffffffe
	mov    eax,0xff
	jmp    0x40163d
	mov    DWORD PTR ds:0x40303c,esi
	mov    eax,ds:0x403380
	cmp    eax,esi
	jne    0x40158a
	push   0x402108
	push   0x402100
	call   0x401aee
	pop    ecx
	pop    ecx
	mov    DWORD PTR ds:0x403380,0x2
	
	cmp    DWORD PTR [ebp-0x1c],ebx
	jne    0x401597
	push   ebx
	push   edi
	call   DWORD PTR ds:0x40203c
	cmp    DWORD PTR ds:0x403390,ebx
	je     0x4015b8
	push   0x403390
	call   0x401a30
	pop    ecx
	test   eax,eax
	je     0x4015b8
	push   ebx
	push   0x2
	push   ebx
	call   DWORD PTR ds:0x403390
	mov    eax,ds:0x403024
	mov    ecx,DWORD PTR ds:0x4020c8
	mov    DWORD PTR [ecx],eax
	push   DWORD PTR ds:0x403024
	push   DWORD PTR ds:0x403028
	push   DWORD PTR ds:0x403020
	call   0x401460
	add    esp,0xc
	mov    ds:0x403038,eax
	cmp    DWORD PTR ds:0x40302c,ebx
	jne    0x401623
	push   eax
	call   DWORD PTR ds:0x4020cc
	mov    eax,DWORD PTR [ebp-0x14]
	mov    ecx,DWORD PTR [eax]
	mov    ecx,DWORD PTR [ecx]
	mov    DWORD PTR [ebp-0x20],ecx
	push   eax
	push   ecx
	call   0x401992
	pop    ecx
	pop    ecx
	ret    
	mov    esp,DWORD PTR [ebp-0x18]
	mov    eax,DWORD PTR [ebp-0x20]
	mov    ds:0x403038,eax
	xor    ebx,ebx
	cmp    DWORD PTR ds:0x40302c,ebx
	jne    0x401623
	push   eax
	call   DWORD PTR ds:0x4020d4
	cmp    DWORD PTR ds:0x40303c,ebx
	jne    0x401631
	call   DWORD PTR ds:0x4020d8
	mov    DWORD PTR [ebp-0x4],0xfffffffe
	mov    eax,ds:0x403038
	call   0x401b41
	ret    
	mov    eax,0x5a4d
	cmp    WORD PTR ds:0x400000,ax
	je     0x401655
	xor    eax,eax
	jmp    0x4016a2
	mov    eax,ds:0x40003c
	lea    eax,[eax+0x400000]
	cmp    DWORD PTR [eax],0x4550
	jne    0x401651
	movzx  ecx,WORD PTR [eax+0x18]
	cmp    ecx,0x10b
	je     0x40168f
	cmp    ecx,0x20b
	jne    0x401651
	cmp    DWORD PTR [eax+0x84],0xe
	jbe    0x401651
	xor    ecx,ecx
	cmp    DWORD PTR [eax+0xf8],ecx
	jmp    0x40169d
	cmp    DWORD PTR [eax+0x74],0xe
	jbe    0x401651
	xor    ecx,ecx
	cmp    DWORD PTR [eax+0xe8],ecx
	setne  cl
	mov    eax,ecx
	push   0x1
	mov    ds:0x40302c,eax
	call   DWORD PTR ds:0x4020a8
	push   0xffffffff
	call   DWORD PTR ds:0x4020ac
	pop    ecx
	pop    ecx
	mov    ds:0x403388,eax
	mov    ds:0x40338c,eax
	call   DWORD PTR ds:0x4020b0
	mov    ecx,DWORD PTR ds:0x403374
	mov    DWORD PTR [eax],ecx
	call   DWORD PTR ds:0x4020b4
	mov    ecx,DWORD PTR ds:0x403370
	mov    DWORD PTR [eax],ecx
	mov    eax,ds:0x4020b8
	mov    eax,DWORD PTR [eax]
	mov    ds:0x40337c,eax
	call   0x401946
	call   0x401ba5
	cmp    DWORD PTR ds:0x403014,0x0
	jne    0x40170a
	push   0x401ba5
	call   DWORD PTR ds:0x4020bc
	pop    ecx
	call   0x401b7a
	cmp    DWORD PTR ds:0x403010,0xffffffff
	jne    0x401721
	push   0xffffffff
	call   DWORD PTR ds:0x402094
	pop    ecx
	xor    eax,eax
	ret    
	call   0x401ba8
	jmp    0x4014cd
	mov    edi,edi
	push   ebp
	mov    ebp,esp
	sub    esp,0x328
	mov    ds:0x403148,eax
	mov    DWORD PTR ds:0x403144,ecx
	mov    DWORD PTR ds:0x403140,edx
	mov    DWORD PTR ds:0x40313c,ebx
	mov    DWORD PTR ds:0x403138,esi
	mov    DWORD PTR ds:0x403134,edi
	data16
	mov    WORD PTR ds:0x403160,ss
	data16
	mov    WORD PTR ds:0x403154,cs
	data16
	mov    WORD PTR ds:0x403130,ds
	data16
	mov    WORD PTR ds:0x40312c,es
	data16
	mov    WORD PTR ds:0x403128,fs
	data16
	mov    WORD PTR ds:0x403124,gs
	pushf  
	pop    DWORD PTR ds:0x403158
	mov    eax,DWORD PTR [ebp+0x0]
	mov    ds:0x40314c,eax
	mov    eax,DWORD PTR [ebp+0x4]
	mov    ds:0x403150,eax
	lea    eax,[ebp+0x8]
	mov    ds:0x40315c,eax
	mov    eax,DWORD PTR [ebp-0x320]
	mov    DWORD PTR ds:0x403098,0x10001
	
	mov    eax,ds:0x403150
	mov    ds:0x40304c,eax
	mov    DWORD PTR ds:0x403040,0xc0000409
	
	mov    DWORD PTR ds:0x403044,0x1
	
	mov    eax,ds:0x403000
	mov    DWORD PTR [ebp-0x328],eax
	mov    eax,ds:0x403004
	mov    DWORD PTR [ebp-0x324],eax
	call   DWORD PTR ds:0x402020
	mov    ds:0x403090,eax
	push   0x1
	call   0x401c3e
	pop    ecx
	push   0x0
	call   DWORD PTR ds:0x402024
	push   0x40213c
	call   DWORD PTR ds:0x402028
	cmp    DWORD PTR ds:0x403090,0x0
	jne    0x401820
	push   0x1
	call   0x401c3e
	pop    ecx
	push   0xc0000409
	call   DWORD PTR ds:0x40202c
	push   eax
	call   DWORD PTR ds:0x402030
	leave  
	ret    
	mov    edi,edi
	push   ebp
	mov    ebp,esp
	mov    eax,DWORD PTR [ebp+0x8]
	mov    eax,DWORD PTR [eax]
	cmp    DWORD PTR [eax],0xe06d7363
	jne    0x401870
	cmp    DWORD PTR [eax+0x10],0x3
	jne    0x401870
	mov    eax,DWORD PTR [eax+0x14]
	cmp    eax,0x19930520
	je     0x40186b
	cmp    eax,0x19930521
	je     0x40186b
	cmp    eax,0x19930522
	je     0x40186b
	cmp    eax,0x1994000
	jne    0x401870
	call   0x401c44
	xor    eax,eax
	pop    ebp
	ret    0x4
	push   0x401834
	call   DWORD PTR ds:0x402024
	xor    eax,eax
	ret    
	jmp    DWORD PTR ds:0x4020e0
	push   0x14
	push   0x402470
	call   0x401afc
	push   DWORD PTR ds:0x40338c
	mov    esi,DWORD PTR ds:0x402088
	call   esi
	pop    ecx
	mov    DWORD PTR [ebp-0x1c],eax
	cmp    eax,0xffffffff
	jne    0x4018b9
	push   DWORD PTR [ebp+0x8]
	call   DWORD PTR ds:0x40208c
	pop    ecx
	jmp    0x401920
	push   0x8
	call   0x401c56
	pop    ecx
	and    DWORD PTR [ebp-0x4],0x0
	push   DWORD PTR ds:0x40338c
	call   esi
	mov    DWORD PTR [ebp-0x1c],eax
	push   DWORD PTR ds:0x403388
	call   esi
	pop    ecx
	pop    ecx
	mov    DWORD PTR [ebp-0x20],eax
	lea    eax,[ebp-0x20]
	push   eax
	lea    eax,[ebp-0x1c]
	push   eax
	push   DWORD PTR [ebp+0x8]
	mov    esi,DWORD PTR ds:0x4020ac
	call   esi
	pop    ecx
	push   eax
	call   0x401c50
	mov    DWORD PTR [ebp-0x24],eax
	push   DWORD PTR [ebp-0x1c]
	call   esi
	mov    ds:0x40338c,eax
	push   DWORD PTR [ebp-0x20]
	call   esi
	add    esp,0x14
	mov    ds:0x403388,eax
	mov    DWORD PTR [ebp-0x4],0xfffffffe
	call   0x401926
	mov    eax,DWORD PTR [ebp-0x24]
	call   0x401b41
	ret    
	push   0x8
	call   0x401c4a
	pop    ecx
	ret    
	mov    edi,edi
	push   ebp
	mov    ebp,esp
	push   DWORD PTR [ebp+0x8]
	call   0x40188a
	neg    eax
	sbb    eax,eax
	neg    eax
	pop    ecx
	dec    eax
	pop    ebp
	ret    
	mov    edi,edi
	push   esi
	mov    eax,0x402440
	mov    esi,0x402440
	push   edi
	mov    edi,eax
	cmp    eax,esi
	jae    0x401969
	mov    eax,DWORD PTR [edi]
	test   eax,eax
	je     0x401962
	call   eax
	add    edi,0x4
	cmp    edi,esi
	jb     0x40195a
	pop    edi
	pop    esi
	ret    
	mov    edi,edi
	push   esi
	mov    eax,0x402448
	mov    esi,0x402448
	push   edi
	mov    edi,eax
	cmp    eax,esi
	jae    0x40198f
	mov    eax,DWORD PTR [edi]
	test   eax,eax
	je     0x401988
	call   eax
	add    edi,0x4
	cmp    edi,esi
	jb     0x401980
	pop    edi
	pop    esi
	ret    
	jmp    DWORD PTR ds:0x4020d0
	int3   
	int3   
	int3   
	int3   
	int3   
	int3   
	int3   
	int3   
	mov    edi,edi
	push   ebp
	mov    ebp,esp
	mov    ecx,DWORD PTR [ebp+0x8]
	mov    eax,0x5a4d
	cmp    WORD PTR [ecx],ax
	je     0x4019b6
	xor    eax,eax
	pop    ebp
	ret    
	mov    eax,DWORD PTR [ecx+0x3c]
	add    eax,ecx
	cmp    DWORD PTR [eax],0x4550
	jne    0x4019b2
	xor    edx,edx
	mov    ecx,0x10b
	cmp    WORD PTR [eax+0x18],cx
	sete   dl
	mov    eax,edx
	pop    ebp
	ret    
	int3   
	int3   
	int3   
	int3   
	int3   
	int3   
	int3   
	int3   
	int3   
	int3   
	int3   
	mov    edi,edi
	push   ebp
	mov    ebp,esp
	mov    eax,DWORD PTR [ebp+0x8]
	mov    ecx,DWORD PTR [eax+0x3c]
	add    ecx,eax
	movzx  eax,WORD PTR [ecx+0x14]
	push   ebx
	push   esi
	movzx  esi,WORD PTR [ecx+0x6]
	xor    edx,edx
	push   edi
	lea    eax,[eax+ecx*1+0x18]
	test   esi,esi
	jbe    0x401a1d
	mov    edi,DWORD PTR [ebp+0xc]
	mov    ecx,DWORD PTR [eax+0xc]
	cmp    edi,ecx
	jb     0x401a15
	mov    ebx,DWORD PTR [eax+0x8]
	add    ebx,ecx
	cmp    edi,ebx
	jb     0x401a1f
	inc    edx
	add    eax,0x28
	cmp    edx,esi
	jb     0x401a05
	xor    eax,eax
	pop    edi
	pop    esi
	pop    ebx
	pop    ebp
	ret    
	int3   
	int3   
	int3   
	int3   
	int3   
	int3   
	int3   
	int3   
	int3   
	int3   
	int3   
	int3   
	mov    edi,edi
	push   ebp
	mov    ebp,esp
	push   0xfffffffe
	push   0x402490
	push   0x401b55
	mov    eax,fs:0x0
	push   eax
	sub    esp,0x8
	push   ebx
	push   esi
	push   edi
	mov    eax,ds:0x403000
	xor    DWORD PTR [ebp-0x8],eax
	xor    eax,ebp
	push   eax
	lea    eax,[ebp-0x10]
	mov    fs:0x0,eax
	mov    DWORD PTR [ebp-0x18],esp
	mov    DWORD PTR [ebp-0x4],0x0
	push   0x400000
	call   0x4019a0
	add    esp,0x4
	test   eax,eax
	je     0x401ad2
	mov    eax,DWORD PTR [ebp+0x8]
	sub    eax,0x400000
	push   eax
	push   0x400000
	call   0x4019e0
	add    esp,0x8
	test   eax,eax
	je     0x401ad2
	mov    eax,DWORD PTR [eax+0x24]
	shr    eax,0x1f
	not    eax
	and    eax,0x1
	mov    DWORD PTR [ebp-0x4],0xfffffffe
	mov    ecx,DWORD PTR [ebp-0x10]
	mov    DWORD PTR fs:0x0,ecx
	pop    ecx
	pop    edi
	pop    esi
	pop    ebx
	mov    esp,ebp
	pop    ebp
	ret    
	mov    eax,DWORD PTR [ebp-0x14]
	mov    ecx,DWORD PTR [eax]
	mov    eax,DWORD PTR [ecx]
	xor    edx,edx
	cmp    eax,0xc0000005
	sete   dl
	mov    eax,edx
	ret    
	mov    esp,DWORD PTR [ebp-0x18]
	mov    DWORD PTR [ebp-0x4],0xfffffffe
	xor    eax,eax
	mov    ecx,DWORD PTR [ebp-0x10]
	mov    DWORD PTR fs:0x0,ecx
	pop    ecx
	pop    edi
	pop    esi
	pop    ebx
	mov    esp,ebp
	pop    ebp
	ret    
	int3   
	jmp    DWORD PTR ds:0x4020c4
	jmp    DWORD PTR ds:0x402080
	int3   
	int3   
	push   0x401b55
	push   DWORD PTR fs:0x0
	mov    eax,DWORD PTR [esp+0x10]
	mov    DWORD PTR [esp+0x10],ebp
	lea    ebp,[esp+0x10]
	sub    esp,eax
	push   ebx
	push   esi
	push   edi
	mov    eax,ds:0x403000
	xor    DWORD PTR [ebp-0x4],eax
	xor    eax,ebp
	push   eax
	mov    DWORD PTR [ebp-0x18],esp
	push   DWORD PTR [ebp-0x8]
	mov    eax,DWORD PTR [ebp-0x4]
	mov    DWORD PTR [ebp-0x4],0xfffffffe
	mov    DWORD PTR [ebp-0x8],eax
	lea    eax,[ebp-0x10]
	mov    fs:0x0,eax
	ret    
	mov    ecx,DWORD PTR [ebp-0x10]
	mov    DWORD PTR fs:0x0,ecx
	pop    ecx
	pop    edi
	pop    edi
	pop    esi
	pop    ebx
	mov    esp,ebp
	pop    ebp
	push   ecx
	ret    
	mov    edi,edi
	push   ebp
	mov    ebp,esp
	push   DWORD PTR [ebp+0x14]
	push   DWORD PTR [ebp+0x10]
	push   DWORD PTR [ebp+0xc]
	push   DWORD PTR [ebp+0x8]
	push   0x40146d
	push   0x403000
	call   0x401c5c
	add    esp,0x18
	pop    ebp
	ret    
	mov    edi,edi
	push   esi
	push   0x30000
	push   0x10000
	xor    esi,esi
	push   esi
	call   0x401c68
	add    esp,0xc
	test   eax,eax
	je     0x401ba3
	push   esi
	push   esi
	push   esi
	push   esi
	push   esi
	call   0x401c62
	add    esp,0x14
	pop    esi
	ret    
	xor    eax,eax
	ret    
	mov    edi,edi
	push   ebp
	mov    ebp,esp
	sub    esp,0x10
	mov    eax,ds:0x403000
	and    DWORD PTR [ebp-0x8],0x0
	and    DWORD PTR [ebp-0x4],0x0
	push   ebx
	push   edi
	mov    edi,0xbb40e64e
	mov    ebx,0xffff0000
	cmp    eax,edi
	je     0x401bda
	test   ebx,eax
	je     0x401bda
	not    eax
	mov    ds:0x403004,eax
	jmp    0x401c3a
	push   esi
	lea    eax,[ebp-0x8]
	push   eax
	call   DWORD PTR ds:0x402040
	mov    esi,DWORD PTR [ebp-0x4]
	xor    esi,DWORD PTR [ebp-0x8]
	call   DWORD PTR ds:0x402010
	xor    esi,eax
	call   DWORD PTR ds:0x402014
	xor    esi,eax
	call   DWORD PTR ds:0x402018
	xor    esi,eax
	lea    eax,[ebp-0x10]
	push   eax
	call   DWORD PTR ds:0x40201c
	mov    eax,DWORD PTR [ebp-0xc]
	xor    eax,DWORD PTR [ebp-0x10]
	xor    esi,eax
	cmp    esi,edi
	jne    0x401c20
	mov    esi,0xbb40e64f
	jmp    0x401c2b
	test   ebx,esi
	jne    0x401c2b
	mov    eax,esi
	shl    eax,0x10
	or     esi,eax
	mov    DWORD PTR ds:0x403000,esi
	not    esi
	mov    DWORD PTR ds:0x403004,esi
	pop    esi
	pop    edi
	pop    ebx
	leave  
	ret    
	jmp    DWORD PTR ds:0x4020a4
	jmp    DWORD PTR ds:0x4020a0
	jmp    DWORD PTR ds:0x40209c
	jmp    DWORD PTR ds:0x402098
	jmp    DWORD PTR ds:0x402090
	jmp    DWORD PTR ds:0x402084
	jmp    DWORD PTR ds:0x4020f4
	jmp    DWORD PTR ds:0x4020c0
	jmp    DWORD PTR ds:0x4020f8
	push   eax
	push   DWORD PTR fs:0x0
	lea    eax,[esp+0xc]
	sub    esp,DWORD PTR [esp+0xc]
	push   ebx
	push   esi
	push   edi
	mov    DWORD PTR [eax],ebp
	mov    ebp,eax
	mov    eax,ds:0x403000
	xor    eax,ebp
	push   eax
	push   DWORD PTR [ebp-0x4]
	mov    DWORD PTR [ebp-0x4],0xffffffff
	lea    eax,[ebp-0xc]
	mov    fs:0x0,eax
	ret    
	push   eax
	push   DWORD PTR fs:0x0
	lea    eax,[esp+0xc]
	sub    esp,DWORD PTR [esp+0xc]
	push   ebx
	push   esi
	push   edi
	mov    DWORD PTR [eax],ebp
	mov    ebp,eax
	mov    eax,ds:0x403000
	xor    eax,ebp
	push   eax
	mov    DWORD PTR [ebp-0x10],eax
	push   DWORD PTR [ebp-0x4]
	mov    DWORD PTR [ebp-0x4],0xffffffff
	lea    eax,[ebp-0xc]
	mov    fs:0x0,eax
	ret    
	mov    ecx,DWORD PTR [ebp-0xc]
	mov    DWORD PTR fs:0x0,ecx
	pop    ecx
	pop    edi
	pop    edi
	pop    esi
	pop    ebx
	mov    esp,ebp
	pop    ebp
	push   ecx
	ret    
	mov    ecx,DWORD PTR [ebp-0x10]
	xor    ecx,ebp
	call   0x40146d
	jmp    0x401cdd
	lea    ecx,[ebp-0xa0]
	jmp    DWORD PTR ds:0x40204c
	lea    ecx,[ebp-0x128]
	jmp    DWORD PTR ds:0x402050
	mov    edx,DWORD PTR [esp+0x8]
	lea    eax,[edx+0xc]
	mov    ecx,DWORD PTR [edx-0x12c]
	xor    ecx,eax
	call   0x40146d
	mov    eax,0x4024bc
	jmp    0x401c6e
	lea    ecx,[ebp-0x2c]
	jmp    DWORD PTR ds:0x402058
	mov    edx,DWORD PTR [esp+0x8]
	lea    eax,[edx+0xc]
	mov    ecx,DWORD PTR [edx-0x4c]
	xor    ecx,eax
	call   0x40146d
	mov    ecx,DWORD PTR [edx-0x4]
	xor    ecx,eax
	call   0x40146d
	mov    eax,0x4024e8
	jmp    0x401c6e
