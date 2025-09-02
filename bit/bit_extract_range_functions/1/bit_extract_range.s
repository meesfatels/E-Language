// Basic Extract Bits Function for ARM64
// Simple, robust bit range extractor
// Input: X0 = value, X1 = start position, X2 = count
// Output: X0 = extracted bits shifted to position 0

.global bit_extract_range
bit_extract_range:
    LSR X0, X0, X1        // Shift right to start position
    MOV X3, #1            // Create base mask
    LSL X3, X3, X2        // Shift by count (creates 2^count)
    SUB X3, X3, #1        // Subtract 1 (creates mask with count bits)
    AND X0, X0, X3        // Apply mask to extract bits
    RET                   // Return
