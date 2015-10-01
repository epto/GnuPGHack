 .text
 .align 1<<3
 .globl mpihelp_mul_1
mpihelp_mul_1:

 pushl %edi
 pushl %esi
 pushl %ebx
 pushl %ebp

 movl 20(%esp),%edi
 movl 24(%esp),%esi
 movl 28(%esp),%ecx
 movl 32(%esp),%ebp

 leal (%edi,%ecx,4),%edi
 leal (%esi,%ecx,4),%esi
 negl %ecx
 xorl %ebx,%ebx
 .align 1<<3
Loop:
 movl (%esi,%ecx,4),%eax
 mull %ebp
 addl %ebx,%eax
 movl %eax,(%edi,%ecx,4)
 adcl $0,%edx
 movl %edx,%ebx

 incl %ecx
 jnz Loop
 movl %ebx,%eax

 popl %ebp
 popl %ebx
 popl %esi
 popl %edi
 ret
