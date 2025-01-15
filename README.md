# Assembly Code Vulnerabilities: Buffer Overflow and Invalid Memory Write

This repository contains example assembly code that demonstrates two common vulnerabilities: buffer overflow and write to invalid memory.  The code highlights the potential risks associated with unsafe memory access. A solution is provided to demonstrate secure coding practices.

**Vulnerabilities:**

* **Buffer Overflow:** The `mov eax, [ebx + ecx*4 + 0x10]` instruction is vulnerable to buffer overflow if the value in `ecx` is too large, causing it to read from memory outside of the allocated buffer. This could lead to program crashes or arbitrary code execution.
* **Invalid Memory Write:** The `mov [edi + eax*4], 0x0` instruction is vulnerable to writing to an invalid memory address if the value in `eax` is too large, leading to program crashes or system instability.

**Solution:**

The provided solution demonstrates how to mitigate these vulnerabilities by adding checks before memory access.