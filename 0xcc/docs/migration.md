# Migration from Old Structure

If you have an existing XCC project without the `0xcc/` structure, use this to
migrate framework files into it.

### Quick Migration Script
```bash
#!/bin/bash
echo "Migrating XCC framework to 0xcc directory..."

# Create new structure
mkdir -p 0xcc

# Move existing directories
[ -d "adrs" ] && mv adrs 0xcc/
[ -d "docs" ] && mv docs 0xcc/
[ -d "instruct" ] && mv instruct 0xcc/
[ -d "prds" ] && mv prds 0xcc/
[ -d "tasks" ] && mv tasks 0xcc/
[ -d "tdds" ] && mv tdds 0xcc/
[ -d "tids" ] && mv tids 0xcc/

# Create missing directories
mkdir -p 0xcc/scripts

echo "Migration complete! Update your AGENT.md file references to use 0xcc/ paths"
```

### Update File References
After migration, update your `AGENT.md` file references:
- Change `@prds/` to `@0xcc/prds/`
- Change `@adrs/` to `@0xcc/adrs/`
- Update all other framework paths to include `0xcc/` prefix
