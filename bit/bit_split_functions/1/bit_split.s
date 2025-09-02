// Basic Split Bits Function for ARM64
// Simple, robust bit range splitter
// Input: X0 = value, X1 = split position
// Output: X0 = lower bits (0 to split-1), X1 = upper bits (split to 63)

.global split_bits
split_bits:
    MOV X2, X1            // Save split position
    MOV X3, #1            // Create base mask
    LSL X3, X3, X1        // Shift by split position (creates 2^split)
    SUB X3, X3, #1        // Subtract 1 (creates mask for lower bits)
    AND X1, X0, X3        // Extract lower bits
    LSR X0, X0, X2        // Shift upper bits to position 0
    RET                   // Return
