import 'package:qoot/core/network/api_client.dart';
import 'package:qoot/core/network/api_handler.dart';
import '../../../../core/network/api_result.dart';
import '../models/restaurants_with_donation/restaurants_with_donations_response.dart';

class RestaurantsWithDonationsRepo {
  final ApiClient apiClient;
  final ApiHandler apiHandler;
  RestaurantsWithDonationsRepo(this.apiClient, this.apiHandler);

  Future<ApiResult<RestaurantsWithDonationsResponse>>
  fetchRestaurantsWithDonations() {
    return apiHandler.makeRequest(
      () => apiClient.getRestaurantsWithDonations(),
    );
  }
}
