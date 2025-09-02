// Basic Bitmask From-To Function for ARM64
// Creates a mask of set bits from a starting index to an ending index, inclusive.
// Input: X0 = from_index (0-63), X1 = to_index (0-63)
// Output: X0 = a 64-bit mask with bits set from 'from' to 'to'

.global bit_mask_from_to
bit_mask_from_to:
    // This algorithm works by creating two masks:
    // 1. A mask with all bits >= from_index set.
    // 2. A mask with all bits <= to_index set.
    // The final result is the AND of these two masks.

    // Handle the edge case where from > to, which should result in an empty mask.
    CMP X0, X1
    B.GT empty_mask

    // Create a mask of all 1s.
    MOV X2, #-1             // X2 = 0xFFFFFFFFFFFFFFFF

    // 1. Create the 'greater than or equal to from_index' mask.
    // We shift the all-ones mask left by from_index.
    LSL X3, X2, X0          // X3 = mask_ge_from

    // 2. Create the 'less than or equal to to_index' mask.
    // We shift the all-ones mask left by to_index, then shift one more
    // to clear the bit at to_index, and then invert the whole thing.
    ADD X4, X1, #1          // to_index + 1
    // Handle edge case for to_index = 63, where to_index + 1 = 64.
    // A shift by 64 is a no-op, so we handle it manually.
    CMP X4, #64
    B.EQ all_set_mask       // If shift is 64, the mask is all ones.

    LSL X4, X2, X4          // Shift left by (to_index + 1)
    MVN X4, X4              // Invert the bits to get the mask_le_to
    B continue_mask

all_set_mask:
    MOV X4, X2              // Mask is all ones.

continue_mask:
    // 3. AND the two masks together to get the final result.
    AND X0, X3, X4
    RET

empty_mask:
    MOV X0, #0              // If from > to, return a zero mask.
    RET
