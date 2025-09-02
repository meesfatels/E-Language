// Basic Nth Set Bit Selection Function for ARM64
// Finds the index of the Nth set (1) bit in a value.
// Input: X0 = value, X1 = n (the rank of the set bit to find, 1-indexed)
// Output: X0 = the index (0-63) of the Nth set bit, or -1 if not found

.global bit_select_nth_set
bit_select_nth_set:
    // This is a correct, but not highly optimized, loop-based implementation.
    // It finds the lowest set bit and clears it, N times.
    MOV X2, X0              // X2 = temporary copy of the value
    MOV X3, X1              // X3 = n (counter)
    MOV X4, #-1             // X4 = last found index, initialized to -1

    // If n is 0, it's an invalid input, return -1.
    CBZ X3, not_found

select_loop:
    // If the value is zero, we've run out of bits to check.
    CBZ X2, not_found

    // Isolate the least significant (rightmost) set bit.
    NEG X5, X2
    AND X5, X2, X5          // X5 = lsb_mask = value & -value

    // Find the index of this isolated bit.
    // The index is the number of trailing zeros of the isolated bit.
    // We can get this by reversing the bits and counting leading zeros.
    RBIT X6, X5             // Reverse bits
    CLZ X4, X6              // Count leading zeros to get the index

    // Clear the lowest set bit from the value to move to the next one.
    SUB X5, X2, #1
    AND X2, X2, X5          // value &= (value - 1)

    // Decrement our counter, n.
    SUB X3, X3, #1
    // If we've found the Nth bit (counter is now 0), we are done.
    CBZ X3, found

    // Otherwise, loop again to find the next bit.
    B select_loop

not_found:
    MOV X0, #-1             // Set return value to -1
    RET

found:
    MOV X0, X4              // Move the found index to the output register
    RET
