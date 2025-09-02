// Basic Rotate Left Function for ARM64
// Simple, robust left rotator
// Input: X0 = value, X1 = rotate amount
// Output: X0 = value rotated left by X1 bits

.global bit_rotate_left
bit_rotate_left:
    MOV X2, #64         // Get bit width
    SUB X2, X2, X1      // Calculate right rotate amount
    ROR X0, X0, X2      // Rotate right by (64 - X1) bits
    RET                 // Return
