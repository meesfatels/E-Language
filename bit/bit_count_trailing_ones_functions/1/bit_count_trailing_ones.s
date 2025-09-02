// Basic Count Trailing Ones Function for ARM64
// Counts the number of contiguous set (1) bits from the least significant bit (LSB).
// Input: X0 = value
// Output: X0 = number of trailing ones

.global bit_count_trailing_ones
bit_count_trailing_ones:
    // The most efficient algorithm is to invert the bits and then find the index
    // of the first set bit (which is equivalent to counting trailing zeros).
    // 1. Invert all bits of the value. Trailing ones become trailing zeros.
    MVN X0, X0          // X0 = ~X0

    // 2. Call our existing bit_find_first_set function.
    // The number of trailing zeros in the inverted value is exactly the index
    // of the first '1' bit. Our function returns this index.
    // The BL instruction will jump, execute, and return here.
    BL bit_find_first_set

    // 3. The result from bit_find_first_set is the number of trailing ones,
    // and it's already in the correct output register X0.
    // Note: bit_find_first_set returns 64 if no bits are set (i.e., input was all 1s).
    // This is the correct behavior, as there are 64 trailing ones.
    RET                 // Return the result
