# Claude Extensions Quick Reference - Pure Markdown

## 🚀 Essential Commands

### /health - Project Health Assessment
```
@.claude/context/health/dashboard.md
@.claude/context/health/assessment_template.md
```

### /smart-clear - Context Management
```
# Before /clear:
@AGENT.md  # Update current status
@.claude/context/agents/[relevant-agents].md  # Update agent contexts

# After /clear:
@AGENT.md
@.claude/context/health/dashboard.md  
@.claude/context/sessions/[latest-session].md
```

### /feature [name] [mode] - Feature Development
```
@.claude/context/agents/product_engineer.md  # Requirements
@.claude/context/agents/architect.md         # Design  
@.claude/context/agents/qa_engineer.md       # Quality
@.claude/context/agents/test_engineer.md     # Testing
```

### /review [scope] - Multi-Agent Review
```
@.claude/context/agents/product_engineer.md  # Business alignment
@.claude/context/agents/qa_engineer.md       # Code quality
@.claude/context/agents/architect.md         # Design consistency  
@.claude/context/agents/test_engineer.md     # Test coverage
```

### /collaborate [type] [description] - Agent Collaboration
```
@.claude/context/sessions/session_template.md  # Document challenge
# Then load all agent contexts for input
```

## 🤖 Agent System

### Product Engineer Agent
**File:** `.claude/context/agents/product_engineer.md`
**Focus:** Requirements, user stories, business logic, product vision
**Update When:** Working on requirements, user research, product decisions

### QA Engineer Agent  
**File:** `.claude/context/agents/qa_engineer.md`
**Focus:** Code quality, testing strategy, standards, security
**Update When:** Code reviews, quality assessments, testing planning

### Architect Agent
**File:** `.claude/context/agents/architect.md`
**Focus:** System design, patterns, scalability, technical debt
**Update When:** Architecture decisions, design reviews, system planning

### Test Engineer Agent
**File:** `.claude/context/agents/test_engineer.md`
**Focus:** Testing coverage, automation, debugging, reliability  
**Update When:** Test planning, coverage analysis, debugging sessions

## 📊 Health System

### Health Dashboard
**File:** `.claude/context/health/dashboard.md`
**Purpose:** Current project health overview
**Update:** Weekly or after major changes

### Health Assessment
**File:** `.claude/context/health/assessment_template.md`
**Purpose:** Detailed health evaluation template
**Usage:** Copy to dated file and complete assessment

## 📝 Session Management

### Session Template
**File:** `.claude/context/sessions/session_template.md`
**Purpose:** Structure for tracking work sessions
**Usage:** Copy to `session_YYYYMMDD_HHMM.md` for each major work session

### Session Types
- **Development:** Feature work, coding, implementation
- **Review:** Code reviews, quality assessments  
- **Planning:** Architecture decisions, requirement analysis
- **Collaboration:** Multi-agent problem solving

## 🔄 Workflow Patterns

### Daily Development Flow
1. Load: `@AGENT.md`
2. Check: `@.claude/context/health/dashboard.md`
3. Work: Update relevant agent contexts as you go
4. Before break: `/smart-clear`

### Feature Development Flow
1. Start: `/feature feature-name mode`
2. Plan: Update all 4 agent contexts with feature-specific analysis
3. Develop: Track progress in session files  
4. Review: `/review feature` with all agents
5. Complete: Update health dashboard

### Problem Solving Flow
1. Define: `/collaborate problem-solving "description"`
2. Analyze: Get input from relevant agents
3. Decide: Document decision in collaboration session
4. Update: Modify agent contexts with outcomes

### Weekly Health Flow  
1. Assess: `/health` - complete assessment template
2. Update: Refresh dashboard with current status
3. Plan: Identify improvement priorities
4. Track: Note trends and progress

## 🏗️ File Structure

```
.claude/
├── commands/                    # Command definitions  
│   ├── health.md               # /health command
│   ├── smart-clear.md          # /smart-clear command
│   ├── feature.md              # /feature command
│   ├── review.md               # /review command
│   └── collaborate.md          # /collaborate command
├── context/                    # Context management
│   ├── agents/                 # Agent context files
│   │   ├── product_engineer.md
│   │   ├── qa_engineer.md
│   │   ├── architect.md
│   │   └── test_engineer.md
│   ├── health/                 # Health monitoring
│   │   ├── dashboard.md
│   │   └── assessment_template.md
│   └── sessions/               # Session tracking
│       ├── session_template.md
│       └── [dated-session-files].md
└── quick_reference.md          # This file

AGENT.md                        # Project memory (root level, canonical)
```

## ✨ Key Benefits

### ✅ No Dependencies
- Pure Markdown files
- No Python, no scripts, no external tools
- Works with Claude's native file loading
- Human-readable and editable

### ✅ Persistent Context
- Agent contexts preserved between sessions
- Health tracking over time  
- Session history maintenance
- Decision documentation

### ✅ Structured Workflows
- Clear command definitions
- Multi-agent coordination
- Systematic problem solving
- Quality gates and reviews

### ✅ Flexible and Extensible
- Easy to customize for your project
- Add new agents or commands
- Integrate with existing workflows (XCC)
- Scale from simple to complex projects

## 🔧 Customization

### Adding New Agents
1. Create `.claude/context/agents/new_agent.md`
2. Define role, focus, and analysis templates
3. Update commands to include new agent
4. Add to quick reference

### Custom Commands
1. Create `.claude/commands/custom_command.md`
2. Define workflow using file loading
3. Document in quick reference
4. Test with your project

### Integration with XCC
- Commands can reference XCC instruction files
- Agent contexts inform XCC document creation
- Health monitoring covers XCC compliance
- Session tracking complements XCC tasks

## 🚀 Getting Started

### First Time Setup
1. Run setup script to create all files
2. Load `@AGENT.md` 
3. Run `/health` to establish baseline
4. Try `/feature test-feature` to test workflow

### Daily Usage
1. Start: `@AGENT.md`
2. Check: `@.claude/context/health/dashboard.md`
3. Work: Update agent contexts as needed
4. End: `/smart-clear` before breaks

---
*This system provides all the power of the Python-based system using only Markdown files and Claude's native capabilities.*
