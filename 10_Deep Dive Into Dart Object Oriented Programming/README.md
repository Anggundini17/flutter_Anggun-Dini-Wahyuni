Summary Deep Dive Into Dart Object Oriented Programming

Paradigma OOP

- Objek yang memiliki atribut yang dapat melakukan sebuah operasi yang dilakukan pada method atau function.
- Pada bahasa pemrograman dart, dart dapat membuat fungsional programming dan object oriented programming.

Konsep - Konsep pada Dart OOP

- Constructor
    Merupakan fungsi untuk mebuat sebuah objek yang dapat menerima parameter, tidak memiliki nilai pengembalian, nama pada constructor sama dengan nama class.
    Cara menuliskan constructor adalah :
    class_name(this.nama_properti)
        - Contohnya :
        Animal(this.name)

- Inheritence
    Merupakan sebuah pewarisan setiap karakteristik/operasi class induk (Parenth Class) ke class anaknya (Child Class). Dalam menggunakan inheritence digunakan keyword 'extends'.
        - Contohnya :
        Aespa extends Girlgroup{}

- Overriding Method
    Merupakan adalah sebuah method yang ada pada Super Class yang dituliskan pada class lain dengan proses yang berbeda. Untuk menggunakan method overriding digunakan keyword '@override'. Method overriding digunakan pada kelas yang melakukan inheritence.

- Polymorphism
    Merupakan objek dapat memiliki bentuk yang berbeda - beda.

- Abstract Class
    Merupakan sebuah abstraksi kelas untuk menginisialisasi sebuah method yang ada pada sebuah kelas. Pada abstract class, method tidak wajib untuk di override seluruhnya.

- Interface
    Merupakan sebuah kelas yang menunjukkan method yang digunakan. Untuk meggunakan interface digunakan keyword 'implement'. Method pada interface wajib untuk di override seluruhnya.

- Generics
    Digunakan pada sebuah class dang function yang dapat menerima sebuah tipe data yang berbeda.
