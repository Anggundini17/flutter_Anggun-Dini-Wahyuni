Summary MVVMM

1. Pengertian MVVM
    - MVVM merupakan kepanjangan dari Model-View ViewModel
    - Digunakan untuk memisahkan antara code logic dan code view.

2. Keuntungan MVVM
    - Reusability, dimana saat beberapa tampilan memerlukan alur logic yang sama dapat menggunakan ViewModel yang sama tanpa harus membuat code logic baru.
    - Maintainability, dimana project dapat mudah dirawat karena code tampilan tidak tertumpuk bersama code logic yang dapat membuat developer kebingungan.
    - Tetability, dimana pengujian antara tampilan dengan logic menjadi terpisah yang dapat meningkatkan produktivitas pada pengujian.

3. Struktur MVVM
    - Pada struktur direktori MVVM terdiri dari folder Model, View, dan ViewModel
    - Model merupakan bentuk data yang digunakan dalam bentuk class, dimana data - data yang dimuat diletakkan pada property.
    - View menggunakan StatefulWidget. Pada View berisi code tampilan dari aplikasi.
    - ViewModel digunakan untuk menyimpan data - data dan logic yang diperlukan pada halaman aplikasi. Contohnya penggunaan State Management diletakkan pada ViewModel.
