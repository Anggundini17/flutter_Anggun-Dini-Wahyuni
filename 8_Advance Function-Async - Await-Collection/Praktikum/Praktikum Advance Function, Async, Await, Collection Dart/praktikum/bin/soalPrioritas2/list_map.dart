void main() {
  List<List> boyGrup = [
    ['SM', 'NCT'],
    ['Cube', 'Pentagon'],
    ['Hybe', 'Seventeen']
  ];
  Map dataBoyGroup = {};

  for (var element in boyGrup) {
    dataBoyGroup[element[0]] = element[1];
  }
  print('Data sebelum Map : $boyGrup');
  print('Ini data dari Map $dataBoyGroup');
}
