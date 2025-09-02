// Basic 32-bit Byte Swap Function for ARM64
// Reverses the byte order within each 32-bit word of a 64-bit register.
// This is critical for converting between big-endian and little-endian data formats.
// Input: X0 = value
// Output: X0 = value with byte order reversed within each 32-bit word

.global bit_byte_swap32
bit_byte_swap32:
    // REV32 is a standard ARM64 instruction that performs a byte-swap on
    // each 32-bit element of a vector register. When used with a 64-bit
    // general-purpose register, it treats it as two 32-bit elements.
    REV32 X0, X0        // Reverse bytes in each 32-bit word
    RET                 // Return the result
