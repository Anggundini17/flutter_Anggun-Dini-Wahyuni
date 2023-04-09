import 'package:dio/dio.dart';

// final Dio dio = Dio();

void main() async {
  final Dio dio = Dio();
  Response response = await dio.post(
      'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts',
      data: {
        'name': 'Jefferey Wijaya',
        'phone': '08292827261',
      });
  print('POST DATA');
  print(response);

  Dio()
      .get(
          'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts')
      .then((response) {
    print('GET DATA');
    print(response);
  });
}
