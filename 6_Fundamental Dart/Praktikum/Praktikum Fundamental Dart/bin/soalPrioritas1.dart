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
  const pi = 22 / 7;
  const pi2 = 3.14;
  num luas;
  num keliling;

  if (j % 7 == 0) {
    luas = pi * pow(j, 2);
    keliling = 2 * pi * j;
  } else {
    luas = pi2 * pow(j, 2);
    keliling = 2 * pi2 * j;
  }

  print(
      'LINGKARAN\nDiketahui lingkaran memiliki jari - jari sebesar $j cm.\nMaka, Luas dan Kelilingnya adalah ');
  print('Luas : $luas cm');
  print('Keliling : $keliling cm');
}
