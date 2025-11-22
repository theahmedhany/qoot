import 'package:qoot/core/models/base_response.dart';
import 'package:qoot/core/network/api_client.dart';
import 'package:qoot/core/network/api_handler.dart';
import 'package:qoot/core/network/api_result.dart';
import 'package:qoot/features/restaurant_donation/data/models/donation_history_model.dart';

class RestaurantDonationRepoImpl {
  final ApiHandler _apiHandler;
  final ApiClient _apiClient;
  RestaurantDonationRepoImpl(this._apiHandler, this._apiClient);

  Future<ApiResult<BaseResponse<PaginatedData<DonationHistoryModel>>>>
  getDonationHistory() {
    return _apiHandler.makeRequest(
      () async {
        final result = await _apiClient.getDonationHistory();
        return result;
      },
    );
  }
}
