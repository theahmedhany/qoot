import 'package:qoot/core/network/api_client.dart';
import 'package:qoot/core/network/api_handler.dart';
import 'package:qoot/core/network/api_result.dart';
import 'package:qoot/features/all_restaurants/data/models/restaurant_donations/restaurant_donations_response.dart';

class RestaurntDonationsByIdRepo {
  final ApiClient apiClient;
  final ApiHandler apiHandler;

  RestaurntDonationsByIdRepo(this.apiClient, this.apiHandler);
  Future<ApiResult<RestaurantDonationsResponse>> fetchRestaurantsDonationsById(
    String restaurantId,
  ) {
    return apiHandler.makeRequest(
      () => apiClient.getRestaurantDontionsWithId(restaurantId),
    );
  }
}
