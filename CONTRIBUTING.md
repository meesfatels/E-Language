# Contributing to E (Eidolon) Programming Language

Thank you for your interest in contributing to the E programming language! This document provides guidelines for contributing to this project.

## Project Status

**⚠️ Early Development**: This project is in the early stages of development. We're currently building the foundational bit manipulation library and establishing the core architecture.

## How to Contribute

### 1. Reporting Issues

If you find a bug or have a suggestion:

1. Check if the issue already exists in the [Issues](https://github.com/yourusername/e-language/issues) section
2. Create a new issue with:
   - Clear title describing the problem
   - Detailed description of the issue
   - Steps to reproduce (if applicable)
   - Expected vs actual behavior

### 2. Suggesting Features

We welcome feature suggestions! Please:

1. Check existing issues to avoid duplicates
2. Provide a clear description of the proposed feature
3. Explain the use case and benefits
4. Consider how it fits into the E language ecosystem

### 3. Code Contributions

#### Getting Started

1. Fork the repository
2. Create a feature branch: `git checkout -b feature/your-feature-name`
3. Make your changes
4. Test your changes thoroughly
5. Commit with clear, descriptive messages
6. Push to your fork and submit a pull request

#### Code Standards

- **ARM64 Assembly**: Follow ARM64 calling conventions and best practices
- **Naming**: Use technical, precise naming with appropriate prefixes
- **Documentation**: Include clear comments explaining function purpose and parameters
- **Testing**: Ensure functions work correctly across different ARM64 systems
- **Performance**: Optimize for minimal instruction count and maximum efficiency

#### File Organization

- Follow the existing directory structure
- Place new functions in appropriate categories
- Use consistent naming conventions (`bit_` prefix for bit operations)
- Update documentation as needed

### 4. Documentation

Help improve our documentation:

- Fix typos or unclear explanations
- Add examples to function documentation
- Improve README sections
- Create tutorials or guides

## Development Guidelines

### ARM64 Assembly Standards

- Use standard ARM64 ABI (Application Binary Interface)
- Follow register usage conventions (X0-X7 for parameters)
- Include proper function prologues and epilogues
- Optimize for performance while maintaining compatibility

### Function Requirements

Each new function should:

1. Have a clear, technical name with appropriate prefix
2. Include comprehensive documentation
3. Follow ARM64 calling conventions
4. Be thoroughly tested
5. Include input/output specifications
6. Be optimized for performance

### Testing

Before submitting:

- Test on multiple ARM64 systems if possible
- Verify function correctness with various inputs
- Check for edge cases and error conditions
- Ensure no memory leaks or buffer overflows

## Pull Request Process

1. **Fork and Branch**: Create a feature branch from the main branch
2. **Make Changes**: Implement your feature or fix
3. **Test**: Thoroughly test your changes
4. **Document**: Update documentation as needed
5. **Commit**: Use clear, descriptive commit messages
6. **Pull Request**: Submit with detailed description

### Pull Request Template

```markdown
## Description
Brief description of changes

## Type of Change
- [ ] Bug fix
- [ ] New feature
- [ ] Documentation update
- [ ] Performance improvement

## Testing
Describe how you tested your changes

## ARM64 Compatibility
- [ ] Tested on macOS ARM64
- [ ] Tested on Linux ARM64
- [ ] Tested on other ARM64 systems

## Additional Notes
Any additional information or considerations
```

## Code of Conduct

### Our Standards

- Be respectful and inclusive
- Focus on constructive feedback
- Help others learn and grow
- Respect different perspectives and experiences

### Unacceptable Behavior

- Harassment or discrimination
- Trolling or inflammatory comments
- Personal attacks
- Spam or off-topic discussions

## Getting Help

If you need help:

1. Check the [Issues](https://github.com/yourusername/e-language/issues) for similar questions
2. Create a new issue with the "question" label
3. Join our community discussions (when available)

## License

By contributing to this project, you agree that your contributions will be licensed under the same license as the project.

## Recognition

Contributors will be recognized in:
- CONTRIBUTORS.md file
- Release notes
- Project documentation

Thank you for helping make E a better programming language! 🚀
