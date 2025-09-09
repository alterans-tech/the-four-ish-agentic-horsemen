# Context Engineering

## What is Context Engineering?

Context Engineering is the discipline of engineering comprehensive context for AI coding assistants, ensuring they have all necessary information to complete tasks end-to-end. It's a paradigm shift from simple prompt engineering to creating a complete information architecture system.

### Core Philosophy: "Context is King"

**Prompt Engineering** = Clever wording (like a sticky note)
**Context Engineering** = Complete system (like a full screenplay)

Most AI failures aren't model failures - they're context failures. By providing comprehensive context, documentation, examples, and validation loops, AI can handle complex multi-step implementations successfully.

## Key Components

### 1. CLAUDE.md - The Project DNA
- Global rules and conventions that apply to every conversation
- Project awareness, coding standards, testing requirements
- File structure patterns, naming conventions, style guides
- Never-break rules that ensure consistency

### 2. INITIAL.md - The Feature Blueprint
- Detailed feature description with specific requirements
- References to example code patterns to follow
- Documentation links and API specifications
- Known gotchas and edge cases to handle

### 3. PRP (Product Requirements Prompt)
- Comprehensive implementation blueprint generated from INITIAL.md
- Includes complete context, documentation, and validation gates
- Step-by-step implementation plan with error handling
- Test requirements and success criteria

### 4. Examples Folder - Pattern Library
- Real code examples showing preferred patterns
- Test structure examples for consistency
- Integration patterns for APIs and databases
- Error handling and edge case examples

## The Context Engineering Workflow

```
1. Setup Phase
   ├── Define project rules in CLAUDE.md
   ├── Add code examples to examples/
   └── Configure project structure

2. Feature Request Phase
   ├── Create detailed INITIAL.md
   ├── Include all requirements
   └── Reference relevant examples

3. PRP Generation Phase
   ├── /generate-prp INITIAL.md
   ├── AI researches codebase
   ├── AI gathers documentation
   └── Creates comprehensive PRP

4. Execution Phase
   ├── /execute-prp PRPs/feature.md
   ├── AI creates task plan
   ├── Implements with validation
   └── Ensures all criteria met
```

## Why Context Engineering Works

### 1. Reduces Context Switching
- All necessary information in one place
- No need to repeatedly explain project structure
- Consistent patterns across features

### 2. Enables Complex Features
- Multi-step implementations with validation gates
- Self-correcting through test loops
- Handles architectural decisions properly

### 3. Ensures Quality
- Built-in testing requirements
- Code review patterns included
- Documentation standards enforced

### 4. Scales Development
- Reusable patterns and examples
- Consistent approach across team
- Knowledge captured and preserved

## Best Practices

### Be Explicit
- Don't assume AI knows preferences
- Include specific requirements
- Define success criteria clearly

### Provide Comprehensive Examples
- More examples = better implementations
- Show both good and bad patterns
- Include error handling examples

### Use Validation Gates
- Tests must pass before completion
- Linting and type checking enforced
- Performance criteria validated

### Maintain Living Documentation
- Update CLAUDE.md as patterns evolve
- Add new examples as discovered
- Keep documentation current

## Application to Development

### For New Projects
1. Start with CLAUDE.md to define standards
2. Create comprehensive examples/
3. Use INITIAL.md for each feature
4. Generate and execute PRPs

### For Existing Features
1. Document current patterns in examples/
2. Update CLAUDE.md with conventions
3. Use context for consistent enhancements

### For Bug Fixes
1. Include bug context in INITIAL.md
2. Reference working examples
3. Define fix validation criteria
4. Generate targeted PRP

## Key Insight

Context Engineering transforms AI from a code generator into a true development partner. By providing comprehensive context upfront, we enable AI to:
- Understand the entire system architecture
- Follow established patterns consistently
- Make informed architectural decisions
- Self-validate and correct implementations
- Deliver production-ready code on first attempt

The investment in context engineering pays dividends through reduced iterations, fewer bugs, and accelerated development velocity.