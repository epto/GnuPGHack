.text
 .align 1<<3
 .globl mpihelp_sub_n
mpihelp_sub_n:
 pushl %edi
 pushl %esi

 movl 12(%esp),%edi
 movl 16(%esp),%esi
 movl 20(%esp),%edx
 movl 24(%esp),%ecx

 movl %ecx,%eax
 shrl $3,%ecx
 negl %eax
 andl $7,%eax
 jz Loop
 incl %ecx
 shll $2,%eax
 subl %eax,%edi
 subl %eax,%esi
 subl %eax,%edx
 shrl $2,%eax
 leal Loop-3(%eax,%eax,8),%eax

 jmp *%eax
 .align 1<<3
Loop: movl (%esi),%eax
 sbbl (%edx),%eax
 movl %eax,(%edi)
 movl 4(%esi),%eax
 sbbl 4(%edx),%eax
 movl %eax,4(%edi)
 movl 8(%esi),%eax
 sbbl 8(%edx),%eax
 movl %eax,8(%edi)
 movl 12(%esi),%eax
 sbbl 12(%edx),%eax
 movl %eax,12(%edi)
 movl 16(%esi),%eax
 sbbl 16(%edx),%eax
 movl %eax,16(%edi)
 movl 20(%esi),%eax
 sbbl 20(%edx),%eax
 movl %eax,20(%edi)
 movl 24(%esi),%eax
 sbbl 24(%edx),%eax
 movl %eax,24(%edi)
 movl 28(%esi),%eax
 sbbl 28(%edx),%eax
 movl %eax,28(%edi)
 leal 32(%edi),%edi
 leal 32(%esi),%esi
 leal 32(%edx),%edx
 decl %ecx
 jnz Loop

 sbbl %eax,%eax
 negl %eax

 popl %esi
 popl %edi
 ret
