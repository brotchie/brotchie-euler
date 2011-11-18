; incomplete.
extern printf
extern malloc

section .data
fmt:
    db "%llu\n", 0

section .text
    global main

main:
    mov rdi, fmt
    mov rsi, 600851475143
    mov rax, 0
    call printf

    mov rax, 0
    ret

primes:
    
