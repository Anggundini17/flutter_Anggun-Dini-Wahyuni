import 'package:flutter_finite_state/model/api/api_food_model.dart';
import 'package:flutter_finite_state/model/food_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';

import 'api_food_model_test.mocks.dart';

@GenerateMocks([FoodAPI])
void main() {
  group('FoodAPI', () {
    FoodAPI foodAPI = MockFoodAPI();
    test('get all food data returns data', () async {
      when(foodAPI.getFood()).thenAnswer(
        (_) async => <Food>[
          Food(id: 1, name: 'mie'),
        ],
      );
      var foods = await foodAPI.getFood();
      expect(foods.isNotEmpty, true);
    });
  });
}
