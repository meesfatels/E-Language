// Basic Bit Isolate Lowest Set Function for ARM64
// Isolates the least significant (rightmost) set bit of a value.
// This is a common and efficient bit manipulation trick.
// Input: X0 = value
// Output: X0 = value with only the lowest set bit isolated

.global bit_isolate_lowest_set
bit_isolate_lowest_set:
    // The operation is equivalent to the formula: x & (-x)
    // 1. Negate the value (two's complement). This flips all bits to the left of the lowest set bit.
    NEG X1, X0          // X1 = -X0
    // 2. AND the original value with its negation. This clears all bits other than the lowest set bit.
    AND X0, X0, X1      // X0 = X0 & X1
    RET                 // Return the result
