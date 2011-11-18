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

    mov rsi, 0
    mov r8, 1
    mov r9, 2
loop:
    ; Mod 2.
    mov rdx, 0
    mov rax, r9
    mov rcx, 2
    div rcx
    cmp rdx, 0
    jne next
    add rsi, r9

    ; Next number of fibonacci sequence.
next:
    mov r10, r9
    add r10, r8
    mov r8, r9
    mov r9, r10

    ; Check if above 4 million.
    cmp r9, 4000000
    jle loop

    ; Print out answer.
    mov rdi, fmt
    mov rax, 0 ; no floating point arguments.
    call printf

    mov rsp, rbp
    pop rbp

    mov rax, 0
    ret
