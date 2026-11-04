---
name: code-review-repair
description: Debugging dan code review.
version: 1.0.0
metadata:
  hermes:
    tags: [nexus, workflow]
    category: nexus-40
---

# code-review-repair

## Kapan dipakai
Saat user meminta: debugging dan code review.

## Prosedur
1. Identifikasi kebutuhan user dan output akhir.
2. Reproduksi bug, identifikasi penyebab, buat patch minimal, jalankan tests, rangkum perubahan.
3. Lakukan pemeriksaan hasil dan laporkan file keluaran serta keterbatasan.

## Keamanan
Periksa perizinan aset, akses dan API. Jangan mengarang keberhasilan tool eksternal. Minta izin sebelum aksi yang mengubah produksi atau menerbitkan konten.
