global ft_strcpy
section .text

; rdi = dest rsi = src

ft_strcpy:
   xor rax, rax
   xor r8, r8
   jmp .loop

.loop:
    cmp BYTE [rsi + rax], 0
    je .end
    mov r8b, [rsi + rax]
    mov [rdi + rax], r8b
    inc rax
    jmp .loop

.end:
    mov [rdi + rax], 0
    mov rax, rdi
    ret
