import 'package:qoot/core/network/api_handler.dart';
import 'package:qoot/core/network/api_result.dart';
import 'package:qoot/core/network/api_client.dart';

import '../model/my_charity_response.dart';

class MyCharityRemoteDataSource {
  final ApiClient _apiClient;
  final ApiHandler _apiHandler;

  MyCharityRemoteDataSource(this._apiClient, this._apiHandler);

  Future<ApiResult<MyCharityResponse>> getMyCharity() {
    return _apiHandler.makeRequest(() => _apiClient.getMyCharity());
  }
}
