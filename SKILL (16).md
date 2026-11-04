---
name: automation-workflows
description: Workflow dan cron terjadwal.
version: 1.0.0
metadata:
  hermes:
    tags: [nexus, workflow]
    category: nexus-40
---

# automation-workflows

## Kapan dipakai
Saat user meminta: workflow dan cron terjadwal.

## Prosedur
1. Identifikasi kebutuhan user dan output akhir.
2. Desain jadwal terukur, idempotency, log, fail-safe dan biaya token; buat cron hanya setelah perintah eksplisit.
3. Lakukan pemeriksaan hasil dan laporkan file keluaran serta keterbatasan.

## Keamanan
Periksa perizinan aset, akses dan API. Jangan mengarang keberhasilan tool eksternal. Minta izin sebelum aksi yang mengubah produksi atau menerbitkan konten.
