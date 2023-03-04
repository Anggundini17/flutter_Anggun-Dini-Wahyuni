class Calculator {
  num penjumlahan(num a, num b) {
    num hasil = a + b;
    print(hasil);
    return hasil;
  }

  num pengurangan(num a, num b) {
    num hasil = a - b;
    print(hasil);
    return hasil;
  }

  num perkalian(num a, num b) {
    num hasil = a * b;
    print(hasil);
    return hasil;
  }

  num pembagian(num a, num b) {
    num hasil = a / b;
    print(hasil);
    return hasil;
  }
}

void main() {
  var hasil = Calculator();
  hasil.penjumlahan(100, 210);
  hasil.pengurangan(210, 170);
  hasil.perkalian(7, 100);
  hasil.pembagian(175, 10);
}
