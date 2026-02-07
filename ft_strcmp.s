global ft_strcmp

section .text


ft_strcmp:
    xor rax, rax
    xor r8, r8          
    xor r9, r9          
    jmp .loop
; rdi = dest rsi = src

.loop:
    mov r8b, BYTE [rdi + rax] 
    mov r9b, BYTE [rsi + rax] 

    cmp r8b, 0                
    je .end                   

    cmp r8b, r9b              
    jne .end                  

    inc rax                   
    jmp .loop

.end:
    sub r8, r9                
    mov rax, r8               
    ret
