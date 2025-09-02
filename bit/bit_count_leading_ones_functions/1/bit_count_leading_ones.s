// Basic Count Leading Ones Function for ARM64
// Counts the number of contiguous set (1) bits from the most significant bit (MSB).
// Input: X0 = value
// Output: X0 = number of leading ones

.global bit_count_leading_ones
bit_count_leading_ones:
    // The most efficient algorithm is to invert the bits and then count the leading zeros.
    // 1. Invert all bits of the value. Leading ones become leading zeros.
    MVN X0, X0          // X0 = ~X0

    // 2. Call our existing bit_count_leading_zeros function.
    // The inverted value is already in X0, which is the expected input for the function.
    // The BL (Branch with Link) instruction will jump, execute, and return here.
    BL bit_count_leading_zeros

    // 3. The result from bit_count_leading_zeros is the number of leading ones,
    // and it's already in the correct output register X0.
    RET                 // Return the result
