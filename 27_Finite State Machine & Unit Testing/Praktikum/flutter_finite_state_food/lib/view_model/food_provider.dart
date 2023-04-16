import 'package:flutter/cupertino.dart';
import 'package:flutter_finite_state/model/api/api_food_model.dart';
import 'package:flutter_finite_state/model/food_model.dart';

enum FoodViewState {
  none,
  loading,
  error,
}

class MyFood with ChangeNotifier {
  FoodViewState _state = FoodViewState.none;
  FoodViewState get state => _state;

  List<Food> _food = [];
  List<Food> get food => _food;

  changeState(FoodViewState fws) {
    _state = fws;
    notifyListeners();
  }

  Future getAllFood() async {
    changeState(FoodViewState.loading);
    try {
      final foodApi = FoodAPI();
      final f = await foodApi.getFood();
      _food = f;
      notifyListeners();
      changeState(FoodViewState.none);
    } catch (e) {
      changeState(FoodViewState.error);
    }
  }
}
