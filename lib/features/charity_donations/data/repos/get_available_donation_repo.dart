import 'package:qoot/core/network/api_client.dart';
import 'package:qoot/core/network/api_handler.dart';
import 'package:qoot/core/network/api_result.dart';
import 'package:qoot/features/charity_donations/data/models/available_donation/available_donations_response.dart';

class GetAvailableDonationRepo {
  final ApiClient apiClient;
  final ApiHandler apiHandler;

  GetAvailableDonationRepo(this.apiClient, this.apiHandler);
  Future<ApiResult<AvailableDonationsResponse>> getAvailableDonations({
    required int page,
    required int pageSize,
  }) {
    return apiHandler.makeRequest(
      () => apiClient.getAvailableDonations(
        pageNumber: page,
        pageSize: pageSize,
      ),
    );
  }
}
