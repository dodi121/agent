---
name: security-audit
description: Audit konfigurasi defensif.
version: 1.0.0
metadata:
  hermes:
    tags: [nexus, workflow]
    category: nexus-40
---

# security-audit

## Kapan dipakai
Saat user meminta: audit konfigurasi defensif.

## Prosedur
1. Identifikasi kebutuhan user dan output akhir.
2. Periksa secret, dependensi, otorisasi, input, log exposure, backup; laporkan prioritas dan perbaikan aman.
3. Lakukan pemeriksaan hasil dan laporkan file keluaran serta keterbatasan.

## Keamanan
Periksa perizinan aset, akses dan API. Jangan mengarang keberhasilan tool eksternal. Minta izin sebelum aksi yang mengubah produksi atau menerbitkan konten.
