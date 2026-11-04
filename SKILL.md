---
name: bot-development
description: Mengembangkan bot via API resmi.
version: 1.0.0
metadata:
  hermes:
    tags: [nexus, workflow]
    category: nexus-40
---

# bot-development

## Kapan dipakai
Saat user meminta: mengembangkan bot via api resmi.

## Prosedur
1. Identifikasi kebutuhan user dan output akhir.
2. Rancang webhook, validasi signature, opt-in pesan, rate limits, retry dan tests; jangan spam.
3. Lakukan pemeriksaan hasil dan laporkan file keluaran serta keterbatasan.

## Keamanan
Periksa perizinan aset, akses dan API. Jangan mengarang keberhasilan tool eksternal. Minta izin sebelum aksi yang mengubah produksi atau menerbitkan konten.
