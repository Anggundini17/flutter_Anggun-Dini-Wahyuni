import 'dart:math';

class BangunRuang {
  num panjang;
  num lebar;
  num tinggi;

  BangunRuang(
      {required this.panjang, required this.lebar, required this.tinggi});

  void volume() {
    print('Menghitung Besar Volume Bangun Ruang');
  }
}

class Kubus {
  num sisi;

  Kubus({required this.sisi});

  @override
  void volume() {
    num volumeKubus = pow(sisi, 3);
    print('Nilai Volume Bangun Ruang Kubus adalah $volumeKubus cm3');
  }
}

class Balok extends BangunRuang {
  Balok({required super.panjang, required super.lebar, required super.tinggi});

  @override
  void volume() {
    num volumBalok = panjang * lebar * tinggi;
    print('Nilai Volume Bangun Ruang Balok adalah $volumBalok cm3');
  }
}

void main() {
  //INISIALISASI OBJEK BANGUN RUANG
  Kubus v1 = Kubus(sisi: 12);
  Balok v2 = Balok(panjang: 10, lebar: 17, tinggi: 100);

  //MENCETAK OUTPUT BANGUN RUANG
  v1.volume();
  v2.volume();
}
