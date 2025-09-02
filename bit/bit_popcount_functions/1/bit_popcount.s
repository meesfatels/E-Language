// Basic Population Count Function for ARM64
// Simple, robust bit counter using optimized bit manipulation
// Input: X0 = 64-bit value to count
// Output: X0 = number of set bits (0-64)

.global bit_popcount
bit_popcount:
    MOV X1, X0          // Copy value to X1
    MOV X0, #0          // Initialize counter to 0
popcount_loop:
    CBZ X1, popcount_done // If X1 is zero, we're done
    SUB X2, X1, #1      // X2 = X1 - 1
    AND X1, X1, X2      // X1 = X1 & (X1 - 1) (clears lowest set bit)
    ADD X0, X0, #1      // Increment counter
    B popcount_loop     // Continue loop
popcount_done:
    RET                 // Return count
