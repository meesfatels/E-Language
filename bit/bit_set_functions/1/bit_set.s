// Basic Bit Setter Function for ARM64
// Simple, robust bit setter using ARM64 ORR instruction
// Input: X0 = value, X1 = bit mask
// Output: X0 = value with bit set

.global bit_set
bit_set:
    ORR X0, X0, X1      // Set bit(s) using ARM64 hardware instruction
    RET                 // Return
