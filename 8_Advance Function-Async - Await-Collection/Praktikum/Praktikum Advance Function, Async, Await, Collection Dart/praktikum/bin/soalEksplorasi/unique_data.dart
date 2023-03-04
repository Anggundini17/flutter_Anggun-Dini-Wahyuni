void main() async {
  List<String> uniqueName = [
    'Jae',
    'Shiho',
    'Taeyong',
    'Jae',
    'Ong',
    'Hwang',
    'Ong',
    'Jae',
    'Kun',
    'Ten',
  ];

  //Mengubah List kedalam bentuk Set
  Set<String> setUniqueName = Set.from(uniqueName);

  //Mencetak List
  print(uniqueName);

  //Mencetak Set
  print(setUniqueName);
}
