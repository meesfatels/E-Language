// Basic Clear Bit Function for ARM64
// Simple, robust bit clearer using ARM64 BIC instruction
// Input: X0 = value, X1 = bit mask
// Output: X0 = value with bit cleared

.global bit_clear
bit_clear:
    BIC X0, X0, X1      // Clear bit(s) using ARM64 hardware instruction
    RET                 // Return
