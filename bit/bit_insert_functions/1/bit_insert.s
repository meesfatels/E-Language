// Basic Insert Bit Function for ARM64
// Simple, robust bit inserter
// Input: X0 = value, X1 = bit position, X2 = bit value (0 or 1)
// Output: X0 = value with bit inserted at position

.global bit_insert
bit_insert:
    MOV X3, #1          // Create bit mask
    LSL X3, X3, X1      // Shift mask to bit position
    BIC X0, X0, X3      // Clear the bit at position
    CBZ X2, insert_done // If bit value is 0, we're done
    ORR X0, X0, X3      // Set the bit at position
insert_done:
    RET                 // Return
