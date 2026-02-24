#!/bin/bash
# Creates the second brain folder structure in current directory

VAULT="."

folders=(
  "00-09 System/00 Inbox"
  "00-09 System/01 Meta"
  "00-09 System/05 Scripts-Python/scripts"
  "00-09 System/07 Scripts-Node"
  "10-19 Knowledge"
  "20-29 Areas"
  "30-39 Resources"
  "40-49 Archive"
  "50-59 Journal"
)

for folder in "${folders[@]}"; do
  mkdir -p "$VAULT/$folder"
  touch "$VAULT/$folder/.gitkeep"
done

echo "Folder structure created."
echo ""
echo "Next steps:"
echo "  1. Open this folder as an Obsidian vault"
echo "  2. Edit CLAUDE.md — set your vault path and add your tools"
echo "  3. Copy memory/MEMORY.md to ~/.claude/projects/<encoded-path>/memory/MEMORY.md"
echo "  4. Run: claude"
