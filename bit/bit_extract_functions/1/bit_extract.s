// Basic Extract Bit Function for ARM64
// Simple, robust bit extractor
// Input: X0 = value, X1 = bit position
// Output: X0 = extracted bit (0 or 1)

.global bit_extract
bit_extract:
    LSR X0, X0, X1      // Shift right by bit position
    AND X0, X0, #1      // Mask to get only bit 0
    RET                 // Return
