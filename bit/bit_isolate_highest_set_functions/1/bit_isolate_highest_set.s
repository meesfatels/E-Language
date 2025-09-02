// Basic Bit Isolate Highest Set Function for ARM64
// Isolates the most significant (leftmost) set bit of a value.
// Useful for creating masks and working with the highest priority bit.
// Input: X0 = value
// Output: X0 = value with only the highest set bit isolated

.global bit_isolate_highest_set
bit_isolate_highest_set:
    // Handle edge case where input is 0. If so, the result is 0.
    CBZ X0, done        // If X0 is zero, branch to the end
    // 1. Count the number of leading zeros. This tells us how far the MSB is from the left.
    CLZ X1, X0          // X1 = number of leading zeros in X0
    // 2. Calculate the position of the highest set bit from the right (0-indexed).
    MOV X2, #63
    SUB X1, X2, X1      // X1 = 63 - (leading zeros) = index of MSB
    // 3. Create a value with a single bit set at the MSB position.
    MOV X2, #1
    LSL X0, X2, X1      // Shift 1 left by the MSB index
done:
    RET                 // Return the result
