void main() {
  average();
}

void average() {
  List<int> number = [70, 77, 75, 80, 87, 90, 100];
  var result = 0;

  for (var element in number) {
    result += element;
  }

  num score = result / number.length;
  print('Nilai rata - rata dari list number adalah:');
  print(score.ceil());
}
