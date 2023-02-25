import 'dart:io';

void main() {
  multiplyTable(9);
}

void multiplyTable(int number) {
  for (var i = 1; i <= number; i++) {
    for (var j = 1; j <= number; j++) {
      stdout.write("${j * i} \t");
    }
    stdout.write("\n");
  }
}
