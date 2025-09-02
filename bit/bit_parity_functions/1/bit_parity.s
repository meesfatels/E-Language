// Basic Parity Check Function for ARM64
// Simple, robust parity calculator using optimized bit manipulation
// Input: X0 = 64-bit value to check
// Output: X0 = parity result (0 = even parity, 1 = odd parity)

.global bit_parity
bit_parity:
    MOV X1, X0          // Copy value to X1
    MOV X0, #0          // Initialize parity to 0
parity_loop:
    CBZ X1, parity_done // If X1 is zero, we're done
    SUB X2, X1, #1      // X2 = X1 - 1
    AND X1, X1, X2      // X1 = X1 & (X1 - 1) (clears lowest set bit)
    EOR X0, X0, #1      // Toggle parity
    B parity_loop       // Continue loop
parity_done:
    RET                 // Return parity result
