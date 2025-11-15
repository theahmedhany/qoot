import 'package:qoot/core/network/api_result.dart';
import '../../data/model/my_restaurant_response.dart';
import '../../domain/repositories/my_restaurant_repository.dart';

class MyRestaurantController {
  final MyRestaurantRepository _repository;

  MyRestaurantController(this._repository);

  Future<MyRestaurantResponse?> fetchMyRestaurant() async {
    final result = await _repository.fetchMyRestaurant();
    return result.when(
      success: (data) => data,
      failure: (_) => null,
    );
  }
}
