---
name: server-health
description: Diagnostik kesehatan Ubuntu VPS.
version: 1.0.0
metadata:
  hermes:
    tags: [nexus, workflow]
    category: nexus-40
---

# server-health

## Kapan dipakai
Saat user meminta: diagnostik kesehatan ubuntu vps.

## Prosedur
1. Identifikasi kebutuhan user dan output akhir.
2. Baca uptime/free/df/systemctl/journalctl sesuai izin; rangkum temuan dan jangan mengubah sistem tanpa persetujuan.
3. Lakukan pemeriksaan hasil dan laporkan file keluaran serta keterbatasan.

## Keamanan
Periksa perizinan aset, akses dan API. Jangan mengarang keberhasilan tool eksternal. Minta izin sebelum aksi yang mengubah produksi atau menerbitkan konten.
