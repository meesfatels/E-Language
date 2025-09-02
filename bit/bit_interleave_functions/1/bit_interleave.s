// Basic Interleave Bits Function for ARM64
// Simple, robust bit interleaver
// Input: X0 = first value, X1 = second value
// Output: X0 = interleaved bits (alternating from first and second values)

.global interleave_bits
interleave_bits:
    MOV X2, #0            // Initialize result
    MOV X3, #0            // Initialize bit counter
    MOV X4, #1            // Create bit mask
interleave_loop:
    CMP X3, #32           // Check if we've processed half the bits
    B.GE interleave_done  // If done, exit loop
    
    AND X5, X0, X4        // Extract bit from first value
    LSL X5, X5, X3        // Shift to interleaved position
    ORR X2, X2, X5        // Add to result
    
    LSL X4, X4, #1        // Shift mask for second value bit
    AND X5, X1, X4        // Extract bit from second value
    ADD X3, X3, #1        // Increment counter
    LSL X5, X5, X3        // Shift to interleaved position
    ORR X2, X2, X5        // Add to result
    
    ADD X3, X3, #1        // Increment counter
    LSL X4, X4, #1        // Shift mask for next pair
    B interleave_loop     // Continue loop
interleave_done:
    MOV X0, X2            // Move result to X0
    RET                   // Return
