#!/usr/bin/env bash
set -euo pipefail

# Book Genesis V3 — Installer for macOS/Linux
# Copies all 9 skills to ~/.claude/skills/

REPO_DIR="$(cd "$(dirname "$0")" && pwd)"
SKILLS_DIR="$REPO_DIR/skills"
TARGET_DIR="$HOME/.claude/skills"

GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m'

echo ""
echo -e "${BLUE}  ____              _      ____                      _     ${NC}"
echo -e "${BLUE} | __ )  ___   ___ | | __ / ___| ___ _ __   ___  ___(_)___ ${NC}"
echo -e "${BLUE} |  _ \\ / _ \\ / _ \\| |/ /| |  _ / _ \\ '_ \\ / _ \\/ __| / __|${NC}"
echo -e "${BLUE} | |_) | (_) | (_) |   < | |_| |  __/ | | |  __/\\__ \\ \\__ \\${NC}"
echo -e "${BLUE} |____/ \\___/ \\___/|_|\\_\\ \\____|\\___|_| |_|\\___||___/_|___/${NC}"
echo ""
echo -e "${YELLOW}Installing 9 skills to $TARGET_DIR${NC}"
echo ""

# Check that skills directory exists
if [ ! -d "$SKILLS_DIR" ]; then
  echo "Error: skills/ directory not found. Run this script from the book-genesis repository root."
  exit 1
fi

# Create target directory
mkdir -p "$TARGET_DIR"

# Copy each skill
count=0
for skill_dir in "$SKILLS_DIR"/*/; do
  skill_name=$(basename "$skill_dir")
  mkdir -p "$TARGET_DIR/$skill_name"
  cp "$skill_dir/SKILL.md" "$TARGET_DIR/$skill_name/SKILL.md"
  echo -e "  ${GREEN}+${NC} $skill_name"
  count=$((count + 1))
done

echo ""
echo -e "${GREEN}Done!${NC} $count skills installed to $TARGET_DIR"
echo ""
echo "Open Claude Code and type /book-genesis to start writing."
echo ""
