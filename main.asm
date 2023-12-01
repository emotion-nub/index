section .data
    num1 dd 5        ; Define a doubleword (4 bytes) variable and initialize it to 5
    num2 dd 7        ; Define another doubleword variable and initialize it to 7

section .text
    extern add_numbers

global _start

_start:
    ; Call the add_numbers function
    mov eax, [num1]
    mov ebx, [num2]
    call add_numbers

    ; Result is now in eax, you can use it as needed
    ; For this example, let's exit the program with the result as the exit code
    mov ebx, eax      ; Set the exit code to the result of the addition
    mov eax, 1        ; System call number for exit
    int 0x80           ; Make the system call

