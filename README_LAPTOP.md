# Sistem Pendukung Keputusan Pemilihan Laptop - Aditya Computer

## Deskripsi Proyek
Sistem Pendukung Keputusan (SPK) untuk membantu konsumen dalam memilih laptop yang sesuai dengan kebutuhan dan preferensi mereka di Aditya Computer. Sistem ini menggunakan metode Analytical Hierarchy Process (AHP) untuk memberikan rekomendasi laptop terbaik berdasarkan kriteria-kriteria yang telah ditentukan.

## Latar Belakang
Dalam memilih laptop, khususnya di Aditya Komputer, konsumen seringkali menghadapi kesulitan dalam menentukan pilihan yang sesuai dengan kebutuhan dan preferensi mereka. Hal ini disebabkan oleh banyaknya jenis dan merek laptop yang tersedia, masing-masing dengan spesifikasi, harga, dan fitur yang beragam.

## Metode yang Digunakan
**Analytical Hierarchy Process (AHP)** - Metode pengambilan keputusan yang menggunakan perbandingan berpasangan antar pilihan untuk membantu menentukan alternatif terbaik berdasarkan kriteria dan sub-kriteria yang relevan.

## Kriteria Penilaian

### Kriteria Utama:
1. **Performa (K1)** - Sangat Penting ke-1 (39.5%)
   - High-End
   - Mid-Range  
   - Entry-Level
   - Basic
   - Low-End

2. **Harga (K2)** - Penting ke-2 (23.9%)
   - Sangat Terjangkau
   - Terjangkau
   - Normal
   - Mahal
   - Sangat Mahal

3. **Penyimpanan (K3)** - Cukup Penting ke-3 (17.3%)
   - Sangat Besar
   - Besar
   - Sedang
   - Kecil
   - Sangat Kecil

4. **Daya Tahan Baterai (K4)** - Biasa ke-4 (12.0%)
   - Sangat Lama
   - Lama
   - Sedang
   - Kurang
   - Sangat Kurang

5. **RAM (K5)** - Kurang Penting ke-5 (7.3%)
   - 32GB (Sangat Tinggi)
   - 16GB (Tinggi)
   - 12GB (Sedang)
   - 8GB (Rendah)
   - 4GB (Sangat Rendah)

## Alternatif Laptop
1. **MacBook Pro 14"** - Apple
2. **Dell XPS 13** - Dell
3. **Lenovo ThinkPad E14** - Lenovo
4. **Axio Pongo** - Axio
5. **Asus ROG Strix G15** - Asus

## Struktur Database

### Tabel Utama:
- `admin` - Data administrator sistem
- `data_laptop` - Data laptop yang tersedia
- `kriteria` - Kriteria penilaian utama
- `sub_kriteria` - Sub kriteria dari setiap kriteria
- `seleksi` - Hasil penilaian dan ranking laptop
- `penilaian_laptop` - Detail penilaian setiap laptop
- `register` - Data registrasi pengguna

## Teknologi yang Digunakan
- **Database**: MySQL/MariaDB
- **Backend**: Java (NetBeans IDE)
- **Frontend**: Java Swing
- **Reporting**: JasperReports
- **Libraries**:
  - MySQL Connector
  - JasperReports
  - Commons Libraries
  - TestNG

## Instalasi dan Setup

### Prerequisites:
- JDK 8 atau lebih tinggi
- MySQL/MariaDB
- NetBeans IDE

### Langkah Instalasi:
1. Clone atau download project ini
2. Import database dari file `database/spk_seleksi_laptop_ahp.sql`
3. Konfigurasi koneksi database di `src/koneksi/Koneksi.java`
4. Buka project di NetBeans IDE
5. Build dan run aplikasi

## Cara Penggunaan
1. Login sebagai admin menggunakan:
   - Username: `admin`
   - Password: `admin`
2. Kelola data laptop melalui menu Data Laptop
3. Atur kriteria dan sub kriteria penilaian
4. Lakukan proses seleksi menggunakan metode AHP
5. Lihat hasil rekomendasi dan laporan

## Fitur Aplikasi
- ✅ Manajemen data laptop
- ✅ Pengaturan kriteria dan sub kriteria
- ✅ Perhitungan AHP otomatis
- ✅ Ranking dan rekomendasi laptop
- ✅ Laporan hasil seleksi
- ✅ Dashboard admin
- ✅ Login dan registrasi user

## Screenshot Aplikasi
*(Tambahkan screenshot aplikasi di sini)*

## Kontribusi
Untuk kontribusi pada proyek ini, silakan:
1. Fork repository
2. Buat branch feature baru
3. Commit perubahan
4. Push ke branch
5. Buat Pull Request

## Lisensi
Proyek ini dibuat untuk keperluan akademik dan pembelajaran.

## Kontak
Untuk pertanyaan atau saran, silakan hubungi:
- Email: admin@adityacomputer.com
- Website: www.adityacomputer.com

---
*Sistem Pendukung Keputusan Pemilihan Laptop menggunakan Metode AHP - Aditya Computer*
