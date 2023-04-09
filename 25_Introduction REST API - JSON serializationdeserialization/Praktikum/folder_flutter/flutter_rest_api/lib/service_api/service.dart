import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ServiceApi {
  final Dio dio = Dio();

  Future postData({required String name, required String phone}) async {
    try {
      final Response response = await dio.post(
        'https://jsonplaceholder.typicode.com/posts',
        data: {
          'name': name,
          'phone': phone,
        },
      );

      return response.data;
    } catch (e) {
      rethrow;
    }
  }

  Future readData() async {
    try {
      final Response response = await dio.get(
          "https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts");

      debugPrint(response.data.toString());
      return response.data;
    } catch (e) {
      // print(e);
      rethrow;
    }
  }

  Future fetchImage(String url) async {
    try {
      final Response response = await dio.get(url);

      // debugPrint(response.data.toString());
      Widget image = SvgPicture.string(response.data);
      return image;
    } catch (e) {
      // print(e);
      rethrow;
    }
  }

  Future<Widget> fetchImageBySeed(String url) async {
    try {
      final Response response = await dio.get(url);

      // debugPrint(response.data.toString());
      Widget image = SvgPicture.string(
        response.data,
      );
      return image;
    } catch (e) {
      // print(e);
      rethrow;
    }
  }

  // metode POST Prioritas 1
  // Future createData({
  //   required String name,
  //   required String phone,
  // }) async {
  //   final Response response = await dio.post(
  //       'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts',
  //       data: {'name': name, 'phone': phone});

  //   final DataModels DataModels = DataModels.fromJson(response.data);
  //   log('POST DATA');
  //   log('Isi Body : ${response.data.toString()}');
  //   return response.data;
  // }

  Future updateData({
    required String name,
    required String phone,
  }) async {
    try {
      int id = 1;
      final Response response = await dio.put(
        'https://jsonplaceholder.typicode.com/posts/$id',
        data: {
          'name': name,
          'phone': phone,
        },
      );

      return response.data;
    } catch (e) {
      rethrow;
    }
  }
}
