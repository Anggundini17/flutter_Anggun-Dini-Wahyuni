void main() {
  frequency();
}

void frequency() {
  List<String> nation = [
    'Japan',
    'Korean',
    'Indonesian',
    'Japan',
    'Indonesian',
    'Australian',
    'American',
    'British',
    'American',
    'British',
  ];

  List dataNation = nation.toSet().toList();
  Map<String, int> nationFrequency = {};

  for (var valueFrequency in dataNation) {
    nationFrequency[valueFrequency] = 0;
    for (var element in nation.where((element) => element == valueFrequency)) {
      nationFrequency.update(valueFrequency, (value) => ++value);
    }
  }

  print(nationFrequency);
}
