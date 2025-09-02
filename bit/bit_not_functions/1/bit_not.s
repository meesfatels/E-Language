// Basic Bitwise NOT Function for ARM64
// Simple, robust bitwise complement using ARM64 MVN instruction
// Input: X0 = value
// Output: X0 = bitwise NOT of value

.global bit_not
bit_not:
    MVN X0, X0          // X0 = ~X0 (bitwise NOT)
    RET                 // Return
