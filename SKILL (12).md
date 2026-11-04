---
name: video-render
description: Menggabungkan aset video memakai FFmpeg.
version: 1.0.0
metadata:
  hermes:
    tags: [nexus, workflow]
    category: nexus-40
---

# video-render

## Kapan dipakai
Saat user meminta: menggabungkan aset video memakai ffmpeg.

## Prosedur
1. Identifikasi kebutuhan user dan output akhir.
2. Cek ffmpeg -version dan keberadaan aset; render hanya dari aset berizin; simpan outputs/video dan cek ffprobe.
3. Lakukan pemeriksaan hasil dan laporkan file keluaran serta keterbatasan.

## Keamanan
Periksa perizinan aset, akses dan API. Jangan mengarang keberhasilan tool eksternal. Minta izin sebelum aksi yang mengubah produksi atau menerbitkan konten.
