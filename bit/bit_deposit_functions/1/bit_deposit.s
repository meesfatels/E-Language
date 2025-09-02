// Basic Bit Deposit Function for ARM64
// Scatters bits from a source value into a destination according to a mask.
// This is a software emulation of the x86 PDEP (Parallel Bit Deposit) instruction.
// Input: X0 = source value, X1 = mask
// Output: X0 = value with bits from source deposited into mask positions

.global bit_deposit
bit_deposit:
    // This is a correct, but not highly optimized, loop-based implementation.
    // It iterates through the mask, depositing one bit at a time.
    MOV X2, #0              // X2 = result, initialized to 0
    MOV X3, X1              // X3 = temporary copy of the mask
    MOV X4, X0              // X4 = temporary copy of the source

deposit_loop:
    // If the mask is zero, all bits have been processed.
    CBZ X3, deposit_done

    // Isolate the least significant (rightmost) set bit of the mask.
    NEG X5, X3
    AND X5, X3, X5          // X5 = lsb_mask = mask & -mask

    // Check if the current lowest bit of the source is 1.
    TST X4, #1
    // If the source bit is 0, we don't need to do anything, just advance.
    B.EQ advance_loop

    // If the source bit is 1, deposit it by ORing the lsb_mask into the result.
    ORR X2, X2, X5          // result |= lsb_mask

advance_loop:
    // Clear the lowest set bit from the mask to move to the next bit.
    SUB X6, X3, #1
    AND X3, X3, X6          // mask &= (mask - 1)

    // Consume the lowest bit of the source by shifting right.
    LSR X4, X4, #1

    B deposit_loop

deposit_done:
    MOV X0, X2              // Move the final result to the output register
    RET                     // Return
