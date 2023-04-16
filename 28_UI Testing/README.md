Summary UI Testing

1. Pengertian UI Testing.
	- Merupakan tahapan penting, testing dapat menemukan bug dan masalah yang terjadi pada aplikasi.
	- Pengujian pada tampilan aplikasi untuk memastikan bahwa aplikasi dapat menerima interaksi dan merespon user.
	- Pada flutter, disebut dengan widget testing yang dilakukan pada widget dengan menuliskan script yang dapat dijalankan secara otomatis.

2. Keuntungan UI Testing
	- Memaastikan seluruh fitur pada widget memberikan tampilan sesuai dengan yang diinginkan.
	- Memastikan seluruh interaksi dapat diterima secara baik.
	- Menjadi ketentuan yang harus diikuti saat diperlukan perubahan pada widget.

3. Melakukan UI Testing
	- Instalasi package testing, biasanya package testing sudah terinstall saat project pertama kali dibuat. Penginstalan package juga dapat dilakukan secara manual dengan menggunakan shortcut Ctrl+Shift+P+>, lalu pilih add dev_depedencies, kemudian ketik flutter test dan klik.
	- Menuliskan script testing, dilakukan pada folder test. Nama file harus diikuti _test.dart, contoh jamal_ganteng_test.dart. Untuk cara cepat membuat file testing adalah dengan mengklik file yang ingin di test lalu klik go to test. Tiap file testing berisi fungsi main() yang didalamnya dituliskan script testing. Setiap skenario disebut test case.
	- Script testing, dimana setiap test case diawali dengan testWidgets dengan memberikan judul.
	- Menjalankan testing, untuk menjalankan testing dapat menjalankan perintah flutter test. Perintah ini akan menjalankan seluruh file test yang telah dibuat. Output saat kita menjalankan perintah ini adalah durasi pengujian, total pengujian, dan pesan hasil pengujian apakah pengujian berhasil atau gagal. Jika menggunakan flutter test kita akan menjalankan seluruh file testing, kita juga dapat menjalankan test pada setiap case test saja. Nantinya akan menampilkan hasil skenario test yang dijalankan