# Project: [Your Project Name]

## Current Status
- **Phase:** Project Setup
- **Next Steps:** Generate the BRD using @0xcc/instruct/001_generate-brd.md, then create the Project PRD using @0xcc/instruct/002_create-project-prd.md
- **Active Document:** None (starting workflow)
- **Current Feature:** N/A (project foundation phase)

## Resuming Work
To pick up where you left off in a new session, load `@AGENT.md` and check the Document Inventory below to see which documents exist and which are still pending. That, plus the active document referenced above, is enough context to continue.

## Project Standards
*[This section will be populated from ADR - Technology Stack, Development Standards, Architecture Principles, etc.]*

**NOTE:** After creating the ADR using @0xcc/instruct/003_create-adr.md, copy the generated "Project Standards" section here to replace this placeholder.

## AI Dev Tasks Framework Workflow

### Document Creation Sequence
0. **Business Requirements** (first step, once per project)
   - `000_BRD_[project-name].md` → `0xcc/prds/` (Business Requirements Document, from transcript + supporting research)

1. **Project Foundation**
   - `000_PPRD_[project-name].md` → `0xcc/prds/` (Project PRD)
   - `000_PADR_[project-name].md` → `0xcc/adrs/` (Architecture Decision Record)
   - Update this AGENT.md with Project Standards from ADR
   - `000_FTASKS_Project_Foundation.md` → `0xcc/tasks/` (Foundation backlog from PPRD + ADR: scaffolding, CI/CD, database, auth, tooling)

2. **Feature Development** (repeat for each feature)
   - `[###]_FPRD|[feature-name].md` → `0xcc/prds/` (Feature PRD)
   - `[###]_FTDD|[feature-name].md` → `0xcc/tdds/` (Technical Design Doc)
   - `[###]_FTID|[feature-name].md` → `0xcc/tids/` (Technical Implementation Doc)
   - `[###]_FTASKS|[feature-name].md` → `0xcc/tasks/` (Task List)

### Instruction Documents Reference
- `@0xcc/instruct/001_generate-brd.md` - Converts a free-form transcript + supporting material into a Business Requirements Document (run once, first)
- `@0xcc/instruct/002_create-project-prd.md` - Creates project vision and feature breakdown
- `@0xcc/instruct/003_create-adr.md` - Establishes tech stack and standards
- `@0xcc/instruct/004_create-feature-prd.md` - Details individual feature requirements
- `@0xcc/instruct/005_create-tdd.md` - Creates technical architecture and design
- `@0xcc/instruct/006_create-tid.md` - Provides implementation guidance and coding hints
- `@0xcc/instruct/007_generate-tasks.md` - Generates the complete task backlog from FPRD + TDD + TID (also generates the once-per-project foundation backlog from PPRD + ADR)
- `@0xcc/instruct/008_process-task-list.md` - Guides task execution and progress tracking

## Document Inventory

### Project Level Documents
- ❌ 0xcc/prds/000_BRD_[project-name].md (Business Requirements Document)
- ❌ 0xcc/prds/000_PPRD_[project-name].md (Project PRD)
- ❌ 0xcc/adrs/000_PADR_[project-name].md (Architecture Decision Record)
- ❌ 0xcc/tasks/000_FTASKS_Project_Foundation.md (Foundation backlog)

### Feature Documents
*[Add as features are identified and developed]*

**Example format:**
- ❌ 0xcc/prds/001_FPRD_Feature_A.md (Feature PRD)
- ❌ 0xcc/tdds/001_FTDD_Feature_A.md (Technical Design Doc)
- ❌ 0xcc/tids/001_FTID_Feature_A.md (Technical Implementation Doc)
- ❌ 0xcc/tasks/001_FTASKS_Feature_A.md (Task List)

### Status Indicators
- ✅ **Complete:** Document finished and reviewed
- ⏳ **In Progress:** Currently being worked on
- ❌ **Pending:** Not yet started
- 🔄 **Needs Update:** Requires revision based on changes

## Task Execution Standards

### Completion Protocol
- ✅ One sub-task at a time, ask permission before next
- ✅ Mark sub-tasks complete immediately: `[ ]` → `[x]`
- ✅ When parent task complete: Run tests → Stage → Clean → Commit → Mark parent complete
- ✅ Never commit without passing tests
- ✅ Always clean up temporary files before commit

