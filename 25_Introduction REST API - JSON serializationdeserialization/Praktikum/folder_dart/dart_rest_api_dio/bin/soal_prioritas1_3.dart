import 'package:dio/dio.dart';

void main(List<String> args) async {
  final Dio dio = Dio();

  Dio().get('https://jsonplaceholder.typicode.com/posts/1').then((response) {
    print('SEBELUM DI PUT');
    print(response);
  });

  Response response =
      await dio.put('https://jsonplaceholder.typicode.com/posts/1', data: {
    'userId': 1,
    'id': 1,
    'title': 'foo',
    'body': 'bar',
  });
  print('\nSETELAH DI PUT');
  print(response);
}
