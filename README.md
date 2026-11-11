# Batas Pengisian Baterai ThinkPad

Atur baterai ThinkPad supaya berhenti mengisi di persentase tertentu (misalnya 80%),
supaya baterai lebih awet. **Tidak perlu hak Administrator dan tidak perlu Lenovo Vantage.**

Semua sudah disiapkan dalam bentuk **shortcut**. Kamu tinggal extract, pilih shortcut,
selesai.

---

## Cara menggunakan

1. **Extract** file ZIP di folder **Downloads** (klik kanan ZIP → **Extract Here**).
2. Jalankan **driver** satu kali saja (folder `driver`) jika belum menginstall driver,
3. Jalankan **ChargeThreshold.exe** sebagai administrator,
4. Lali **Klik dua kali** shortcut yang kamu mau.

---

> **Penting:** Kalau Windows bilang file berasal dari internet dan diblokir, klik kanan file ZIP →
**Properties** → centang **Unblock** → **OK**, lalu extract ulang.

---

## Pilihan Shortcut

Klik dua kali salah satu shortcut di folder utama:

| Shortcut | Gunanya |
|----------|---------|
| `Battery threshold state.lnk` | Melihat batas baterai yang sedang aktif. |
| `Battery 70%.lnk` | Berhenti di 70%, mulai mengisi lagi saat turun ke 60%. |
| `Battery 80%.lnk` | Baterai berhenti diisi saat 80%. |
| `Battery 85%.lnk` | Berhenti di 85%, mulai mengisi lagi saat turun ke 70%. |
| `Battery 90%.lnk` | Berhenti di 90%, mulai mengisi lagi saat turun ke 80%. |
| `Battery 95%.lnk` | Berhenti di 95%, mulai mengisi lagi saat turun ke 85%. |
| `Battery 100%.lnk` | Mematikan batas, baterai mengisi sampai penuh 100%. |
| `Battery custom threshold.lnk` | Mengatur batas sendiri (angka bebas). |

Jendela hitam (CMD) akan terbuka sebentar, menjalankan perintah, lalu menutup sendiri
setelah 5 detik. Itu normal — tidak perlu menekan apa pun.

### Mengatur sendiri (custom)

1. Klik dua kali **`Battery custom threshold.lnk`**.
2. Akan muncul pertanyaan **`Stop charging at:`** → ketik angka batas atas, misalnya `85`, lalu Enter.
3. Muncul **`Start charging below:`** → ketik angka batas bawah, misalnya `75`, lalu Enter.
4. Selesai. Baterai akan berhenti di 85% dan mulai mengisi lagi saat turun di bawah 75%.


---

## Masalah yang sering muncul

- **Jendela CMD muncul lalu langsung hilang.**
  Normal. Perintah sudah dijalankan dan jendela menutup otomatis setelah 5 detik.

- **Baterai tidak berubah.**
  Pastikan driver sudah di-install dan laptop sudah di-restart. Coba jalankan
  `Battery threshold state.lnk` dulu untuk memastikan program terbaca.

- **Windows memblokir `ChargeThreshold.exe`.**
  Klik kanan file → **Properties** → centang **Unblock** → **OK**.

---

## Kompatibilitas

Dari pengujian terbatas, sepertinya semua ThinkPad seri **X260** sampai model terbaru
didukung. Sudah diuji di:

> X230, T530, T570, X280, X260

---

## Lisensi

Silakan pakai, bagikan, dan modifikasi sesukamu. Jangan dijual.
