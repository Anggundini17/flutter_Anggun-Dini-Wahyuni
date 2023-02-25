import 'dart:io';

void main() {
  //Inisialisasi jumlah pola
  jamPasir(11);
}

void jamPasir(int n) {
  for (int i = 1; i <= n; i++) {
    for (int j = 1; j <= n; j++) {
      //Mencetak Jam Pasir
      if (j >= i && j <= n - i + 1 || j <= i && j >= n - i + 1) {
        stdout.write('0');
      } else {
        stdout.write(' ');
      }
    }
    stdout.write('\n');
  }
}
