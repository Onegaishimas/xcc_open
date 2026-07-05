#!/usr/bin/env bash
# check_refs.sh — verify that framework file references in markdown docs
# point to files that actually exist.
#
# Checks references to framework files only: 0xcc/instruct/, 0xcc/docs/,
# 0xcc/scripts/, .claude/, .github/, and the root memory/readme files.
# User-artifact paths (0xcc/prds/, tdds/, tids/, tasks/, adrs/) are expected
# to be empty in the template and are not checked. References containing
# placeholders ([...], $(...), YYYY) or documented-as-hypothetical files
# are skipped.
#
# Usage: bash 0xcc/scripts/check_refs.sh
# Exit code: 0 = all references resolve, 1 = broken references listed.

set -u
cd "$(git rev-parse --show-toplevel)" || exit 1

pattern='@?((0xcc/(instruct|docs|scripts)|\.claude|\.github)/[A-Za-z0-9_./-]+\.(md|sh|yml|yaml)|(AGENT|CLAUDE|GEMINI)\.md)'

broken=$(
  git ls-files '*.md' | while IFS= read -r f; do
    grep -oE "$pattern" "$f" 2>/dev/null | sed 's/^@//' | sort -u | while IFS= read -r ref; do
      case "$ref" in
        *'['*|*'$('*|*YYYY*|*new_agent*|*custom_command*) continue ;;
      esac
      [ -e "$ref" ] || printf '%s -> %s\n' "$f" "$ref"
    done
  done
)

if [ -n "$broken" ]; then
  echo "Broken framework references found:"
  echo "$broken"
  exit 1
fi
echo "All framework references OK."
