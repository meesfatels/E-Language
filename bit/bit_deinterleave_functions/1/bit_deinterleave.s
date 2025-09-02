// Basic Deinterleave Bits Function for ARM64
// Simple, robust bit deinterleaver
// Input: X0 = interleaved value
// Output: X0 = first value (even bits), X1 = second value (odd bits)

.global deinterleave_bits
deinterleave_bits:
    MOV X1, #0            // Initialize second value
    MOV X2, #0            // Initialize first value
    MOV X3, #0            // Initialize bit counter
    MOV X4, #1            // Create bit mask
deinterleave_loop:
    CMP X3, #32           // Check if we've processed half the bits
    B.GE deinterleave_done // If done, exit loop
    
    AND X5, X0, X4        // Extract even bit
    ORR X2, X2, X5        // Add to first value
    
    LSL X4, X4, #1        // Shift mask for odd bit
    AND X5, X0, X4        // Extract odd bit
    ORR X1, X1, X5        // Add to second value
    
    ADD X3, X3, #1        // Increment counter
    LSL X4, X4, #1        // Shift mask for next pair
    B deinterleave_loop   // Continue loop
deinterleave_done:
    MOV X0, X2            // Move first value to X0
    RET                   // Return
