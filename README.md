# Batas Pengisian Baterai ThinkPad — Tanpa Admin & Tanpa Lenovo Vantage

## Apa ini?

Ini adalah kumpulan **shortcut (pintasan)** yang memakai program resmi Lenovo bernama
`ChargeThreshold.exe` untuk mengatur batas pengisian baterai di laptop ThinkPad.

Kamu **tidak perlu hak Administrator** dan **tidak perlu install Lenovo Vantage**.

---

## Latar belakang (singkat)

Laptop kerja saya dikunci oleh IT: tidak bisa install aplikasi dari Microsoft Store dan
akun saya bukan admin. Padahal batas pengisian baterai di ThinkPad biasanya diatur lewat
Lenovo Vantage.

Ternyata pengaturan itu sebenarnya ditangani oleh driver *Lenovo Power and Battery*, dan
driver tersebut bisa dipicu langsung oleh program kecil buatan Lenovo sendiri:
**`ChargeThreshold.exe`**. Program ini cukup dijalankan lewat CMD (tidak harus sebagai
admin) dengan angka persentase yang diinginkan.

Karena antivirus saya memblokir file `.bat`, saya membuat **shortcut ke CMD** yang
menjalankan perintah tersebut. Itulah isi folder ini.

Program aslinya bisa diunduh di sini (sudah saya sertakan juga di folder ini):
<https://download.lenovo.com/pccbbs//thinkvantage_en/metroapps/Vantage/ChargeThreshold/ChargeThreshold.exe>

---

## Isi folder

| File | Fungsi |
|------|--------|
| `ChargeThreshold.exe` | Program resmi Lenovo untuk mengatur batas pengisian baterai. |
| `Battery threshold state.lnk` | Menampilkan status/batas baterai saat ini. |
| `Battery 100%.lnk` | Mematikan batas pengisian → baterai mengisi sampai 100%. |
| `Battery 90%.lnk` | Berhenti mengisi di 90%, mulai lagi di 80%. |
| `Battery 80%.lnk` | Berhenti mengisi di 80%. |
| `Battery 70%.lnk` | Berhenti mengisi di 70%, mulai lagi di 60%. |
| `Battery custom threshold.lnk` | Mengatur batas sendiri (kamu diminta memasukkan dua angka). |
| `Instructions.png` | Panduan visual (gambar). |

---

## Cara pakai (langkah demi langkah)

1. **Simpan semua file dalam satu folder**, misalnya:
   `C:\Users\<nama-kamu>\Documents\ThinkPad-Battery-threshold`
2. Pastikan `ChargeThreshold.exe` ada di folder yang **sama** dengan file `.lnk`.
3. **Klik dua kali** shortcut sesuai kebutuhan, misalnya `Battery 80%.lnk`.
4. Jendela CMD akan terbuka sebentar, menjalankan perintah, lalu menutup sendiri
   setelah 5 detik. Selesai.

### ⚠️ Penting: atur lokasi folder shortcut

Shortcut ini menyimpan lokasi awal (*Start in*) di `C:\Users\P51\Documents`, yaitu folder
di laptop pembuatnya. Kalau lokasi foldermu berbeda, CMD akan dijalankan di folder yang
salah dan `ChargeThreshold` tidak akan ditemukan.

Cara memperbaikinya (sekali saja untuk tiap shortcut):

1. Klik **kanan** pada shortcut → **Properties**.
2. Pada kolom **Start in**, isi dengan folder tempat file ini kamu simpan.
3. Klik **OK**.

---

## Arti angka pada perintah

Format perintahnya:

```
ChargeThreshold.exe on <batas-atas> <batas-bawah>
```

- **Angka pertama** = baterai berhenti diisi saat mencapai persentase ini.
- **Angka kedua** (opsional) = baterai mulai diisi lagi saat turun di bawah persentase ini.

Contoh:

| Perintah | Artinya |
|----------|---------|
| `ChargeThreshold.exe on 80` | Berhenti mengisi di 80%. |
| `ChargeThreshold.exe on 70 60` | Berhenti di 70%, mulai mengisi lagi di 60%. |
| `ChargeThreshold.exe off` | Matikan batas → mengisi sampai 100%. |
| `ChargeThreshold.exe status` | Tampilkan status/batas saat ini. |

---

## Menjalankan manual lewat CMD

Kalau tidak mau memakai shortcut:

1. Buka **CMD** di folder ini (klik pada address bar Explorer, ketik `cmd`, tekan Enter).
2. Tidak perlu *Run as Administrator*.
3. Ketik salah satu perintah berikut:

```bat
ChargeThreshold.exe status
ChargeThreshold.exe on 80
ChargeThreshold.exe on 70 60
ChargeThreshold.exe off
```

---

## Kompatibilitas

Tidak ada daftar resmi. Dari pengujian terbatas, sepertinya semua ThinkPad mulai seri
**XX30** sampai model terbaru didukung.

Sudah diuji dan berfungsi di:

> X230, T530, T570, X280, X260

---

## Tips & pemecahan masalah

- **Jendela CMD muncul lalu langsung hilang?** Itu normal; perintah sudah dijalankan
  dan jendela menutup otomatis setelah 5 detik.
- **Muncul pesan `ChargeThreshold` tidak dikenali?** Berarti *Start in* shortcut masih
  menunjuk ke folder lain. Ikuti langkah "atur lokasi folder shortcut" di atas.
- **Baterai tidak berubah?** Coba jalankan `ChargeThreshold.exe status` dulu untuk
  memastikan program terbaca, lalu jalankan perintah `on`/`off` lagi.
- **Tidak mau pakai shortcut?** Jalankan langsung perintahnya lewat CMD seperti pada
  bagian "Menjalankan manual lewat CMD".
- Lihat juga `Instructions.png` untuk panduan bergambar.

---

## Lisensi

Silakan pakai, bagikan, dan modifikasi sesukamu. Jangan dijual.
