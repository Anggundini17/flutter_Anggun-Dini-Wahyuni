Summary Finite State Machine & Unit Testing

1. Finite State Machine
    - Merupakan sebuah mesin yang memiliki sejumlah state.
    - Tiap state akan menunjukkan apa yang terjadi sebelumnya.
    - Terdiri dari 3 state, yaitu IDDLE, RUNNING, dan ERROR
    - IDDLE saat tidak terjadi proses apapun, RUNNING saat proses sedang dijalankan, ERROR saat proses gagal dijalankan.

2. Widget and ViewModel with Finite State
    - Untuk menggunakan finite state pada ViewModel adalah dapat membuat enum state, yaitu none, loading, dan error. State none saat IDDLE, loading saat RUNNING, dan error saat ERROR. Selanjutnya membuat getter dan setter untuk menyimpa state dari widget. Setelah itu dapat digunakan pada setiap fungsi yang membutuhkan state tersebut.
    - Finite Test pada Widget digunakan untuk menentukan sebuah tampilan yang akan dimunculkan. Penggunaan Finite state akan membedakann tampilan pada setiap state. Contoh saat state loading akan menampilkan progress indicator, saat state loading selesai dapat menampilkan data yang didapatkan, dan saat state error akan menampilkan pesan error.
    
3. Unit Testing
    - Unit Testing merupakan testing yang paling cepat. Pengujian untuk unit - unit kecil aplikasi. Seperti class, variabel, metode, dan fungsi. Untuk memverifikasi logic bisnis pada aplikasi.