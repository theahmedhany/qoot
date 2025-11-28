import 'package:qoot/core/network/api_client.dart';
import 'package:qoot/core/network/api_handler.dart';
import 'package:qoot/core/network/api_result.dart';

import '../models/donation_details/donation_details_response.dart';

class DonationDetailsRepo {
  final ApiClient apiClient;
  final ApiHandler apiHandler;
  DonationDetailsRepo(this.apiHandler, this.apiClient);

  Future<ApiResult<DonationDetailsResponse>> fetchDonationDetails(
    String donationId,
  ) async {
    return apiHandler.makeRequest(
      () => apiClient.getDonationDetails(donationId),
    );
  }
}
