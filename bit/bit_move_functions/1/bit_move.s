// Basic Move Bits Function for ARM64
// Moves a range of bits from a source to a destination position, clearing the source bits.
// Input: X0 = value, X1 = source position, X2 = destination position, X3 = count
// Output: X0 = value with bits moved from source to destination

.global bit_move
bit_move:
    // 1. Create a base mask with 'count' (X3) bits set.
    MOV X4, #1            // Start with 1
    LSL X4, X4, X3        // Becomes 2^count
    SUB X4, X4, #1        // Becomes a mask of 'count' ones (e.g., 0b111)

    // 2. Calculate the source mask and extract the bits.
    LSL X5, X4, X1        // X5 = source mask (base mask << source pos)
    AND X6, X0, X5        // X6 = extracted bits at source position

    // 3. Clear the source bits from the original value.
    BIC X0, X0, X5        // Clear source bits using the source mask

    // 4. Calculate the destination mask and clear the destination area.
    LSL X5, X4, X2        // X5 = destination mask (base mask << dest pos)
    BIC X0, X0, X5        // Clear the destination bits

    // 5. Shift the extracted bits to the destination position and merge them.
    LSR X6, X6, X1        // Shift extracted bits down to LSB
    LSL X6, X6, X2        // Shift extracted bits up to destination position
    ORR X0, X0, X6        // Merge the bits into the value
    RET                   // Return
