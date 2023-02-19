Summary Basic Version and Branch Management (Git)

1.  Pengenalan Git 

Merupakan salah satu version control system untuk mengembangkan software secara kolaborasi. Version control system Git bersifat distributed. Git akan melacak segala perubahan dari sebuah projek. 

2. Command - Command Pada Git

- 'git init' adalah sebuah perintah git untuk membuat sebuah folder direktori yang menandakan sudah ada version control system.
- 'git remote add origin "alamat_repository"' adalah sebuah perintah untuk melakukan sinkronisasi antara yang di local dan di repository.
- 'git add' untuk menambahkan perubahan yang terjadi pada projek.
- 'git commit' adalah perintah untuk menyimpan dan menandai perubahan yang akan disimpan ke repositori
- 'git push' adalah perintah untuk mengirimkan perubahan yang telah di commit ke repository
- 'git branch' adalah perintah untuk mengatur branch pada git
- 'git status' adalah perintah untuk mengecek status perubahan file.


3. Cara Kerja Git
- Working Directory adalah area yang dieksekusi oleh pengembang untuk melakukan perubahan - perubahan. Perubahan - perubahan yang dilakukan dapat ditambahkan ke staging area dengan menggunakan command "git add".
- Staging Area adalah untuk menandai bagian - bagian yang berubah. Perubahan yang sudah masuk kedalam staging area siap untuk disimpan pada repository. Untuk menyimpan dan menandai perubahan yang terjadi menggunakan command "git commit". Dan git siap untuk dikirim ke servernya. Untuk mengirim ke repository menggunakan coommand "git push origin master".
- Repository adalah tempat yang menyimpan perubahan - perubahan yang sudah disimpan dalam bentuk commit.