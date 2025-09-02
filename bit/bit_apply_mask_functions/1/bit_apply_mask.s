// Basic Apply Mask Function for ARM64
// Simple, robust mask applier
// Input: X0 = value, X1 = mask
// Output: X0 = value with mask applied (AND operation)

.global apply_mask
apply_mask:
    AND X0, X0, X1      // Apply mask (AND operation)
    RET                 // Return
