// Basic Bitwise AND Function for ARM64
// Simple, robust bitwise AND using ARM64 AND instruction
// Input: X0 = first value, X1 = second value
// Output: X0 = bitwise AND of X0 and X1

.global bit_and
bit_and:
    AND X0, X0, X1      // X0 = X0 & X1
    RET                 // Return
