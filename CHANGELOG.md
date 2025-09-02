# Changelog

All notable changes to the E (Eidolon) Programming Language project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added
- Initial bit manipulation library with 40+ functions
- ARM64 instruction reference documentation
- Complete project structure and organization
- Technical naming conventions with `bit_` prefix
- Comprehensive documentation for all functions

### Changed
- N/A

### Deprecated
- N/A

### Removed
- N/A

### Fixed
- N/A

### Security
- N/A

## [0.1.0] - 2024-01-XX

### Added
- **Core Bit Manipulation Functions**:
  - `bit_set` - Set specific bits
  - `bit_clear` - Clear specific bits
  - `bit_test` - Test specific bits
  - `bit_toggle` - Toggle specific bits

- **Bitwise Operations**:
  - `bit_not` - Bitwise NOT (complement)
  - `bit_and` - Bitwise AND
  - `bit_or` - Bitwise OR
  - `bit_xor` - Bitwise XOR

- **Bit Counting & Analysis**:
  - `bit_count_set` - Count set bits
  - `bit_popcount` - Population count
  - `bit_parity` - Parity check
  - `bit_count_leading_zeros` - Count leading zeros
  - `bit_count_trailing_zeros` - Count trailing zeros

- **Bit Shifting & Rotation**:
  - `bit_shift_left` - Logical left shift
  - `bit_shift_right` - Logical right shift
  - `bit_rotate_left` - Rotate left
  - `bit_rotate_right` - Rotate right

- **Advanced Bit Operations**:
  - `bit_reverse` - Reverse bit order
  - `bit_extract` - Extract single bit
  - `bit_extract_range` - Extract bit range
  - `bit_insert` - Insert single bit
  - `bit_insert_range` - Insert bit range
  - `bit_move` - Move bit range
  - `bit_copy` - Copy bit range
  - `bit_swap` - Swap two bits
  - `bit_mask` - Apply bit mask
  - `bit_apply_mask` - Apply mask operation
  - `bit_clear_mask` - Clear mask operation
  - `bit_create_mask` - Create bit mask
  - `bit_combine` - Combine bit values
  - `bit_compare` - Compare bit ranges
  - `bit_merge` - Merge bit values
  - `bit_split` - Split bit value
  - `bit_interleave` - Interleave bit patterns
  - `bit_deinterleave` - Deinterleave bit patterns

- **Bit Scanning Functions**:
  - `bit_scan_forward` - Find first set bit
  - `bit_scan_reverse` - Find last set bit
  - `bit_find_first_set` - Find first set bit position
  - `bit_find_last_set` - Find last set bit position
  - `bit_clear_lowest_set` - Clear rightmost set bit

- **ARM64 Instruction Reference**:
  - Complete ARM64 instruction set documentation
  - Technical descriptions for all instructions
  - Reference materials and specifications

- **Project Structure**:
  - Organized directory structure with `bit/` category
  - Consistent naming conventions
  - Professional file organization
  - Comprehensive documentation

### Technical Details
- All functions implemented in pure ARM64 assembly
- Optimized for performance and compatibility
- Standard ARM64 ABI compliance
- Comprehensive error handling
- Memory-safe implementations

### Documentation
- Complete README with project overview
- Function documentation for all operations
- Contributing guidelines
- Code of conduct
- Security policy
- Changelog

---

## Version Numbering

This project uses [Semantic Versioning](https://semver.org/):

- **MAJOR** version for incompatible API changes
- **MINOR** version for backwards-compatible functionality additions
- **PATCH** version for backwards-compatible bug fixes

## Release Notes

Release notes will be published for each version, highlighting:
- New features and functions
- Performance improvements
- Bug fixes
- Security updates
- Breaking changes
- Migration guides

## Future Releases

Planned features for future releases:
- Number manipulation functions (`number/` category)
- Mathematical operations (`math/` category)
- System functions (`system/` category)
- Language family modules (EMA, EUI, EDA, etc.)
- Compiler implementation
- Standard library
- Development tools
