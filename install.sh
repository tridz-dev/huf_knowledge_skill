#!/usr/bin/env bash
set -euo pipefail

DEST="${1:-$HOME/.agents/skills/huf_knowledge_skill}"
mkdir -p "$DEST"
cp SKILL.md "$DEST/SKILL.md"
echo "Installed huf_knowledge_skill to $DEST"
