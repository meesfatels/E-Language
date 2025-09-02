// Basic Interleave Bits Function for ARM64
// Interleaves the bits from two 32-bit values into one 64-bit value.
// This is also known as a "shuffle" or "Morton coding" operation.
// Input: X0 = first 32-bit value, X1 = second 32-bit value
// Output: X0 = interleaved 64-bit value

.global bit_interleave
bit_interleave:
    // This implementation uses a parallel bit-shuffling algorithm.
    // It spreads the bits of each input value apart and then merges them.

    // Move inputs to temporary registers to work on them.
    MOV X2, X0 // first value
    MOV X3, X1 // second value

    // Spread bits of the first value (X2) into the even bit positions
    MOV X4, #0x0000FFFF0000FFFF
    LSL X5, X2, #16
    ORR X2, X2, X5
    AND X2, X2, X4

    MOV X4, #0x00FF00FF00FF00FF
    LSL X5, X2, #8
    ORR X2, X2, X5
    AND X2, X2, X4

    MOV X4, #0x0F0F0F0F0F0F0F0F
    LSL X5, X2, #4
    ORR X2, X2, X5
    AND X2, X2, X4

    MOV X4, #0x3333333333333333
    LSL X5, X2, #2
    ORR X2, X2, X5
    AND X2, X2, X4

    MOV X4, #0x5555555555555555
    LSL X5, X2, #1
    ORR X2, X2, X5
    AND X2, X2, X4

    // Spread bits of the second value (X3) into the even bit positions
    MOV X4, #0x0000FFFF0000FFFF
    LSL X5, X3, #16
    ORR X3, X3, X5
    AND X3, X3, X4

    MOV X4, #0x00FF00FF00FF00FF
    LSL X5, X3, #8
    ORR X3, X3, X5
    AND X3, X3, X4

    MOV X4, #0x0F0F0F0F0F0F0F0F
    LSL X5, X3, #4
    ORR X3, X3, X5
    AND X3, X3, X4

    MOV X4, #0x3333333333333333
    LSL X5, X3, #2
    ORR X3, X3, X5
    AND X3, X3, X4

    MOV X4, #0x5555555555555555
    LSL X5, X3, #1
    ORR X3, X3, X5
    AND X3, X3, X4

    // Combine the two spread values
    LSL X3, X3, #1        // Shift the second value to the odd bit positions
    ORR X0, X2, X3        // Merge them together
    RET                   // Return
