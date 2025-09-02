// Basic Reverse Bits Function for ARM64
// Simple, robust bit reverser using optimized bit manipulation
// Input: X0 = value
// Output: X0 = value with bits reversed

.global bit_reverse
bit_reverse:
    MOV X1, X0          // Copy value to X1
    MOV X0, #0          // Initialize result to 0
    MOV X2, #64         // Set bit counter to 64
reverse_loop:
    CBZ X2, reverse_done // If counter is zero, we're done
    LSR X3, X1, #1      // Shift X1 right by 1
    AND X4, X1, #1      // Get least significant bit
    LSL X0, X0, #1      // Shift result left by 1
    ORR X0, X0, X4      // Set least significant bit of result
    MOV X1, X3          // Update X1
    SUB X2, X2, #1      // Decrement counter
    B reverse_loop      // Continue loop
reverse_done:
    RET                 // Return reversed value
