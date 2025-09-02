// Basic Shift Right Function for ARM64
// Simple, robust right shifter
// Input: X0 = value, X1 = shift amount
// Output: X0 = value shifted right by X1 bits

.global bit_shift_right
bit_shift_right:
    LSR X0, X0, X1      // Shift right by X1 bits
    RET                 // Return
