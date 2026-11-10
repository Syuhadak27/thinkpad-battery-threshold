# Batas Pengisian Baterai ThinkPad

Atur baterai ThinkPad supaya berhenti mengisi di persentase tertentu (misalnya 80%),
supaya baterai lebih awet. **Tidak perlu hak Administrator dan tidak perlu Lenovo Vantage.**

Semua sudah disiapkan dalam bentuk **shortcut**. Kamu tinggal extract, pilih shortcut,
selesai.

---

## Ringkasan cepat

1. **Extract** file ZIP di folder **Downloads** (klik kanan ZIP → **Extract Here**).
2. Jalankan **driver** satu kali saja (folder `driver`).
3. **Klik dua kali** shortcut yang kamu mau.

---

## Langkah 1 — Extract di Downloads

1. Download repo ini: tombol hijau **Code** → **Download ZIP**.
2. Buka folder **Downloads**.
3. Klik kanan file ZIP → **Extract Here**.

Setelah di-extract akan muncul folder bernama:

```
thinkpad-battery-threshold-main
```

> **Penting:** jangan pindahkan dan jangan ganti nama folder itu.
> Shortcut sudah otomatis mencari folder tersebut di Downloads.

Kalau Windows bilang file berasal dari internet dan diblokir, klik kanan file ZIP →
**Properties** → centang **Unblock** → **OK**, lalu extract ulang.

---

## Langkah 2 — Install driver (sekali saja)

Driver ini dibutuhkan agar baterai bisa diatur.

1. Buka folder **`driver`**.
2. Klik dua kali **`LenovoPowerManagement.exe`**.
3. Ikuti proses install (klik **Next** sampai **Finish**).
4. Kalau diminta **restart**, restart laptop.

> Langkah ini butuh izin Administrator (klik **Yes** kalau muncul konfirmasi Windows).
> Ini satu-satunya bagian yang butuh izin Administrator.

---

## Langkah 3 — Pilih shortcut

Klik dua kali salah satu shortcut di folder utama:

| Shortcut | Gunanya |
|----------|---------|
| `Battery threshold state.lnk` | Melihat batas baterai yang sedang aktif. |
| `Battery 80%.lnk` | Baterai berhenti diisi saat 80%. |
| `Battery 90%.lnk` | Berhenti di 90%, mulai mengisi lagi saat turun ke 80%. |
| `Battery 70%.lnk` | Berhenti di 70%, mulai mengisi lagi saat turun ke 60%. |
| `Battery 100%.lnk` | Mematikan batas, baterai mengisi sampai penuh 100%. |
| `Battery custom threshold.lnk` | Mengatur batas sendiri (angka bebas). |

Jendela hitam (CMD) akan terbuka sebentar, menjalankan perintah, lalu menutup sendiri
setelah 5 detik. Itu normal — tidak perlu menekan apa pun.

### Kalau ingin mengatur sendiri (custom)

1. Klik dua kali **`Battery custom threshold.lnk`**.
2. Akan muncul pertanyaan **`Stop charging at:`** → ketik angka batas atas, misalnya `85`, lalu Enter.
3. Muncul **`Start charging below:`** → ketik angka batas bawah, misalnya `75`, lalu Enter.
4. Selesai. Baterai akan berhenti di 85% dan mulai mengisi lagi saat turun di bawah 75%.

---

## Kalau folder tidak ada di Downloads

Shortcut sudah diarahkan ke folder ini:

```
%USERPROFILE%\Downloads\thinkpad-battery-threshold-main
```

Kalau kamu extract ke tempat lain (misalnya `Documents` atau `D:\`) atau mengganti nama
foldernya, ubah **Start in** pada setiap shortcut:

1. Klik **kanan** shortcut → **Properties**.
2. Di kolom **Start in**, isi dengan lokasi folder tempat file ini berada.
3. Klik **OK**.
4. Ulangi untuk 5 shortcut lainnya.

---

## Menjalankan tanpa shortcut (opsional)

Kalau lebih suka lewat CMD:

1. Buka folder ini di Explorer.
2. Klik pada address bar, ketik `cmd`, lalu Enter.
3. Ketik salah satu perintah:

```bat
ChargeThreshold.exe status
ChargeThreshold.exe on 80
ChargeThreshold.exe on 70 60
ChargeThreshold.exe off
```

Arti perintah:

- `on 80` → berhenti mengisi di 80%.
- `on 70 60` → berhenti di 70%, mulai lagi di 60%.
- `off` → tanpa batas, mengisi sampai 100%.
- `status` → melihat batas saat ini.

---

## Masalah yang sering muncul

- **Jendela CMD muncul lalu langsung hilang.**
  Normal. Perintah sudah dijalankan dan jendela menutup otomatis setelah 5 detik.

- **Muncul pesan `ChargeThreshold` tidak dikenali.**
  Folder hasil extract bukan `Downloads\thinkpad-battery-threshold-main`, atau
  **Start in** shortcut menunjuk ke folder lain. Ikuti bagian
  "Kalau folder tidak ada di Downloads" di atas.

- **Baterai tidak berubah.**
  Pastikan driver sudah di-install dan laptop sudah di-restart. Coba jalankan
  `Battery threshold state.lnk` dulu untuk memastikan program terbaca.

- **Windows memblokir `ChargeThreshold.exe`.**
  Klik kanan file → **Properties** → centang **Unblock** → **OK**.

---

## Kompatibilitas

Dari pengujian terbatas, sepertinya semua ThinkPad seri **XX30** sampai model terbaru
didukung. Sudah diuji di:

> X230, T530, T570, X280, X260

---

## Lisensi

Silakan pakai, bagikan, dan modifikasi sesukamu. Jangan dijual.
