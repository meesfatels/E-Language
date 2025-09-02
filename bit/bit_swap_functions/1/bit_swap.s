// Basic Swap Bits Function for ARM64
// Simple, robust bit swapper
// Input: X0 = value, X1 = first bit position, X2 = second bit position
// Output: X0 = value with bits at X1 and X2 swapped

.global swap_bits
swap_bits:
    MOV X3, #1          // Create bit mask
    LSL X4, X3, X1      // Create mask for first bit position
    LSL X5, X3, X2      // Create mask for second bit position
    
    AND X6, X0, X4      // Extract first bit
    AND X7, X0, X5      // Extract second bit
    
    BIC X0, X0, X4      // Clear first bit
    BIC X0, X0, X5      // Clear second bit
    
    LSR X6, X6, X1      // Shift first bit to position 0
    LSR X7, X7, X2      // Shift second bit to position 0
    
    LSL X6, X6, X2      // Shift first bit to second position
    LSL X7, X7, X1      // Shift second bit to first position
    
    ORR X0, X0, X6      // Set first bit in second position
    ORR X0, X0, X7      // Set second bit in first position
    
    RET                 // Return
