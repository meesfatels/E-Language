// Basic Bit Clear Lowest Set Function for ARM64
// Simple, robust bit clearer using classic bit manipulation trick
// Input: X0 = 64-bit value
// Output: X0 = value with lowest set bit cleared

.global bit_clear_lowest_set
bit_clear_lowest_set:
    SUB X1, X0, #1      // X1 = X0 - 1 (create mask)
    AND X0, X0, X1      // X0 = X0 & (X0 - 1) (clear lowest set bit)
    RET                 // Return modified value