### Commit Message Format
```bash
git commit -m "feat: [brief description]" -m "- [key change 1]" -m "- [key change 2]" -m "Related to [Task#] in [PRD]"
```

### Test Commands
*[Will be defined in ADR, examples:]*
- **Frontend:** `npm test` or `npm run test:unit`
- **Backend:** `pytest` or `python -m pytest` 
- **Full Suite:** `[project-specific command]`

## Code Quality Checklist

### Before Any Commit
- [ ] All tests passing
- [ ] No console.log/print debugging statements
- [ ] No commented-out code blocks
- [ ] No temporary files (*.tmp, .cache, etc.)
- [ ] Code follows project naming conventions
- [ ] Functions/methods have docstrings if required
- [ ] Error handling implemented per ADR standards

### File Organization Rules
*[Will be defined in ADR, examples:]*
- Place test files alongside source files: `Component.tsx` + `Component.test.tsx`
- Follow directory structure from ADR
- Use naming conventions: `[Feature][Type].extension`
- Import statements organized: external → internal → relative
- Framework files in `0xcc/` directory, project files in standard locations

## Progress Tracking

### Task List Maintenance
- Update task list file after each sub-task completion
- Add newly discovered tasks as they emerge
- Update "Relevant Files" section with any new files created/modified
- Include one-line description for each file's purpose
- Distinguish between framework files (0xcc/) and project files (src/, tests/, etc.)

### Status Indicators for Tasks
- `[ ]` = Not started
- `[x]` = Completed
- `[~]` = In progress (use sparingly, only for current sub-task)
- `[?]` = Blocked/needs clarification

## Implementation Patterns

### Error Handling
*[Will be defined in ADR - placeholder for standards]*
- Use project-standard error handling patterns from ADR
- Always handle both success and failure cases
- Log errors with appropriate level (error/warn/info)
- User-facing error messages should be friendly

### Testing Patterns
*[Will be defined in ADR - placeholder for standards]*
- Each function/component gets a test file
- Test naming: `describe('[ComponentName]', () => { it('should [behavior]', () => {})})`
- Mock external dependencies
- Test both happy path and error cases
- Aim for [X]% coverage per ADR standards

## Debugging Protocols

### When Tests Fail
1. Read error message carefully
2. Check recent changes for obvious issues
3. Run individual test to isolate problem
4. Use debugger/console to trace execution
5. Check dependencies and imports
6. Ask for help if stuck > 30 minutes

### When Task is Unclear
1. Review original PRD requirements
2. Check TDD for design intent
3. Look at TID for implementation hints
4. Ask clarifying questions before proceeding
5. Update task description for future clarity

## Feature Priority Order
*[Will be populated from Project PRD]*

**Placeholder - Update after Project PRD creation:**
1. [Feature A] (Core/MVP)
2. [Feature B] (Important)
3. [Feature C] (Future)

## Quick Reference

### 0xcc Folder Structure
```
project-root/
├── AGENT.md                        # This file (project memory)
├── CLAUDE.md                       # Stub → @AGENT.md
├── GEMINI.md                       # Stub → @AGENT.md
├── 0xcc/                           # XCC Framework directory
│   ├── adrs/                       # Architecture Decision Records
│   ├── docs/                       # Additional documentation
│   ├── instruct/                   # Framework instruction files
│   ├── prds/                       # Product Requirements Documents
│   ├── tasks/                      # Task Lists
│   ├── tdds/                       # Technical Design Documents
│   ├── tids/                       # Technical Implementation Documents
│   └── scripts/                    # Optional automation scripts
├── src/                            # Your project code
├── tests/                          # Your project tests
└── README.md                       # Project README
```

### File Naming Convention
- **Project Level:** `000_PPRD_ProjectName.md`, `000_PADR_ProjectName.md`
- **Feature Level:** `001_FPRD_FeatureName.md`, `001_FTDD_FeatureName.md`, etc.
- **Sequential:** Use 001, 002, 003... for features in priority order
- **Framework Files:** All in `0xcc/` directory for clear organization
- **Project Files:** Standard locations (src/, tests/, package.json, etc.)

### Reference Documents
- **Framework Documentation:** @0xcc/instruct/000_README.md
- **Current Project PRD:** @0xcc/prds/000_PPRD_[project-name].md (after creation)
- **Tech Standards:** @0xcc/adrs/000_PADR_[project-name].md (after creation)

---

**Structure:** 0xcc framework