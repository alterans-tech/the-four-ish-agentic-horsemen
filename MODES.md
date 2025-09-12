# 🔮 Seven Seals Framework - Invocation Modes

The Seven Seals Framework offers three modes of operation, each suited for different types of work. Choose the mode that matches your project's scope and complexity.

## 🚀 Quick Mode
**When to use:** Bug fixes, small improvements, hotfixes, minor refactoring

**Seals to invoke:**
1. **The Lamb** - Creates Tech Spec
2. **Fourth Seal (Pale Horse - Backend)** - Implements the fix
3. **Seventh Seal (Silence - QA)** - Tests and validates

**Command sequence:**
```bash
# 1. Create the Tech Spec
claude --agent 01_the-lamb-lead-architect.md "Create Tech Spec for [describe bug/improvement]"

# 2. Implement the solution
claude --agent 05_fourth-seal-pale-horse-backend.md "Implement the fix based on Tech Spec"

# 3. Test and validate
claude --agent 08_seventh-seal-silence-qa.md "Test the implementation"
```

**Time estimate:** 1-4 hours
**Complexity:** Low
**Risk:** Minimal

---

## 📋 Standard Mode
**When to use:** New features, significant enhancements, API additions, UI components

**Seals to invoke:**
1. **The Lamb** - Creates Tech Spec or Feature Spec
2. **Second Seal (Red Horse - Data)** - Designs data contracts and schemas
3. **Third Seal (Black Horse - Frontend)** - Builds UI components
4. **Fourth Seal (Pale Horse - Backend)** - Implements backend logic
5. **Seventh Seal (Silence - QA)** - Comprehensive testing

**Command sequence:**
```bash
# 1. Create the specification
claude --agent 01_the-lamb-lead-architect.md "Create Tech Spec for [feature name]"

# 2. Design data layer
claude --agent 03_second-seal-red-horse-data.md "Design data contracts and schemas"

# 3. Build frontend (if needed)
claude --agent 04_third-seal-black-horse-frontend.md "Implement UI components"

# 4. Implement backend
claude --agent 05_fourth-seal-pale-horse-backend.md "Implement backend services"

# 5. Test everything
claude --agent 08_seventh-seal-silence-qa.md "Run comprehensive tests"
```

**Time estimate:** 1-5 days
**Complexity:** Medium
**Risk:** Moderate

---

## ⚔️ Full Mode
**When to use:** New projects, major refactoring, system redesigns, microservices

**Seals to invoke:** All seals as needed

**Command sequence:**
```bash
# 1. Create Project Blueprint
claude --agent 01_the-lamb-lead-architect.md "Create Project Blueprint for [project name]"

# 2. UI/UX Design
claude --agent 02_first-seal-white-horse-uiux.md "Design user experience and interface"

# 3. Data Architecture
claude --agent 03_second-seal-red-horse-data.md "Design complete data architecture"

# 4. Frontend Implementation
claude --agent 04_third-seal-black-horse-frontend.md "Build frontend application"

# 5. Backend Implementation
claude --agent 05_fourth-seal-pale-horse-backend.md "Implement backend services"

# 6. AI/ML Features (if applicable)
claude --agent 06_fifth-seal-martyrs-aiml.md "Implement AI/ML capabilities"

# 7. Platform & Infrastructure
claude --agent 07_sixth-seal-cosmic-upheaval-platform.md "Setup infrastructure and deployment"

# 8. Quality Assurance
claude --agent 08_seventh-seal-silence-qa.md "Complete testing and chaos engineering"

# 9. Final Review
claude --agent 09_great-white-throne-tda.md "Final technical review and approval"
```

**Time estimate:** 1-4 weeks
**Complexity:** High
**Risk:** Significant

---

## 🤔 How to Choose?

### Choose **Quick Mode** if:
- You're fixing a bug
- Making a small improvement
- Changing configuration
- Updating documentation
- Refactoring a single component
- Time constraint: hours

### Choose **Standard Mode** if:
- Adding a new feature
- Creating new API endpoints
- Building new UI components
- Integrating a third-party service
- Moderate refactoring
- Time constraint: days

### Choose **Full Mode** if:
- Starting a new project
- Major system redesign
- Creating microservices
- Building a complete application
- Major architectural changes
- Time constraint: weeks

---

## 📊 Mode Comparison

| Aspect | Quick | Standard | Full |
|--------|-------|----------|------|
| **Seals Used** | 3 | 5 | 9+ |
| **Documentation** | Tech Spec | Tech Spec | Project Blueprint |
| **Testing Depth** | Basic | Comprehensive | Full + Chaos |
| **Review Process** | Peer | Team | TDA Judgment |
| **Rollback Plan** | Simple | Staged | Complex |
| **Risk Level** | Low | Medium | High |

---

## 💡 Pro Tips

1. **When in doubt, start smaller** - You can always escalate from Quick to Standard mode
2. **Use Quick Mode for urgent fixes** - Get to production faster
3. **Use Standard Mode for planned work** - Balance speed and thoroughness
4. **Use Full Mode for greenfield projects** - Start with proper foundation
5. **The Lamb will help you decide** - If unsure, the Lead Architect agent will ask which mode to use

---

## 🔄 Mode Escalation

You can escalate between modes if scope increases:

```
Quick Mode → Standard Mode: Add data and frontend seals
Standard Mode → Full Mode: Add remaining seals for complete coverage
```

Remember: The mode is a guideline, not a rigid rule. Adapt based on your specific needs.