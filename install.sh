#!/usr/bin/env bash
set -euo pipefail
if [ "${EUID:-$(id -u)}" -eq 0 ]; then echo 'Jalankan sebagai user Hermes (tanpa sudo/root).'; exit 1; fi
SRC="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DEST="$HOME/hermes-nexus-40"
mkdir -p "$DEST" "$HOME/.hermes/skills"
if [ "$SRC" != "$DEST" ]; then
  cp -R "$SRC/agents" "$SRC/scripts" "$SRC/outputs" "$DEST/"
  cp "$SRC/AGENTS.md" "$SRC/README.md" "$SRC/manifest.json" "$DEST/"
fi
added=0; skipped=0
for skill in "$SRC"/skills/*; do
  name="$(basename "$skill")"
  if [ -e "$HOME/.hermes/skills/$name" ]; then echo "SKIP existing: $name"; skipped=$((skipped+1)); continue; fi
  cp -R "$skill" "$HOME/.hermes/skills/$name"
  added=$((added+1))
done
printf 'Installed new skills: %d | skipped existing: %d\n' "$added" "$skipped"
printf 'Profiles: %s/agents | master: %s/AGENTS.md\n' "$DEST" "$DEST"
if command -v hermes >/dev/null; then echo 'Checking Hermes CLI:'; hermes --help >/dev/null 2>&1 && echo 'Hermes found' || true; else echo 'WARNING: Hermes CLI not found in PATH'; fi
echo 'Next: cd ~/hermes-nexus-40 && hermes'
