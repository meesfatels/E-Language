// Basic Test Bit Function for ARM64
// Simple, robust bit tester using ARM64 TST + CSET instructions
// Input: X0 = value, X1 = bit mask
// Output: X0 = 1 if bit is set, 0 if bit is clear

.global bit_test
bit_test:
    TST X0, X1          // Test bit(s) using ARM64 hardware instruction
    CSET X0, NE         // Set X0 to 1 if not equal (bit was set)
    RET                 // Return
