import 'dart:io';

void main() {
  //Eksplorasi 1 Membuat Palindrom Program
  print('Palindrom Program');

  //Menginput text
  print('Enter the text : ');
  String inText = stdin.readLineSync() ?? "";

  //Membalikkan text
  String reverse = inText.split("").reversed.join("");

  //Mengecek palindrom
  if (reverse == inText) {
    print('\nThe result :\n$inText\n$reverse');
    print('This is palindrome\n');
  } else {
    print('The result :\n$inText\n$reverse');
    print('This is not palindrome\n');
  }

  //Eksplorasi 2 Membuat Program Faktorisasi
  print('Factorization Program');

  //Menginput angka yang akan di faktorisasi
  print('Enter the number : ');
  int? numb = int.parse(stdin.readLineSync()!);

  //Mencetak faktorisasi
  for (var n = 1; n <= numb; n++) {
    if (numb % n == 0) {
      print(n);
    }
  }
}
