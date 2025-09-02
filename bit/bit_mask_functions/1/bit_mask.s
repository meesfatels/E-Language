// Basic Mask Bits Function for ARM64
// Simple, robust bit range masker
// Input: X0 = value, X1 = start position, X2 = count
// Output: X0 = value with bits masked in specified range

.global mask_bits
mask_bits:
    MOV X3, #1            // Create base mask
    LSL X3, X3, X2        // Shift by count (creates 2^count)
    SUB X3, X3, #1        // Subtract 1 (creates mask with count bits)
    LSL X3, X3, X1        // Shift to start position
    AND X0, X0, X3        // Apply mask to value
    RET                   // Return
