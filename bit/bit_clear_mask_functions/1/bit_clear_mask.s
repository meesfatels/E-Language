// Basic Clear Mask Function for ARM64
// Simple, robust mask clearer
// Input: X0 = value, X1 = mask
// Output: X0 = value with masked bits cleared

.global clear_mask
clear_mask:
    BIC X0, X0, X1      // Clear bits where mask is set
    RET                 // Return
