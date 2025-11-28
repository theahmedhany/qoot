import 'package:qoot/core/network/api_client.dart';
import 'package:qoot/core/network/api_handler.dart';
import 'package:qoot/core/network/api_result.dart';
import 'package:qoot/features/charity_info/data/models/my_charity/charity_response.dart';
import 'package:qoot/features/charity_info/data/models/update_charity/update_charity_request.dart';

class UpdateCharityRepo {
  final ApiClient apiClient;
  final ApiHandler apiHandler;

  UpdateCharityRepo(this.apiClient, this.apiHandler);

  Future<ApiResult<CharityResponse>> updateCharity(
    UpdateCharityRequest request,
  ) async {
    return await apiHandler.makeRequest<CharityResponse>(() async {
      return await apiClient.updateCharity(request);
    });
  }
}
