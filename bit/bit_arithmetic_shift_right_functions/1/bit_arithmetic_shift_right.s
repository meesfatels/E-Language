// Basic Arithmetic Shift Right Function for ARM64
// Performs an arithmetic right shift, preserving the sign bit of the value.
// This is essential for signed integer arithmetic, equivalent to division by a power of two.
// Input: X0 = value, X1 = shift amount
// Output: X0 = value arithmetically shifted right by X1 bits

.global bit_arithmetic_shift_right
bit_arithmetic_shift_right:
    // ASR (Arithmetic Shift Right) is a standard ARM64 instruction.
    // It shifts the bits to the right and fills the vacated upper bits
    // with copies of the original most significant bit (the sign bit).
    ASR X0, X0, X1      // Perform arithmetic shift right
    RET                 // Return the result
