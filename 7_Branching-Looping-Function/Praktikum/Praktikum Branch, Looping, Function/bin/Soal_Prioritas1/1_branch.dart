import 'package:branch/branch.dart' as branch;
import 'dart:io';

void main(List<String> arguments) {
  checkNilai(97);
  checkNilai(67);
  checkNilai(37);
  checkNilai(-145);
}

void checkNilai(int number) {
  var numbA = 70;
  var numbB = 40;
  var numbC = 0;

  if (number >= numbA) {
    print('Nilai A');
  } else if (number >= numbB) {
    print('Nilai B');
  } else if (number >= numbC) {
    print('Nilai C');
  } else {
    print('Nilai Kosong');
  }
}
