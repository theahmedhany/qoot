import 'package:qoot/core/network/api_client.dart';
import 'package:qoot/core/network/api_handler.dart';
import '../../../../core/network/api_result.dart';
import '../models/near_by/near_by_restaurants_response.dart';

class NearByRestaurantsRepo {
  final ApiClient apiClient;
  final ApiHandler apiHandler;

  NearByRestaurantsRepo(this.apiClient, this.apiHandler);
  Future<ApiResult<NearbyRestaurantsResponse>> fetchNearByRestaurants({
    required double latitude,
    required double longitude,
    double radiusKm = 100,
    int pageSize = 10,
    int pageNumber = 1,
  }) {
    return apiHandler.makeRequest(
      () => apiClient.getNearbyRestaurants(
        latitude: latitude,
        longitude: longitude,
        radiusKm: radiusKm,
        pageSize: pageSize,
        pageNumber: pageNumber,
      ),
    );
  }
}
