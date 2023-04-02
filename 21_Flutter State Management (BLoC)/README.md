Summary Flutter State Management BLoC

- BLoC
  - Merupakan singkatan dari Business Logic Component
  - Berguna untuk memisahkan UI dengan business logic

- Keunggulan BLoC
  - Simple
  - Powerful
  - Testable

- Cara Kerja BLoC
  - Menerima event sebagai input data.
  - Data dianalisa dan dikelola dalam BLoC
  - Akan menggunakan state sebagai hasil output.
  - Untuk menggunakan BLoC harus menginstall package BLoC dan Equatable di Pub.dev. Lalu didaftarkan di Pubspac.yaml
  - Terdapat Stream yang merupakan pemeran utama pada penggunaan BLoC dan rangkaian proses terjadi secara acyncronous.
  - Dalam penggunaan BLoC ada 3 class yang wajib dibuat yaitu class event, state, dan bloc.
