class Buku {
  int id;
  String judul;
  String penerbit;
  String harga;
  String kategori;

  Buku(
      {required this.id,
      required this.judul,
      required this.penerbit,
      required this.harga,
      required this.kategori});
}

class tokoBuku {
  List<Buku> dataBuku = [];

  void tambahBuku(Buku data) {
    dataBuku.add(data);
  }

  void hapusBuku(Buku data) {
    dataBuku.remove(data);
  }

  void listDataBuku() {
    print('Daftar Buku yang Tersedia : ');
    for (var listBuku in dataBuku) {
      print('ID Buku : ${listBuku.id}');
      print('Judul Buku : ${listBuku.judul}');
      print('Penerbit : ${listBuku.penerbit}');
      print('Harga : ${listBuku.harga}');
      print('Kategori : ${listBuku.kategori}');
      print('');
    }
  }
}

void main() {
  var toko = tokoBuku();
  var b1 = Buku(
      id: 01,
      judul: 'Sherlock Holmes Detective',
      penerbit: 'Gramedia',
      harga: 'Rp 75.000',
      kategori: 'Sci-Fi');

  var b2 = Buku(
      id: 02,
      judul: 'Percy Jackson Sea Of The Monster',
      penerbit: 'Kompas',
      harga: 'Rp 175.000',
      kategori: 'Sci-Fi');

  var b3 = Buku(
      id: 03,
      judul: 'The Psychology of Money',
      penerbit: 'BACA',
      harga: 'Rp 150.000',
      kategori: 'Self Development');

  //TAMBAH BUKU
  toko.tambahBuku(b1);
  toko.tambahBuku(b2);
  toko.tambahBuku(b3);

  //REMOVE BUKU
  toko.hapusBuku(b2);

  //MENAMPILKAN LIST DATA BUKU
  toko.listDataBuku();
}
