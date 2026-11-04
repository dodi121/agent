---
name: tts-production
description: Membuat audio narasi dengan penyedia TTS yang tersedia.
version: 1.0.0
metadata:
  hermes:
    tags: [nexus, workflow]
    category: nexus-40
---

# tts-production

## Kapan dipakai
Saat user meminta: membuat audio narasi dengan penyedia tts yang tersedia.

## Prosedur
1. Identifikasi kebutuhan user dan output akhir.
2. Cek apakah ada tool atau CLI TTS; jika tidak tersedia, keluarkan file naskah dan instruksi setup. Jika tersedia, render ke outputs/audio/, validasi file; jangan meniru suara nyata tanpa izin.
3. Lakukan pemeriksaan hasil dan laporkan file keluaran serta keterbatasan.

## Keamanan
Periksa perizinan aset, akses dan API. Jangan mengarang keberhasilan tool eksternal. Minta izin sebelum aksi yang mengubah produksi atau menerbitkan konten.
