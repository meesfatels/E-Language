# E (Eidolon) Programming Language

> **⚠️ Early Development Notice**: This project is not close to completion. This repository contains only some of the foundational functions planned for the E language. The current implementation represents the beginning stages of development, focusing on core bit manipulation operations as a foundation for the larger language ecosystem.

## Current State

This repository contains the initial development of the E programming language. The language is currently in very early stages and will not be useful for a long time. What exists now is:

- **Bit manipulation functions**: 40+ ARM64 assembly functions for bit operations
- **ARM64 instruction reference**: Documentation of ARM64 instructions
- **Basic project structure**: Foundation for future language development

## Technical Vision

E is designed to be a programming language that:

- **Maps directly to ARM64**: 1:1 mapping between E syntax and ARM64 assembly
- **Provides bit-level control**: Direct access to individual bit operations
- **Enforces memory safety**: Compiler rules to prevent common memory errors
- **Supports modular extensions**: Language family system (EMA, EUI, EDA, etc.)

## Code Quality

### Current Implementation

The existing code follows these standards:

- **ARM64 Assembly**: All functions written in pure ARM64 assembly
- **Consistent Naming**: Technical function names with `bit_` prefix
- **Documentation**: Each function documented with input/output specifications
- **Optimized Algorithms**: Uses ARM64 hardware instructions where possible

### File Structure

```
/Users/meesfatels/Documents/Proggraming/Eidolon/Languages/Compiled/1/
├── asm_commands/                    # ARM64 Instruction Reference
│   ├── all_instructions.txt        # Complete instruction set documentation
│   ├── arm64_instructions.s        # ARM64 instructions with descriptions
│   ├── ISA_A64_xml_A_profile-2025-06.txt  # Official ARM64 specification
│   ├── README.md                   # Instruction reference guide
│   └── temp_unique_instructions.txt # Unique instruction analysis
├── bit/                            # Bit Manipulation Library
│   ├── bit_and_functions/          # Bitwise AND operations
│   ├── bit_apply_mask_functions/   # Mask application operations
│   ├── bit_clear_functions/        # Bit clearing operations
│   ├── bit_clear_lowest_set_functions/ # Lowest set bit clearing
│   ├── bit_clear_mask_functions/   # Mask clearing operations
│   ├── bit_combine_functions/      # Bit combination operations
│   ├── bit_compare_functions/      # Bit comparison operations
│   ├── bit_copy_functions/         # Bit copying operations
│   ├── bit_count_leading_zeros_functions/ # Leading zero counting
│   ├── bit_count_set_functions/    # Set bit counting
│   ├── bit_count_trailing_zeros_functions/ # Trailing zero counting
│   ├── bit_create_mask_functions/  # Mask creation operations
│   ├── bit_deinterleave_functions/ # Bit deinterleaving
│   ├── bit_extract_functions/      # Single bit extraction
│   ├── bit_extract_range_functions/ # Bit range extraction
│   ├── bit_find_first_set_functions/ # First set bit finding
│   ├── bit_find_last_set_functions/ # Last set bit finding
│   ├── bit_insert_functions/       # Single bit insertion
│   ├── bit_insert_range_functions/ # Bit range insertion
│   ├── bit_interleave_functions/   # Bit interleaving
│   ├── bit_mask_functions/         # Bit masking operations
│   ├── bit_merge_functions/        # Bit merging operations
│   ├── bit_move_functions/         # Bit moving operations
│   ├── bit_not_functions/          # Bitwise NOT operations
│   ├── bit_or_functions/           # Bitwise OR operations
│   ├── bit_parity_functions/       # Parity checking
│   ├── bit_popcount_functions/     # Population counting
│   ├── bit_reverse_functions/      # Bit reversal operations
│   ├── bit_rotate_functions/       # Bit rotation operations
│   ├── bit_scan_forward_functions/ # Forward bit scanning
│   ├── bit_scan_reverse_functions/ # Reverse bit scanning
│   ├── bit_set_functions/          # Bit setting operations
│   ├── bit_shift_functions/        # Bit shifting operations
│   ├── bit_split_functions/        # Bit splitting operations
│   ├── bit_swap_functions/         # Bit swapping operations
│   ├── bit_test_functions/         # Bit testing operations
│   ├── bit_toggle_functions/       # Bit toggling operations
│   └── bit_xor_functions/          # Bitwise XOR operations
└── README.md                       # This file
```

## E Language Overview

### Core E Language

E is planned to be a simple language that:

- **Maps to ARM64**: Direct translation from E syntax to ARM64 assembly
- **Provides bit control**: Access to individual bit operations
- **Enforces memory safety**: Compiler rules to prevent memory errors
- **Runs natively**: No interpreters or virtual machines

### Language Family System

The planned language family includes:

- **EMA (Eidolon Math)**: Mathematics and scientific computing
- **EUI (Eidolon UI)**: User interfaces and graphics
- **EDA (Eidolon Database)**: Database operations
- **EGPU (Eidolon GPU)**: Graphics processing
- **ENET (Eidolon Network)**: Network programming
- **EAI (Eidolon AI)**: Machine learning
- **EBC (Eidolon Blockchain)**: Blockchain development

### Planned Syntax

The language is designed to use C-style includes:

```e
#include <EMA>    // Advanced math functions
#include <EUI>    // User interface features
#include <EDA>    // Database operations
```

## Development Status

**Current State**: Very early development
**Timeline**: Will not be useful for a long time
**Focus**: Building foundational bit manipulation functions
**Next Steps**: Develop compiler and basic language syntax

---

## AI-Assisted Development Disclaimer

**IMPORTANT NOTICE**: This codebase was developed through human-AI collaboration. The project vision, technical direction, architectural decisions, and overall guidance were provided by the human developer. The AI system assisted by writing the ARM64 assembly code, implementing functions according to specifications, and providing technical suggestions and ideas throughout the development process.

All functions, algorithms, naming conventions, and technical decisions were created through this collaborative process, with the human developer steering the overall direction and the AI handling the detailed implementation work.
