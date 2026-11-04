---
name: api-integration
description: Integrasi API eksternal dan AI.
version: 1.0.0
metadata:
  hermes:
    tags: [nexus, workflow]
    category: nexus-40
---

# api-integration

## Kapan dipakai
Saat user meminta: integrasi api eksternal dan ai.

## Prosedur
1. Identifikasi kebutuhan user dan output akhir.
2. Verifikasi endpoint, autentikasi aman lewat env, timeout/retry/backoff, schema checks dan log yang menyembunyikan token.
3. Lakukan pemeriksaan hasil dan laporkan file keluaran serta keterbatasan.

## Keamanan
Periksa perizinan aset, akses dan API. Jangan mengarang keberhasilan tool eksternal. Minta izin sebelum aksi yang mengubah produksi atau menerbitkan konten.
