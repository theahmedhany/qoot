import 'package:qoot/core/network/api_client.dart';
import 'package:qoot/core/network/api_handler.dart';
import 'package:qoot/core/network/api_result.dart';
import 'package:qoot/features/charity_info/data/models/my_charity/charity_response.dart';

class GetCharityInfoRepo {
  final ApiClient apiClient;
  final ApiHandler apiHandler;

  GetCharityInfoRepo(this.apiClient, this.apiHandler);
  Future<ApiResult<CharityResponse>> getCharityInfo() async {
    return await apiHandler.makeRequest<CharityResponse>(() async {
      return await apiClient.getCharityInfo();
    });
  }
}
