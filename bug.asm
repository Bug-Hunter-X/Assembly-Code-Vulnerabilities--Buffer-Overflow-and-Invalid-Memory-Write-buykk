mov eax, [ebx + ecx*4 + 0x10] ; potential buffer overflow if ecx is too large
mov [edi + eax*4], 0x0 ; potential write to invalid memory address if eax is too large