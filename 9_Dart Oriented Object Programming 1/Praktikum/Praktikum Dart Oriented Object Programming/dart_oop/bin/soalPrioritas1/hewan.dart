import 'dart:io';

class Hewan {
  num berat;
  String namaHewan;

  Hewan({required this.berat, required this.namaHewan});
}

class Mobil {
  num kapasitas = 7000;
  List<Hewan> muatan = [];

  void tambahMuatan(Hewan jenisHewan) {
    if (jenisHewan.berat + totalMuatan() <= kapasitas) {
      muatan.add(jenisHewan);
      print('${jenisHewan.namaHewan} berhasil ditambahkan kedalam muatan');
    } else {
      print(
          '\nMaaf ${jenisHewan.namaHewan} gagal ditambahkan kedalam muatan, karena kapasitas sudah penuh\n');
    }
  }

  num totalMuatan() {
    num totalHewan = 0;
    for (var hewannya in muatan) {
      totalHewan += hewannya.berat;
    }
    return totalHewan;
  }
}

void main() {
  var h1 = Hewan(berat: 1300, namaHewan: 'Jerapah');
  var h2 = Hewan(berat: 2700, namaHewan: 'Sapi');
  var h3 = Hewan(berat: 1500, namaHewan: 'Kerbau');
  var h4 = Hewan(berat: 2500, namaHewan: 'Gajah');

  var m = Mobil();

  //Menjalankan Metode Tambah Muatan
  m.tambahMuatan(h1);
  m.tambahMuatan(h2);
  m.tambahMuatan(h3);
  m.tambahMuatan(h4);

  //Menampilkan hasil
  print('Total muatan mobil adalah sebesar ${m.totalMuatan()} kg');
}
