#!/usr/bin/env bash
# Create a new hackathon project from the starter template.
#
# Usage:
#   ./new-hackathon.sh "Hackathon Name"               -> hackathons/hackathon-name/
#   ./new-hackathon.sh "Hackathon Name" ~/path/to/dir -> custom folder
#
# Works on macOS and Linux.

set -euo pipefail

KIT_DIR="$(cd "$(dirname "$0")" && pwd)"
NAME="${1:-}"

if [[ -z "$NAME" ]]; then
  echo "Usage: ./new-hackathon.sh \"Hackathon Name\" [target-folder]"
  exit 1
fi

# "Devfolio AI Build 2026" -> "devfolio-ai-build-2026"
SLUG="$(printf '%s' "$NAME" | tr '[:upper:]' '[:lower:]' | tr -cs 'a-z0-9' '-' | sed -e 's/^-*//' -e 's/-*$//')"
if [[ -z "$SLUG" ]]; then
  echo "Couldn't make a folder name from \"$NAME\". Use letters or numbers."
  exit 1
fi

TARGET="${2:-$KIT_DIR/hackathons/$SLUG}"

if [[ -e "$TARGET" ]]; then
  echo "Folder already exists: $TARGET"
  echo "Pick a different name or folder."
  exit 1
fi

mkdir -p "$TARGET"
cp -R "$KIT_DIR/templates/project-starter/." "$TARGET/"
mkdir -p "$TARGET/hackathon/prompts"
cp "$KIT_DIR/prompts/"*.md "$TARGET/hackathon/prompts/"

TODAY="$(date +%Y-%m-%d)"

# Fill placeholders. perl -pi works the same on macOS and Linux (sed -i doesn't).
export HACK_NAME="$NAME" HACK_DATE="$TODAY"
grep -rl '{{' "$TARGET" | while IFS= read -r file; do
  perl -pi -e 's/\{\{HACKATHON_NAME\}\}/$ENV{HACK_NAME}/g; s/\{\{DATE\}\}/$ENV{HACK_DATE}/g' "$file"
done

echo ""
echo "✅ Created: $TARGET"
echo ""
echo "Next steps:"
echo "  1. cd \"$TARGET\" && git init"
echo "  2. Fill hackathon/00-HACKATHON-INFO.md (paste the rules, convert deadline to IST)"
echo "  3. List real problems in hackathon/01-IDEAS.md, then use hackathon/prompts/1-research-analyst.md"
echo "  4. Lock hackathon/PROJECT-BRIEF.md before writing code"
echo ""
