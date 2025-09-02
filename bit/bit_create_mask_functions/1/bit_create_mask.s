// Basic Create Mask Function for ARM64
// Simple, robust mask creator
// Input: X0 = number of bits to set (0-64)
// Output: X0 = bit mask with X0 bits set from the right

.global bit_create_mask
bit_create_mask:
    CBZ X0, mask_done     // If count is zero, mask is zero
    MOV X1, #1            // Start with bit 0 set
    LSL X1, X1, X0        // Shift left by count (creates 2^count)
    SUB X1, X1, #1        // Subtract 1 (creates mask with count bits set)
    MOV X0, X1            // Move result to X0
mask_done:
    RET                   // Return
