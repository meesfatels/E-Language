// Basic Binary to Gray Code Conversion Function for ARM64
// Converts a standard binary integer to its Gray code equivalent.
// Gray codes are useful in preventing data errors, as only one bit changes for each increment.
// Input: X0 = binary_value
// Output: X0 = gray_code_value

.global bit_binary_to_gray
bit_binary_to_gray:
    // The conversion formula is: gray = binary ^ (binary >> 1)
    // 1. Shift the binary value right by one bit.
    LSR X1, X0, #1      // X1 = X0 >> 1
    // 2. XOR the original binary value with the shifted value.
    EOR X0, X0, X1      // X0 = X0 ^ X1
    RET                 // Return the Gray code result
