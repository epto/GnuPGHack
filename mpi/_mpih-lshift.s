.text
 .align 1<<3
 .globl mpihelp_lshift
mpihelp_lshift:
 pushl %edi
 pushl %esi
 pushl %ebx

 movl 16(%esp),%edi
 movl 20(%esp),%esi
 movl 24(%esp),%edx
 movl 28(%esp),%ecx

 subl $4,%esi

 movl (%esi,%edx,4),%ebx
 xorl %eax,%eax
 shldl %ebx,%eax
 decl %edx
 jz Lend
 pushl %eax
 testb $1,%dl
 jnz L1
 movl %ebx,%eax

 .align 1<<3
Loop: movl (%esi,%edx,4),%ebx
 shldl %ebx,%eax
 movl %eax,(%edi,%edx,4)
 decl %edx
L1: movl (%esi,%edx,4),%eax
 shldl %eax,%ebx
 movl %ebx,(%edi,%edx,4)
 decl %edx
 jnz Loop

 shll %cl,%eax
 movl %eax,(%edi)

 popl %eax

 popl %ebx
 popl %esi
 popl %edi
 ret

Lend: shll %cl,%ebx
 movl %ebx,(%edi)

 popl %ebx
 popl %esi
 popl %edi
 ret
