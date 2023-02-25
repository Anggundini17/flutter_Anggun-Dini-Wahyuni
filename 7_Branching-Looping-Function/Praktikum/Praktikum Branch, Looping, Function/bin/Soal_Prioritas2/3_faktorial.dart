import 'dart:io';

void main() {
  faktorial(10);
  faktorial(40);
  faktorial(50);
}

void faktorial(int number) {
  BigInt hasil = BigInt.from(1);
  for (var i = 1; i <= number; i++) {
    hasil = hasil * BigInt.from(i);
  }

  print('Faktorial dari bilangan $number adalah $hasil');
}
