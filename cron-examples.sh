#!/usr/bin/env bash
set -euo pipefail
W="$HOME/hermes-nexus-40"
if ! command -v hermes >/dev/null; then echo 'Hermes belum terpasang'; exit 1; fi
printf 'Akan membuat 3 cron jobs di Hermes. Memakai model/API aktif dan dapat memakan token. Lanjutkan? [y/N] ' ; read -r ans
case "$ans" in y|Y|yes|YES) ;; *) echo 'Dibatalkan'; exit 0;; esac
hermes cron create '0 8 * * *' 'Baca AGENTS.md. Sebagai TREND-SCOUT dan VIRAL-HUNTER, riset 5 ide konten teknologi dari sumber yang bisa diverifikasi. Simpan outputs/ideas-today.md. Jangan posting.' --workdir "$W" --name 'NEXUS Daily Content Ideas' --skill content-idea-factory
hermes cron create '0 9 * * 1,3,5' 'Baca AGENTS.md. Sebagai CODE-IDEATOR buat 3 ide coding lengkap dengan MVP, simpan outputs/coding-ideas.md. Jangan deploy.' --workdir "$W" --name 'NEXUS Coding Ideas' --skill coding-idea-lab
hermes cron create '0 20 * * *' 'Baca AGENTS.md. Sebagai DAILY-REPORTER rangkum output yang nyata dan status sistem dari data yang tersedia; jangan mengarang pekerjaan yang belum dikerjakan. Simpan outputs/daily-report.md.' --workdir "$W" --name 'NEXUS Daily Report'
hermes cron list
