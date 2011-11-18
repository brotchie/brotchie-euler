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

    mov r8, 0 ; Sum square.
    mov r9, 0 ; Square sum.

    mov rbx, 1
loop:
    ; Running total.
    add r9, rbx

    ; Sum of square.
    mov rax, rbx
    mul rax
    add r8, rax

    ; Increment and loop.
    inc rbx
    cmp rbx, 100
    jle loop

    ; Square sum.
    mov rax, r9
    mul rax

    ; Find difference and put in r9.
    sub rax, r8
    mov r9, rax

    ; Print out answer.
    mov rdi, fmt
    mov rsi, r9
    mov rax, 0 ; no floating point arguments.
    call printf

    mov rsp, rbp
    pop rbp

    mov rax, 0
    ret
