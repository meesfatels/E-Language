// Basic Count Leading Zeros Function for ARM64
// Simple, robust leading zero counter
// Input: X0 = value
// Output: X0 = number of leading zeros

.global bit_count_leading_zeros
bit_count_leading_zeros:
    CLZ X0, X0          // Count leading zeros
    RET                 // Return
