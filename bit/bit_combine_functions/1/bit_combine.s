// Basic Combine Bits Function for ARM64
// Simple, robust bit combiner
// Input: X0 = lower bits, X1 = upper bits, X2 = split position
// Output: X0 = combined value (lower bits + upper bits shifted)

.global bit_combine
bit_combine:
    LSL X1, X1, X2        // Shift upper bits to split position
    ORR X0, X0, X1        // Combine lower and upper bits
    RET                   // Return
