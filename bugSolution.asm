section .data
    buffer times 100 db 0 ; Allocate a buffer of 100 bytes
section .bss
section .text
global _start
_start:
    ; ... other code ...
    mov ecx, some_value ; Check the value of ecx to ensure it's within the bounds of the buffer
    cmp ecx, 100 ; Compare ecx with the buffer size
    jg error ; Jump to error handling if ecx exceeds buffer size
    mov eax, [ebx + ecx*4 + 0x10] ; Access memory address only if ecx is safe
    ; ... other code ...
    mov eax, some_value ; Check the value of eax to ensure it doesn't cause an invalid write
    cmp eax, 100 ; Compare eax with a safe limit
    jg error ; Jump to error handling if eax exceeds the safe limit
    mov [edi + eax*4], 0x0 ; Access memory address only if eax is safe
    ; ... rest of code ...
error:
    ; Handle the error appropriately
    ; Exit the program
    mov eax, 1
    xor ebx, ebx
    int 0x80