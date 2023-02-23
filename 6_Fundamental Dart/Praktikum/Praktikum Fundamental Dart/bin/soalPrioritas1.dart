import 'dart:io';
import 'dart:math';

void main() {
  //Soal Prioritas 1.1
  persegi(11); //Menjalankan function persegi
  persegiPanjang(12, 10); //Menjalankan function persegi panjang

  //Soal Prioritas 1.2
  lingkaran(14); //Menjalankan function lingkaran
}

void persegi(int s) {
  int luas = s * s;
  int keliling = 4 * s;

  print(
      'PERSEGI\nDiketahui sisi persegi = $s cm. Maka, Luas dan Kelilingnya adalah ');
  print('Luas : $luas cm');
  print('Keliling : $keliling cm\n');
}

void persegiPanjang(int p, int l) {
  int luas = p * l;
  int keliling = 2 * (p + l);

  print(
      'PERSEGI PANJANG\nDiketahui persegi panjang memiliki panjang dan lebar masing - masing sebesar $p cm dan $l.');
  print('Maka, Luas dan Kelilingnya adalah ');
  print('Luas : $luas cm');
  print('Keliling : $keliling cm\n');
}

void lingkaran(num j) {
  const pi = 3.14;
  num luas = 2 * pi * j;
  num keliling = pow(j, 2);

  print(
      'LINGKARAN\nDiketahui lingkaran memiliki jari - jari sebesar $j cm.\nMaka, Luas dan Kelilingnya adalah ');
  print('Luas : $luas cm');
  print('Keliling : $keliling cm');
}
