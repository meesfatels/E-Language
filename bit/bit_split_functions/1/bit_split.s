// Basic Split Bits Function for ARM64
// Splits a 64-bit value into two parts at a given position.
// Input: X0 = value, X1 = split position
// Output: X0 = lower bits (0 to split-1), X1 = upper bits (split to 63)

.global bit_split
bit_split:
    // 1. Save original value and split position.
    MOV X2, X0            // X2 = original value
    MOV X3, X1            // X3 = split position

    // 2. Calculate the mask for the lower bits.
    MOV X4, #1            // Start with 1
    LSL X4, X4, X3        // Becomes 2^split_pos
    SUB X4, X4, #1        // Becomes a mask for the lower bits

    // 3. Extract the lower bits and place them in X0.
    AND X0, X2, X4        // X0 = value & lower_mask

    // 4. Extract the upper bits and place them in X1.
    LSR X1, X2, X3        // X1 = value >> split_pos

    RET                   // Return
