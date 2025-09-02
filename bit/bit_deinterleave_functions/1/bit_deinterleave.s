// Basic Deinterleave Bits Function for ARM64
// Deinterleaves the bits from one 64-bit value into two 32-bit values.
// This is also known as an "un-shuffle" or "un-morton" operation.
// Input: X0 = interleaved 64-bit value
// Output: X0 = first value (even bits), X1 = second value (odd bits)

.global bit_deinterleave
bit_deinterleave:
    // This implementation uses a parallel bit-shuffling algorithm (a "perfect unshuffle").
    // It repeatedly spreads the bits apart using masks and shifts.

    // Define masks for deinterleaving
    MOV X2, #0x5555555555555555 // Mask for odd bits
    MOV X3, #0x3333333333333333 // Mask for pairs of bits
    MOV X4, #0x0F0F0F0F0F0F0F0F // Mask for nibbles
    MOV X5, #0x00FF00FF00FF00FF // Mask for bytes
    MOV X6, #0x0000FFFF0000FFFF // Mask for 16-bit words

    // Separate odd and even bits
    AND X1, X0, X2             // X1 = odd bits
    LSR X0, X0, #1
    AND X0, X0, X2             // X0 = even bits

    // Deinterleave pairs of bits
    AND X2, X1, X3
    LSR X1, X1, #2
    AND X1, X1, X3
    ORR X1, X1, X2
    AND X2, X0, X3
    LSR X0, X0, #2
    AND X0, X0, X3
    ORR X0, X0, X2

    // Deinterleave nibbles
    AND X2, X1, X4
    LSR X1, X1, #4
    AND X1, X1, X4
    ORR X1, X1, X2
    AND X2, X0, X4
    LSR X0, X0, #4
    AND X0, X0, X4
    ORR X0, X0, X2

    // Deinterleave bytes
    AND X2, X1, X5
    LSR X1, X1, #8
    AND X1, X1, X5
    ORR X1, X1, X2
    AND X2, X0, X5
    LSR X0, X0, #8
    AND X0, X0, X5
    ORR X0, X0, X2

    // Deinterleave 16-bit words
    AND X2, X1, X6
    LSR X1, X1, #16
    AND X1, X1, X6
    ORR X1, X1, X2
    AND X2, X0, X6
    LSR X0, X0, #16
    AND X0, X0, X6
    ORR X0, X0, X2

    // Final result: X0 contains the first (even) 32-bit value, X1 contains the second (odd) 32-bit value.
    RET                   // Return
