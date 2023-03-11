abstract class Matematika {
  int hasil() {
    int hasil = 0;
    return hasil;
  }
}

class Kpk implements Matematika {
  int x;
  int y;

  Kpk({required this.x, required this.y});

  @override
  int hasil() {
    int kpk = 0;
    int i = 1;
    while (kpk == 0) {
      if (i % x == 0 && i % y == 0) {
        kpk = i;
      }
      i++;
    }
    return kpk;
  }
}

class Fpb implements Matematika {
  int x;
  int y;

  Fpb({required this.x, required this.y});

  @override
  int hasil() {
    while (y != 0) {
      var sisa = x % y;
      x = y;
      y = sisa;
    }
    // return x;
    var fpb = x;
    return fpb;
  }
}

main() {
  //INISILISASI VARIABEL MENGHITUNG CONTOH KPK DAN FPB 1
  Kpk hitungKpk1 = Kpk(x: 12, y: 18);
  Fpb hitungFpb1 = Fpb(x: 12, y: 18);

  //MENCETAK OUTPUT KPK DAN FPB 1
  print('MENCETAK HASIL KPK DAN FPB 1');
  print(
      'Hasil KPK dari bilangan ${hitungKpk1.x} dan ${hitungKpk1.y} adalah ${hitungKpk1.hasil()}');
  print(
      'Hasil FPB dari bilangan ${hitungFpb1.x} dan ${hitungFpb1.y} adalah ${hitungFpb1.hasil()}\n');
  hitungFpb1.hasil();

  //INISILISASI VARIABEL MENGHITUNG CONTOH KPK DAN FPB 2
  Kpk hitungKpk2 = Kpk(x: 28, y: 24);
  Fpb hitungFpb2 = Fpb(x: 28, y: 24);

  //MENCETAK OUTPUT KPK DAN FPB 2
  print('MENCETAK HASIL KPK DAN FPB 2');
  print(
      'Hasil KPK dari bilangan ${hitungKpk2.x} dan ${hitungKpk2.y} adalah ${hitungKpk2.hasil()}');
  print(
      'Hasil FPB dari bilangan ${hitungFpb2.x} dan ${hitungFpb2.y} adalah ${hitungFpb2.hasil()}');
  hitungFpb2.hasil();
}
