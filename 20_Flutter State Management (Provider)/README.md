Summary Flutter State Management Provider

- State Management
  - State Management digunakan untuk mengelola state pada flutter.
  - Penggunaan state management dapat digunakan secara lokal maupun global. Penggunaan state management secara lokal digunakan dengan setState sedangkan global dapat menggunakan provider maupun BLoC.

- Provider
  - Penggunaan state menggunakan provider, state yang disimpan didalamnya dapat digunakan pada seluruh widget.
  - Untuk menggunakan Provider harus menginstall package provider.
  - Built in Class dari flutter SDK adalah menggunakan ChangeNotifier.

- Mengelola State dalam Provider
    1. Membuat sebuah wadah/variabel/objeknya untuk menyimpan datanya
    2. Memprovide data di widget cabang paling atas/tinggi. Jika hanya satu data class, maka menggunakan ChangeNotifierProvider, jika data lebih dari satu menggunakan MultiProvider.
    3. Untuk menggunakan datanya adalah memanggilnya di widget yang ingin digunakan datanya. Dibungkus dalam Consumer maupun Provide.of
