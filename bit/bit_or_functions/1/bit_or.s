// Basic Bitwise OR Function for ARM64
// Simple, robust bitwise OR using ARM64 ORR instruction
// Input: X0 = first value, X1 = second value
// Output: X0 = bitwise OR of X0 and X1

.global bit_or
bit_or:
    ORR X0, X0, X1      // X0 = X0 | X1
    RET                 // Return
