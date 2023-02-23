import 'dart:math';

void main() {
  //Prioritas 2.1
  //Inisialisasi Variabel
  var sun = 'Sunshine';
  var sayName = 'Anggun';
  var city = 'Batam';

  //Menampilkan variabel yang telah diinisialisasi
  print('Hallo, $sun! My name is $sayName, i am from $city.\n');

  //Prioritas 2.2
  tabung(5, 11);
}

void tabung(num r, num t) {
  const pi = 3.14;
  num v = pi * pow(r, 2) * t;

  print(
      'Volume Lingkaran\nDiketahui jari - jari dan tinggi tabung masing sebesar $r dan $t');
  print('Maka, volume tabung adalah sebesar $v');
}
