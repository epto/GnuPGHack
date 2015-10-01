.text
 .align 1<<3
 .globl mpihelp_rshift
mpihelp_rshift:
 pushl %edi
 pushl %esi
 pushl %ebx

 movl 16(%esp),%edi
 movl 20(%esp),%esi
 movl 24(%esp),%edx
 movl 28(%esp),%ecx

 leal -4(%edi,%edx,4),%edi
 leal (%esi,%edx,4),%esi
 negl %edx

 movl (%esi,%edx,4),%ebx
 xorl %eax,%eax
 shrdl %ebx,%eax
 incl %edx
 jz Lend2
 pushl %eax
 testb $1,%dl
 jnz L2
 movl %ebx,%eax

 .align 1<<3
Loop2: movl (%esi,%edx,4),%ebx
 shrdl %ebx,%eax
 movl %eax,(%edi,%edx,4)
 incl %edx
L2: movl (%esi,%edx,4),%eax
 shrdl %eax,%ebx
 movl %ebx,(%edi,%edx,4)
 incl %edx
 jnz Loop2

 shrl %cl,%eax
 movl %eax,(%edi)

 popl %eax

 popl %ebx
 popl %esi
 popl %edi
 ret

Lend2: shrl %cl,%ebx
 movl %ebx,(%edi)

 popl %ebx
 popl %esi
 popl %edi
 ret
