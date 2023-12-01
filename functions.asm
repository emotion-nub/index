section .text
    global add_numbers

add_numbers:
    ; Function to add two numbers
    ; Input:  eax = first number, ebx = second number
    ; Output: eax = sum of the two numbers
    add eax, ebx
    ret
