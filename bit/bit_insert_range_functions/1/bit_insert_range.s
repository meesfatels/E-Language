// Basic Insert Bits Function for ARM64
// Simple, robust bit range inserter
// Input: X0 = value, X1 = bits to insert, X2 = start position, X3 = count
// Output: X0 = value with bits inserted at specified position

.global bit_insert_range
bit_insert_range:
    MOV X4, #1            // Create base mask
    LSL X4, X4, X3        // Shift by count (creates 2^count)
    SUB X4, X4, #1        // Subtract 1 (creates mask with count bits)
    AND X1, X1, X4        // Mask input bits to count
    LSL X1, X1, X2        // Shift bits to start position
    LSL X4, X4, X2        // Shift mask to start position
    BIC X0, X0, X4        // Clear target bits in value
    ORR X0, X0, X1        // Insert new bits
    RET                   // Return
