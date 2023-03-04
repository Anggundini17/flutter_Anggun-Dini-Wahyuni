void main() async {
  print(await faktorial(7));
}

Future<int> faktorial(int number) async {
  int hasil = 1;
  for (var i = 1; i <= number; i++) {
    await Future.delayed(Duration(seconds: 1));
    hasil = hasil * i;
  }

  return hasil;
}
