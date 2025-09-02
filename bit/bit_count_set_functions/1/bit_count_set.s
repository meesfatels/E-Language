// Basic Count Bits Function for ARM64
// Simple, robust bit counter using optimized bit manipulation
// Input: X0 = value
// Output: X0 = number of set bits

.global bit_count_set
bit_count_set:
    MOV X1, X0          // Copy value to X1
    MOV X0, #0          // Initialize counter to 0
count_loop:
    CBZ X1, count_done  // If X1 is zero, we're done
    SUB X2, X1, #1      // X2 = X1 - 1
    AND X1, X1, X2      // X1 = X1 & (X1 - 1) (clears lowest set bit)
    ADD X0, X0, #1      // Increment counter
    B count_loop        // Continue loop
count_done:
    RET                 // Return count
