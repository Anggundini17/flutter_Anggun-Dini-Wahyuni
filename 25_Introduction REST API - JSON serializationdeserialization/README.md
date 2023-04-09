Summary Introduction REST API - JSON serialization/deserialization

1. REST API
	- REST merupakan kepanjangan dari Representational State Transfer dan API merupakan kepanjangan dari Application Programming Interface.
	- REST API digunakan untuk memisahkan antara tampilan (UI) dengan proses bisnis.
	- Merupakan jembatan antara server dan client, dimana client adalah aplikasi.
	- Tampilan dan proses bisnis diproses oleh HTTP Request.

2. HTTP dan Dio
	- HTTP merupakan sebuah protokol yang digunakan untuk mengirim data pada internet dan data berbentuk media web. Untuk menggunakan http di flutter, flutter telah menyediakannya, jika ingin digunakan dapat menginstalnya lalu didaftarkan kedalam pubspac.yaml.
	-Dalam HTTP client mengirim data dan server mengolah dan membalas dengan response.
	- Dalam HTTP terdiri dari Struktur Request dan Struktur Response. Struktur Request terdiri dari URL, Method, Header, dan Body. Sedangkan Struktur Response terdiri dari Status Code, Header, dan Body

	- Dio merupakan sebuah package yang tersedia di pub.dev, dimana Dio merupakan HTTP Client yang dimanfaatkan untuk melakukan REST API.
	- Untuk menggunakan Package Dio dapat menginstalnya di pub.dev, kemudia daftarkan di pubspac.yaml.

3. Serialisasi JSON
	- JSON merupakan Javascript Object Notation yang biasanya digunakan untuk REST API
	- Penulisan data JSON dalam bentuk key dan value.
	- Serialisasi JSON teridiri dari dua, yaitu Serialisasi JSON dan Deserialisasi JSON.
	- Serialisasi JSON menggunakan fungsi jsonEncod untuk mengubah data dari Map/List kedalam bentuk json
	- Deserialisasi JSON menggunakan fungsi jsonDecode untuk mengubah data dari json kedalam data Nap/List.