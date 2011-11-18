CPU x64

extern printf

section .data
fmt:
    db "%d", 10, 0

section .text
    global main

main:
    push rbp
    mov rbp, rsp

    mov rbx, 999
    mov r8, 0
loop:
    ; Test modulus 5.
    mov eax, ebx
    mov edx, 0
    mov ecx, 5
    div ecx
    cmp edx, 0
    je accumulate

    ; Test modulus 3.
    mov eax, ebx
    mov edx, 0
    mov ecx, 3
    div ecx
    cmp edx, 0
    jne ignore

accumulate:
    add r8, rbx
ignore:
    dec rbx
    cmp rbx, 0
    jne loop

    mov rdi, fmt
    mov rsi, r8
    call printf

    mov rsp, rbp
    pop rbp

    ;Exit
    mov rax, 0
    ret
