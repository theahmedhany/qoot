import 'package:qoot/core/models/base_response.dart';
import 'package:qoot/core/network/api_client.dart';
import 'package:qoot/core/network/api_handler.dart';
import 'package:qoot/core/network/api_result.dart';
import 'package:qoot/features/restaurant_home/data/models/restaurant_urgent_donation_model.dart';

class RestaurantHomeRepoImpl {
  final ApiHandler _apiHandler;
  final ApiClient _apiClient;
  RestaurantHomeRepoImpl(this._apiHandler, this._apiClient);

  Future<ApiResult<BaseResponse<PaginatedData<RestaurantUrgentDonationModel>>>>
  getNearbyCharities() {
    return _apiHandler.makeRequest(
      () async {
        final result = await _apiClient.getNearbyCharities();
        return result;
      },
    );
  }
}
