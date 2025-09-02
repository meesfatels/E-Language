// Basic Move Bits Function for ARM64
// Simple, robust bit range mover
// Input: X0 = value, X1 = source position, X2 = destination position, X3 = count
// Output: X0 = value with bits moved from source to destination

.global move_bits
move_bits:
    MOV X4, #1            // Create base mask
    LSL X4, X4, X3        // Shift by count (creates 2^count)
    SUB X4, X4, #1        // Subtract 1 (creates mask with count bits)
    LSL X4, X4, X1        // Shift mask to source position
    AND X5, X0, X4        // Extract bits from source position
    LSR X5, X5, X1        // Shift extracted bits to position 0
    LSL X5, X5, X2        // Shift bits to destination position
    LSL X4, X4, X2        // Shift mask to destination position
    BIC X0, X0, X4        // Clear destination bits
    ORR X0, X0, X5        // Move bits to destination
    LSL X4, X4, X1        // Shift mask back to source position
    BIC X0, X0, X4        // Clear source bits
    RET                   // Return
