import 'dart:async';

void main() async {
  List<int> numb = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List<int> resultMultiply = await multiplyNumber(numb, 11);
  print(resultMultiply);
}

Future<List<int>> multiplyNumber(List<int> data, int multiply) async {
  List<int> result = [];
  for (var value in data) {
    await Future.delayed(
      Duration(seconds: 1),
      () => print('Waiting for 1 Seconds'),
    );
    result.add(value * multiply);
  }
  return result;
}
