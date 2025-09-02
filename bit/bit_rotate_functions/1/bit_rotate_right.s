// Basic Rotate Right Function for ARM64
// Simple, robust right rotator
// Input: X0 = value, X1 = rotate amount
// Output: X0 = value rotated right by X1 bits

.global bit_rotate_right
bit_rotate_right:
    ROR X0, X0, X1      // Rotate right by X1 bits
    RET                 // Return
