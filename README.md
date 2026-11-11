# 🔋 ThinkPad Battery Threshold

> Tool sederhana untuk mengatur batas pengisian baterai Lenovo ThinkPad agar kesehatan baterai lebih terjaga.

[![Platform](https://img.shields.io/badge/platform-Windows-blue)]()
[![Device](https://img.shields.io/badge/device-Lenovo%20ThinkPad-red)]()
[![License](https://img.shields.io/badge/license-Free%20Use-green)]()

---

## 📖 Tentang

**ThinkPad Battery Threshold** adalah utilitas ringan untuk mengatur ambang batas pengisian baterai pada laptop Lenovo ThinkPad. Dengan membatasi pengisian daya pada rentang tertentu, umur dan kesehatan baterai dapat lebih terjaga dalam jangka panjang.

---

## ✨ Fitur

- ⚙️ **Preset pengaturan** siap pakai (Seimbang, Standar, Maksimal)
- 📊 **Cek status baterai** secara langsung
- 🔓 **Nonaktifkan batas** pengisian kapan saja
- 🖱️ **Antarmuka sederhana** berbasis menu (tanpa perlu command line)

---

## 🚀 Cara Menggunakan

1. **Ekstrak** file ZIP ke folder mana saja.
2. **Instal driver** yang tersedia di folder `driver` (cukup satu kali).
3. **Jalankan** `start.bat`.
4. **Pilih** pengaturan sesuai kebutuhan melalui menu.

---

## ⚙️ Pilihan Pengaturan

| Mode        | Berhenti Mengisi | Mulai Mengisi |
|-------------|:----------------:|:-------------:|
| 🟢 Seimbang | 75%              | 65%           |
| 🔵 Standar  | 85%              | 75%           |
| 🔴 Maksimal | 95%              | 85%           |

Tersedia juga menu tambahan untuk:
- 🔍 **Memeriksa status baterai**
- ❌ **Menonaktifkan batas pengisian**

---

## 💡 Penjelasan Ambang

| Istilah            | Penjelasan                                                                 |
|--------------------|----------------------------------------------------------------------------|
| **Ambang Berhenti** | Persentase saat pengisian baterai **dihentikan**.                          |
| **Ambang Mulai**    | Persentase saat pengisian baterai **dimulai kembali** setelah kapasitas turun. |

### Contoh

Pengaturan **85% / 75%** berarti:

- Pengisian **berhenti** saat baterai mencapai **85%**
- Pengisian **dimulai kembali** saat baterai turun hingga **75%**

---

## 💻 Kompatibilitas

Model ThinkPad yang telah **diuji dan berfungsi**:

- ✅ X230
- ✅ T530
- ✅ T570
- ✅ X280
- ✅ X260

> ⚠️ **Catatan:** Kompatibilitas untuk model lain bergantung pada dukungan perangkat keras, firmware, dan driver masing-masing perangkat.

---

## 📄 Lisensi

Proyek ini **bebas digunakan, dibagikan, dan dimodifikasi** sesuai kebutuhan.

> 🚫 **Dilarang menjual kembali** proyek ini.

---

<p align="center">
  Dibuat dengan ❤️ untuk komunitas pengguna ThinkPad
</p>