// Basic Compare Bits Function for ARM64
// Simple, robust bit range comparer
// Input: X0 = first value, X1 = second value, X2 = start position, X3 = count
// Output: X0 = 1 if bit ranges are equal, 0 if different

.global compare_bits
compare_bits:
    MOV X4, #1            // Create base mask
    LSL X4, X4, X3        // Shift by count (creates 2^count)
    SUB X4, X4, #1        // Subtract 1 (creates mask with count bits)
    LSL X4, X4, X2        // Shift mask to start position
    AND X5, X0, X4        // Extract bits from first value
    AND X6, X1, X4        // Extract bits from second value
    CMP X5, X6            // Compare extracted bits
    CSET X0, EQ           // Set X0 to 1 if equal, 0 if different
    RET                   // Return
