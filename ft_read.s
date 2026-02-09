global ft_read

;fd = rdi, buffer = rsi; bytes = rdx

section .text

ft_read:
    mov rax, 2
    syscall
    cmp rax, 0
    jbe .error 
    ret

.error:
   push r12     ; for prepare because safe register 
   neg rax      ; because we need the positif number of the error
   mov r12, rax ; need the adress of the value for errno
   call __errno_location WRT ..plt ; call errno location
   mov [rax], r12
   pop r12
   mov rax, -1
   ret

