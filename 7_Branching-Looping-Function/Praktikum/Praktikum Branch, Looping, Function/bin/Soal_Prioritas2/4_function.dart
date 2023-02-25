import 'dart:math';

void main() {
  print(lingkaran(21));
}

String lingkaran(num j) {
  const pi = 22 / 7;
  const pi2 = 3.14;
  num luas;

  if (j % 7 == 0) {
    luas = pi * pow(j, 2);
  } else {
    luas = pi2 * pow(j, 2);
  }

  return 'Luas lingkaran dengan jari - jari $j cm adalah $luas cm';
}
