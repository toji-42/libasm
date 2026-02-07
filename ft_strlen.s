global ft_strlen

section .text

ft_strlen:
    xor rax, rax
    jmp .loop

.loop:
    cmp BYTE [rdi + rax], 0
    je .end_loop
    inc rax
    jmp .loop

.end_loop:
    ret
