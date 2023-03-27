Summary Flutter Navigation

1. Navigation
    - Navigation digunakan untuk berpindah dari satu halaman ke halaman lainnya.

2. Basic Navigation
    - Untuk menggunakan navigation secara dasar adalah menggunakan NavigationMaterialRoute yang digunakan saat menuju ke suatu halaman.
    - Untuk perpindahan halaman menggunakan Navigator.push(context,
                  MaterialPageRoute(
                    builder: (context) => NamaHalaman(),
                  ),).
    - Untuk kembali ke halaman sebelumnya Navigator.pop().

3. Navigation dengan Names Routes
    - Memiliki route pada setiap halaman.
    - Saat perpindahan halaman menggunakan Navigator.pushNamed().
    - Saat kembali ke halaman sebelumnya menggunakan Navigator.pop().
    - Cara menggunakan route adalah dengan mendaftarkan route dengan menambahkan initialRoute dan routes pada MaterialApp. Setiap route berfungsi untuk membentuk halaman.
    - Untuk mengirimkan data ke halaman baru menggunakan arguments.
