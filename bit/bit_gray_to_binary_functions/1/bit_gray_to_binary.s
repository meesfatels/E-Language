// Basic Gray Code to Binary Conversion Function for ARM64
// Converts a Gray code integer back to its standard binary equivalent.
// This uses an efficient, parallel prefix XOR sum algorithm.
// Input: X0 = gray_code_value
// Output: X0 = binary_value

.global bit_gray_to_binary
bit_gray_to_binary:
    // To convert back, we XOR the gray code with itself shifted right repeatedly.
    // This effectively performs a parallel prefix XOR sum, undoing the Gray code encoding.
    LSR X1, X0, #32
    EOR X0, X0, X1      // binary ^= binary >> 32
    LSR X1, X0, #16
    EOR X0, X0, X1      // binary ^= binary >> 16
    LSR X1, X0, #8
    EOR X0, X0, X1      // binary ^= binary >> 8
    LSR X1, X0, #4
    EOR X0, X0, X1      // binary ^= binary >> 4
    LSR X1, X0, #2
    EOR X0, X0, X1      // binary ^= binary >> 2
    LSR X1, X0, #1
    EOR X0, X0, X1      // binary ^= binary >> 1
    RET                 // Return the binary result
