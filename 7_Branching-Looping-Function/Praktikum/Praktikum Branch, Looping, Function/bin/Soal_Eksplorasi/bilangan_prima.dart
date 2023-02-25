import 'dart:io';

void main() {
  print('Prime Number Program');
  int numb = 17;

  //Menyimpan data faktorisasi dalam list
  List faktor = [];

  //Mencetak faktorisasi
  for (var n = 1; n <= numb; n++) {
    if (numb % n == 0) {
      faktor.add(n);
    }
  }

  //Mengecek Bilangan Prima
  if (numb >= 1 && faktor.length == 2) {
    print('The Number $numb is Prime Number');
  } else {
    print('The Number $numb Not Prime Number');
  }
}
