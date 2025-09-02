// Basic Count Trailing Zeros Function for ARM64
// Simple, robust trailing zero counter
// Input: X0 = value
// Output: X0 = number of trailing zeros

.global bit_count_trailing_zeros
bit_count_trailing_zeros:
    REV X0, X0          // Reverse byte order
    CLZ X0, X0          // Count leading zeros (now trailing)
    RET                 // Return
