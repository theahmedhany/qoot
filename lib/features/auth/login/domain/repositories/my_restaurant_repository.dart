import 'package:qoot/core/models/base_response.dart';
import 'package:qoot/core/network/api_result.dart';
import 'package:qoot/features/restaurant_profile_info/data/model/update_restaurant_request_body.dart';
import '../../data/model/my_restaurant_response.dart';

abstract class MyRestaurantRepository {
  Future<ApiResult<MyRestaurantResponse>> fetchMyRestaurant();
  Future<ApiResult<MyRestaurantResponse>> updateMyRestaurant(
    UpdateRestaurantRequestBody body,
  );
  Future<ApiResult<BaseResponse>> deleteMyRestaurant();
}
