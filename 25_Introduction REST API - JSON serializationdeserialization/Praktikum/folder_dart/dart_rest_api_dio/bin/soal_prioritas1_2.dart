import 'dart:convert';

import 'package:dio/dio.dart';

class Contact {
  final int id;
  final String name;
  final String phone;

  Contact({
    required this.id,
    required this.name,
    required this.phone,
  });

  //CARA 1: Mengubah data JSON ke dalam Objek Class
  factory Contact.fromJson(Map<String, dynamic> json) {
    return Contact(
      id: json['id'],
      name: json['name'],
      phone: json['phone'],
    );
  }
}

void main() async {
  // final Dio dio = Dio();
  // final responseData = await dio.get(
  //     'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts/2');
  // final json = responseData.data;
  // final contact = Contact.fromJson(json);
  // print(contact.id);
  // print(contact.name);
  // print(contact.phone);

  //CARA 2: Mengubah data JSON ke dalam Objek Class
  var dataFromJSON = '{"name":"John Thor", "phone":"0857676565688"}';
  var dataMap = jsonDecode(dataFromJSON);
  print(dataMap);
}
