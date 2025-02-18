# Assembly Code Bug: Unhandled Memory Access

This repository demonstrates a common assembly code error: unhandled memory access. The code attempts to access memory locations using pointers without first ensuring that the pointers are valid.

## Bug Description
The `bug.asm` file contains assembly code that results in a segmentation fault because it doesn't check for valid memory addresses before accessing them. This can cause a program to crash or exhibit unpredictable behavior.

## Solution
The `bugSolution.asm` file provides a corrected version of the code. It incorporates checks to ensure the pointers are valid before attempting to access memory. This prevents segmentation faults and ensures the program operates correctly.

## How to reproduce
1. Assemble and link both `bug.asm` and `bugSolution.asm` using an assembler and linker suitable for your target architecture (e.g., NASM and LD).
2. Run the resulting executables. The `bug.asm` executable will likely crash with a segmentation fault, while `bugSolution.asm` will execute without errors.

This example highlights the importance of careful pointer handling in assembly language programming.