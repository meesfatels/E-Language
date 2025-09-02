// Basic Bit Ceiling Power of Two Function for ARM64
// Finds the smallest power of two that is greater than or equal to the input value.
// Handles edge cases such as 0 (returns 1) and inputs that are already a power of two.
// Input: X0 = value
// Output: X0 = the smallest power of two >= value

.global bit_ceil_power_of_two
bit_ceil_power_of_two:
    // If input is 0, the result should be 1.
    CBZ X0, return_one
    // Subtract 1. If the value was a power of two, this turns on all bits below it.
    // If not, it just decrements the value.
    SUB X0, X0, #1      // X0 = X0 - 1

    // Propagate the most significant bit to all lower bits.
    // This turns the number into a mask of all 1s up to the MSB.
    LSR X1, X0, #1
    ORR X0, X0, X1      // x |= x >> 1
    LSR X1, X0, #2
    ORR X0, X0, X1      // x |= x >> 2
    LSR X1, X0, #4
    ORR X0, X0, X1      // x |= x >> 4
    LSR X1, X0, #8
    ORR X0, X0, X1      // x |= x >> 8
    LSR X1, X0, #16
    ORR X0, X0, X1      // x |= x >> 16
    LSR X1, X0, #32
    ORR X0, X0, X1      // x |= x >> 32

    // Add 1 to the result. This rolls the mask of 1s over to the next highest power of two.
    ADD X0, X0, #1
    RET

return_one:
    MOV X0, #1          // Return 1 for input 0
    RET
