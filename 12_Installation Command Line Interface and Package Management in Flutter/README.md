Summary Installation Command Line Interface and Package Management in Flutter

1. Flutter CLI
    - Merupakan sebuah tool untuk berinteraksi bersama SDK yang dimiliki oleh Flutter
    - Command - command dijalankan pada terminal

2. Command - Command pada Flutter
    - `flutter doctor` digunakan untuk menampilkan informasi yang dibutuhkan oleh flutter
    - `flutter create` digunakan untuk membuat projek flutter
    - `flutter run` digunakan untuk menjalankan projek flutter
    - `flutter emulator` digunakan untuk menampilkan daftar emulator yang telah terinstall pada flutter
    - `flutter channel` digunakan untuk menampilkan daftar channel dang channel yang digunakan pada flutter
    - `flutter pub` digunakan untuk mengeksekusi package pada flutter.
    - `flutter build` digunakan untuk membuat file aplikasi untuk di deploy atau dipublish di AppStore, PlayStore, dan lainnya.
    - `flutter clean` digunakan untuk menghapus folder build saat menjalankan aplikasi flutter dan akan memperkecil ukuran project.

3. Packages Management
    - Packages dibuat oleh developer - developer
    - Digunakan untuk mempercepat pengembangan aplikasi, yang tidak perlu membangunnya dari 0.
    - Package dapat diakses dan diambil melaui website pub.dev
    - Cara menambahkan package pada project flutter antara lain :
        1. Memilih package yang ada di pub.dev
        2. Copy kode dependencies pada bagian installing
        3. Kemudian, paste kode depedencies ke pubspac.yaml
        4. Jalankan flutter pub get di terminal
        5. Import package pada file dart yang ingin digunakan
        6. Restart aplikasi.
