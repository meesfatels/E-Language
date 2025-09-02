// Basic Bitwise XOR Function for ARM64
// Simple, robust bitwise XOR using ARM64 EOR instruction
// Input: X0 = first value, X1 = second value
// Output: X0 = bitwise XOR of X0 and X1

.global bit_xor
bit_xor:
    EOR X0, X0, X1      // X0 = X0 ^ X1
    RET                 // Return
