Summary Platform Widget

- Platform Widget
    1. Widget Material App
    2. Widget Cupertino App

- Widget Material App
  - Merupakan widget untuk membangun tampilan desain pada platform Android.
  - Untuk menggunakan widget Material App harus mengimport package:flutter/material.dart
  - Struktur pada Material App terdiri dari theme untuk mengatur tampilan tema aplikasi, home merupakan route utama aplikasi, dan routes untuk mendaftarkan routes yang ada pada aplikasi.
  - Untuk membangun Material App menggunakan widget Scaffold. Setelah menggunakan widget Scaffold, kita dapat membuat sebuah AppBar, Body, dan Bottom Navigation Bar, dan Drawer(Opsional sesuai kebutuhan).

- Widget Cupertino App
  - Merupakan widget yang digunakan untuk membangun tampilan desain dari platform iOS.
  - Untuk menggunakan widget Cupertino harus mengimport package:cupertino.dart.
  - Pada widget cupertino tidak menyediakan ThemeData seperti MaterialApp, jika ingin menggunakan ThemeData maka harus menginisialisasikannya secara manual.
  - Jika pada MaterialApp menggunakan widget Scaffold untuk membuat halaman aplikasi, pada Cupertino App menggunakan widget CupertinoPageScaffold
  - AppBar pada widget Cupertino disebut dengan NavigationBar.
