import 'package:qoot/core/network/api_result.dart';
import '../../data/model/my_restaurant_response.dart';

abstract class MyRestaurantRepository {
  Future<ApiResult<MyRestaurantResponse>> fetchMyRestaurant();
}
