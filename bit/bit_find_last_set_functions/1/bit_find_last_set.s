// Basic Find Last Set Function for ARM64
// Simple, robust last set bit finder (leftmost set bit)
// Input: X0 = value
// Output: X0 = position of last set bit (0-63), or 64 if no bits set

.global bit_find_last_set
bit_find_last_set:
    CBZ X0, no_bits_set  // If value is zero, no bits are set
    CLZ X0, X0          // Count leading zeros
    MOV X1, #63         // Get maximum bit position
    SUB X0, X1, X0      // Calculate last set bit position
    RET                 // Return
no_bits_set:
    MOV X0, #64         // Return 64 if no bits set
    RET                 // Return
