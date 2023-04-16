import 'package:dio/dio.dart';

import '../food_model.dart';

class FoodAPI {
  Future<List<Food>> getFood() async {
    final response = await Dio().get(
        'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/foods');

    List<Food> food = (response.data as List)
        .map((e) => Food(id: e['id'], name: e['name']))
        .toList();

    return food;
  }
}
