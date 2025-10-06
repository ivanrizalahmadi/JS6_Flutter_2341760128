![alt text](image.png)
# 📱 Flutter Layout – Jobsheet 6

Project ini merupakan hasil praktikum Flutter tentang **Layout** menggunakan widget dasar seperti `Row`, `Column`, `Expanded`, `Container`, `Text`, dan `Icon`.

# 📄 Praktikum 1: Layout

![soal 1,2,3](assets/image.png)

Row + Expanded + Column
Row digunakan untuk menyusun widget secara horizontal.
Expanded agar Column menyesuaikan ruang yang tersisa.
Column menampilkan teks judul dan lokasi.
Soal 1: crossAxisAlignment: CrossAxisAlignment.start -> membuat teks rata kiri.
Soal 2: Teks judul dibungkus Container dengan padding: EdgeInsets.only(bottom: 8) -> memberi jarak. Lokasi diberi warna abu-abu (Colors.grey).
Soal 3: Tambahkan Icon(Icons.star, color: Colors.red) dan teks "41" di sisi kanan.

Untuk output nya adalah sebagai berikut:
![output 1](assets/image-1.png)

# 📄 Praktikum 2: Implementasi Button Row
![button row](image-1.png)
Pada praktikum ini saya menambahkan baris tombol (button row) di bawah title section. Baris tombol berisi 3 buah kolom dengan tata letak yang sama:
Sebuah ikon
Sebuah teks di bawah ikon
Karena bentuknya sama, maka dibuat sebuah method helper bernama _buildButtonColumn() yang menerima parameter:
color → warna teks dan ikon
icon → ikon yang ditampilkan
label → teks di bawah ikon
![helper](image-2.png)

Soal 1: Mengapa dibuat method _buildButtonColumn?
Supaya kode lebih rapi dan tidak perlu menulis berulang kali untuk setiap tombol.
Metode ini mengembalikan sebuah Column yang berisi ikon dan teks.

Soal 2: Bagaimana cara memberi jarak antara ikon dan teks?
Teks diletakkan di dalam Container dengan margin: EdgeInsets.only(top: 8).
Margin ini memberi jarak 8 piksel di atas teks, sehingga teks tidak menempel dengan ikon.

Soal 3: Bagaimana cara meratakan tombol di dalam baris?
Baris tombol dibuat dengan Row().
Properti mainAxisAlignment: MainAxisAlignment.spaceEvenly digunakan agar semua kolom diberi jarak yang sama di sepanjang baris.

Untuk output nya sebagai berikut
![output prak 2](image-3.png)

# 📘 Praktikum 3: Implementasi Text Section

saya membuat variabel textSection yang berisi Container dengan padding 32 di semua sisi.
Di dalamnya terdapat widget Text dengan properti softWrap: true.
![padding](image-5.png)
lalu masukkan textSection ke dalam ListView body, setelah buttonSection.
![text section](image-4.png)

untuk output nya adalah sebagai berikut :
![output 3](image-6.png)


# Praktikum 4: Image Section

untuk awal awal saya memodifikasi file pubspec agar bisa mengambil gambar dari folder yang saya buat , yaitu assets/images
, lalu setelah nya saya memodifikasi file di main.dart agar dapat mengambil file folder foto nya dan juga mengatur layout gambarnya
seperti ini:
![Output 4](image-7.png)

Lalu untuk Output nya adalah sebagai berikut:
![output 5](image-8.png)

# Praktikum 5: 
Membuat Struktur Folder

Buat folder models untuk menyimpan model data.
Buat folder pages untuk menampung halaman HomePage dan ItemPage.
![alt text](image-9.png)

Membuat Model Data
Di dalam lib/models/item.dart, dibuat class Item yang berisi atribut name dan price sebagai representasi dari setiap barang.
![alt text](image-10.png)

Membuat Halaman HomePage
![alt text](image-11.png)
Di file lib/pages/home_page.dart, dibuat tampilan daftar barang menggunakan ListView.builder().
Setiap item dalam daftar menampilkan nama dan harga barang.
Saat item ditekan, akan berpindah ke halaman detail menggunakan Navigator.pushNamed().


Membuat Halaman ItemPage
![alt text](image-12.png)
Di file lib/pages/item_page.dart, halaman ini menerima data dari HomePage melalui arguments.
Menampilkan detail nama dan harga barang yang dipilih.

Menentukan Rute Navigasi
![alt text](image-13.png)
Di file lib/main.dart, ditentukan initialRoute dan routes untuk menghubungkan halaman '/' (HomePage) dan '/item' (ItemPage).

Lalu untuk output nya adalah sebagai berikut:
![alt text](image-14.png)
Ketika di klik akan diteruskan ke route item
![alt text](image-15.png)
![alt text](image-16.png)

# 🛒 Tugas Praktikum 2: Aplikasi Belanja Flutter

Struktur Folder dan file yang saya pakai untuk membuat aplikasi ini sama seperti praktikum 5, seperti berikut
![alt text](image-17.png)

Lalu mengatur image di pubspec
![alt text](image-18.png)

Membuat Model data nya 
![alt text](image-19.png)

Membuat Halaman Home 
![alt text](dart3.png)

Membuat Halaman Item
![alt text](image-20.png)

Lalu untuk Main nya mengimport dari halaman item dan home dan mengatur navigasi beserta route
![alt text](image-21.png)

tidak lupa untuk menambahkan Hero animation di home dan item page
![alt text](image-22.png)
Dengan ini, gambar akan berpindah dengan animasi halus saat pengguna menekan produk.

Untuk Output nya adalah Seperti Berikut:
![alt text](image-23.png)

Lalu ketika di klik pada setiap produk nya

Produk Garam
![alt text](image-24.png)

Produk Gula
![alt text](image-25.png)















A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
