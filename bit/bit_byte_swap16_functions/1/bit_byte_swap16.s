// Basic 16-bit Byte Swap Function for ARM64
// Reverses the byte order within each 16-bit half-word of a 64-bit register.
// This is critical for converting between big-endian and little-endian data formats.
// Input: X0 = value
// Output: X0 = value with byte order reversed within each 16-bit half-word

.global bit_byte_swap16
bit_byte_swap16:
    // REV16 is a standard ARM64 instruction that performs a byte-swap on
    // each 16-bit element of a vector register. When used with a 64-bit
    // general-purpose register, it treats it as four 16-bit elements.
    REV16 X0, X0        // Reverse bytes in each 16-bit half-word
    RET                 // Return the result
