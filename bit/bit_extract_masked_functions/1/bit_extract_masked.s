// Basic Masked Bit Extract Function for ARM64
// Gathers bits from a source value according to a mask and compacts them to the LSB.
// This is a software emulation of the x86 PEXT (Parallel Bit Extract) instruction.
// Input: X0 = source value, X1 = mask
// Output: X0 = extracted and compacted bits

.global bit_extract_masked
bit_extract_masked:
    // This is a correct, but not highly optimized, loop-based implementation.
    // It iterates through the mask, gathering one bit at a time.
    MOV X2, #0              // X2 = result, initialized to 0
    MOV X3, X1              // X3 = temporary copy of the mask
    MOV X4, #0              // X4 = bit counter for the result

extract_loop:
    // If the mask is zero, all bits have been processed.
    CBZ X3, extract_done

    // Isolate the least significant (rightmost) set bit of the mask.
    NEG X5, X3
    AND X5, X3, X5          // X5 = lsb_mask = mask & -mask

    // Check if the bit at the lsb_mask position is set in the source value.
    TST X0, X5
    // If the bit is not set, we don't need to do anything, just advance.
    B.EQ advance_extract_loop

    // If the bit is set, we need to set the corresponding bit in the result.
    MOV X6, #1
    LSL X6, X6, X4          // Create a bit at the current result position
    ORR X2, X2, X6          // Set the bit in the result

    // Increment the result bit counter ONLY when a bit is extracted.
    ADD X4, X4, #1

advance_extract_loop:
    // Clear the lowest set bit from the mask to move to the next bit.
    SUB X6, X3, #1
    AND X3, X3, X6          // mask &= (mask - 1)

    B extract_loop

extract_done:
    MOV X0, X2              // Move the final result to the output register
    RET                     // Return
