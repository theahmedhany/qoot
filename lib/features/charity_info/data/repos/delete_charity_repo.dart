import 'package:qoot/core/network/api_client.dart';
import 'package:qoot/core/network/api_handler.dart';
import 'package:qoot/core/network/api_result.dart';
import 'package:qoot/features/charity_info/data/models/my_charity/charity_response.dart';

class DeleteCharityRepo {
  final ApiClient apiClient;
  final ApiHandler apiHandler;

  DeleteCharityRepo(this.apiClient, this.apiHandler);

  Future<ApiResult<CharityResponse>> deleteCharity() async {
    return await apiHandler.makeRequest<CharityResponse>(() async {
      return await apiClient.deleteCharity();
    });
  }
}
