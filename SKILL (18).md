---
name: release-quality
description: QA dan rilis aplikasi.
version: 1.0.0
metadata:
  hermes:
    tags: [nexus, workflow]
    category: nexus-40
---

# release-quality

## Kapan dipakai
Saat user meminta: qa dan rilis aplikasi.

## Prosedur
1. Identifikasi kebutuhan user dan output akhir.
2. Rancang checklist test, build, changelog, rollback; jangan deploy ke produksi tanpa izin.
3. Lakukan pemeriksaan hasil dan laporkan file keluaran serta keterbatasan.

## Keamanan
Periksa perizinan aset, akses dan API. Jangan mengarang keberhasilan tool eksternal. Minta izin sebelum aksi yang mengubah produksi atau menerbitkan konten.
