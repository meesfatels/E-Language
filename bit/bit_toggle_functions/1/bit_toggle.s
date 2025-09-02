// Basic Flip Bit Function for ARM64
// Simple, robust bit flipper
// Input: X0 = value, X1 = bit mask
// Output: X0 = value with bit flipped

.global bit_toggle
bit_toggle:
    EOR X0, X0, X1      // Flip bit(s)
    RET                 // Return
