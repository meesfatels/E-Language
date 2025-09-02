// Basic Shift Left Function for ARM64
// Simple, robust left shifter using ARM64 LSL instruction
// Input: X0 = value, X1 = shift amount
// Output: X0 = value shifted left by X1 bits

.global bit_shift_left
bit_shift_left:
    LSL X0, X0, X1      // Shift left by X1 bits using ARM64 hardware instruction
    RET                 // Return
