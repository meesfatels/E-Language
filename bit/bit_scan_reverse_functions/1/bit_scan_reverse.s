// Basic Bit Scan Reverse Function for ARM64
// Simple, robust bit scanner using optimized bit manipulation
// Input: X0 = 64-bit value to scan
// Output: X0 = position of last set bit (0-63), or -1 if no bits set

.global bit_scan_reverse
bit_scan_reverse:
    CBZ X0, no_bits_set         // Branch if X0 is zero
    MOV X1, X0                  // Copy value to X1
    MOV X0, #63                 // Initialize position counter to 63
reverse_scan_loop:
    TST X1, #0x8000000000000000 // Test most significant bit
    B.NE reverse_scan_done      // If bit is set, we found it
    LSL X1, X1, #1             // Shift left by 1
    SUB X0, X0, #1             // Decrement position
    B reverse_scan_loop         // Continue loop
reverse_scan_done:
    RET                         // Return position
no_bits_set:
    MOV X0, #-1                 // Return -1 for no bits set
    RET                         // Return -1
