// Basic Bit Propagate Rightmost Set Function for ARM64
// Propagates the rightmost set bit to all lower bits.
// This is useful for creating contiguous bitmasks.
// Input: X0 = value
// Output: X0 = value with rightmost set bit propagated to the right

.global bit_propagate_rightmost_set
bit_propagate_rightmost_set:
    // The operation is equivalent to the formula: x | (x - 1)
    // 1. Subtract 1 from the value. This flips the lowest set bit to 0 and all lower bits to 1.
    SUB X1, X0, #1      // X1 = X0 - 1
    // 2. OR the original value with the result. This combines the original higher bits with the new lower bits.
    ORR X0, X0, X1      // X0 = X0 | X1
    RET                 // Return the result
