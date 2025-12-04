import 'package:qoot/core/network/api_client.dart';
import 'package:qoot/core/network/api_handler.dart';
import 'package:qoot/core/network/api_result.dart';
import 'package:qoot/features/charity_info/data/models/charity_types/charity_types_model.dart';

class CharityTypesRepo {
  final ApiClient apiClient;
  final ApiHandler apiHandler;

  CharityTypesRepo(this.apiClient, this.apiHandler);

  Future<ApiResult<CharityTypesResponse>> getCharityTypes() async {
    return await apiHandler.makeRequest<CharityTypesResponse>(() async {
      return await apiClient.getCharityTypes();
    });
  }
}
