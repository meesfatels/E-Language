// Basic Find First Set Function for ARM64
// Simple, robust first set bit finder (rightmost set bit)
// Input: X0 = value
// Output: X0 = position of first set bit (0-63), or 64 if no bits set

.global bit_find_first_set
bit_find_first_set:
    CBZ X0, no_bits_set  // If value is zero, no bits are set
    MOV X1, X0          // Copy value to X1
    SUB X1, X1, #1      // X1 = X0 - 1
    EOR X1, X0, X1      // X1 = X0 ^ (X0 - 1) (isolates rightmost set bit)
    CLZ X1, X1          // Count leading zeros in isolated bit
    MOV X0, #63         // Get maximum bit position
    SUB X0, X0, X1      // Calculate first set bit position
    RET                 // Return
no_bits_set:
    MOV X0, #64         // Return 64 if no bits set
    RET                 // Return
