import 'package:qoot/core/models/base_response.dart';
import 'package:qoot/core/network/api_handler.dart';
import 'package:qoot/core/network/api_result.dart';
import 'package:qoot/core/network/api_client.dart';
import 'package:qoot/features/restaurant_profile_info/data/model/update_restaurant_request_body.dart';
import '../../domain/repositories/my_restaurant_repository.dart';
import '../model/my_restaurant_response.dart';

class MyRestaurantRepositoryImpl implements MyRestaurantRepository {
  final ApiHandler _apiHandler;
  final ApiClient _apiClient;

  MyRestaurantRepositoryImpl(this._apiHandler, this._apiClient);

  @override
  Future<ApiResult<MyRestaurantResponse>> fetchMyRestaurant() {
    return _apiHandler.makeRequest(
      () async {
        final result = await _apiClient.getMyRestaurant();
        return result;
      },
    );
  }

  @override
  Future<ApiResult<MyRestaurantResponse>> updateMyRestaurant(
    UpdateRestaurantRequestBody body,
  ) {
    return _apiHandler.makeRequest(
      () async {
        final result = await _apiClient.updateMyRestaurant(body);
        return result;
      },
    );
  }

  @override
  Future<ApiResult<BaseResponse<bool>>> deleteMyRestaurant() {
    return _apiHandler.makeRequest(
      () async {
        final result = await _apiClient.deleteMyRestaurant();
        return result;
      },
    );
  }
}
