Summary Storage

1. Penyimpanan Lokal
	- Digunakan untuk efisiensi penggunaan data internet
	- Implementasi storage dapat menggunakan Shared Preference maupun Local Database

2. Shared Preference
	- Digunakan untuk meyimpan data sederhana yang memiliki ukuran kecil seperti teks, angka, dan boolean.
	- Format data adalah key-value.
	- Contoh implementasi dari Shared Preference adalah penyimpanan data pada fittur login dan history pencarian.
	- Untuk menggunakan Shared Preference harus menambahkan package shared_preference pada pubspac.yaml

3. Local Database
	- Digunakan untuk menyimpan data dalam skala yang besar pada local device.
	- Data bersifat private yang hanya dapat digunakan pada satu aplikasi saja
	- Salah satu penggunaan local database adalah menggunakan SQLite.
	- SQLite merupakan sebuah database open source yang mendukung insertData, readData, updateData, dan removeData.
	- Untuk menggunakan SQLite harus menambahkan package sqflite dan path pada pubspac.yaml.