// Basic Merge Bits Function for ARM64
// Simple, robust bit range merger
// Input: X0 = first value, X1 = second value, X2 = position in first value
// Output: X0 = first value with second value merged at position

.global merge_bits
merge_bits:
    LSL X1, X1, X2        // Shift second value to position
    ORR X0, X0, X1        // Merge second value into first value
    RET                   // Return
