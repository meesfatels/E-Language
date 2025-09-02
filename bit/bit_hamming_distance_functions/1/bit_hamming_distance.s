// Basic Hamming Distance Function for ARM64
// Calculates the Hamming distance between two 64-bit values.
// The Hamming distance is the number of bit positions at which the corresponding bits are different.
// Input: X0 = first value, X1 = second value
// Output: X0 = the Hamming distance between the two values

.global bit_hamming_distance
bit_hamming_distance:
    // The algorithm is popcount(value1 ^ value2).
    // 1. XOR the two values. The result has a '1' at every bit position where the inputs differed.
    EOR X0, X0, X1

    // 2. Call our existing bit_popcount function to count the number of set bits.
    // The result of the XOR is already in X0, which is the expected input for bit_popcount.
    // The BL (Branch with Link) instruction will jump to bit_popcount, execute it,
    // and return here with the result in X0.
    BL bit_popcount

    // 3. The result from bit_popcount is the Hamming distance, and it's already in X0.
    RET                 // Return the result
