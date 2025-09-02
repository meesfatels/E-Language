// Basic Bit Scan Forward Function for ARM64
// Simple, robust bit scanner using optimized bit manipulation
// Input: X0 = 64-bit value to scan
// Output: X0 = position of first set bit (0-63), or -1 if no bits set

.global bit_scan_forward
bit_scan_forward:
    CBZ X0, no_bits_set         // Branch if X0 is zero
    MOV X1, X0                  // Copy value to X1
    MOV X0, #0                  // Initialize position counter
scan_loop:
    TST X1, #1                  // Test least significant bit
    B.NE scan_done              // If bit is set, we found it
    LSR X1, X1, #1              // Shift right by 1
    ADD X0, X0, #1              // Increment position
    B scan_loop                 // Continue loop
scan_done:
    RET                         // Return position
no_bits_set:
    MOV X0, #-1                 // Return -1 for no bits set
    RET                         // Return -1
