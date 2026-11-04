#!/usr/bin/env bash
set -euo pipefail
P="$HOME/hermes-nexus-40"
printf 'Profiles: '; find "$P/agents" -maxdepth 1 -name '*.md' | wc -l
printf 'NEXUS skills installed: '; for n in content-idea-factory viral-content-research script-storytelling voice-narration tts-production video-storyboard video-render thumbnail-design youtube-seo social-calendar coding-idea-lab fullstack-builder code-review-repair bot-development api-integration automation-workflows server-health security-audit research-verification release-quality; do [ -f "$HOME/.hermes/skills/$n/SKILL.md" ] && printf '.' || printf 'X'; done; echo
command -v hermes >/dev/null && echo 'Hermes: installed' || echo 'Hermes: missing'
command -v ffmpeg >/dev/null && echo 'FFmpeg: installed' || echo 'FFmpeg: not installed (optional)'
command -v espeak-ng >/dev/null && echo 'Local TTS (espeak-ng): installed' || echo 'Local TTS: not installed (optional)'
