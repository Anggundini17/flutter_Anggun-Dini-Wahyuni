import 'dart:io';

void main() {
  int i, j, k = 1;

  for (i = 0; i <= 8; i++) {
    for (j = 0; j <= 8; j++) {
      if (i + j == 8) {
        for (var l = 0; l < k; l++) {
          stdout.write(" * ");
        }
        k += 2;
      } else if (i + j < 8) {
        stdout.write("   ");
      }
    }
    print("\n");
  }
}
