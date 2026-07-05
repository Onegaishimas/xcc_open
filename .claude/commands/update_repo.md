# Update Repository Command

Please add, commit, and push our current progress with detailed commit messages.

## Standard Process
1. Run the full test suite (per AGENT.md Test Commands) — **do not commit if tests fail**
2. Check `git status` and review all changes
3. Clean up temporary files and debug code before staging
4. Stage changes (`git add .`) and review the staged diff (`git diff --staged`)
5. Commit using the project's commit format (from AGENT.md):
   ```bash
   git commit -m "feat: [brief description]" -m "- [key change 1]" -m "- [key change 2]" -m "Related to [Task#] in [PRD]"
   ```
6. Push to the remote repository

## Notes
- Follow the "Before Any Commit" checklist in AGENT.md
- If work relates to a task list, update the task list file and "Relevant Files" section before committing
