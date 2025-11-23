import 'package:qoot/core/network/api_client.dart';
import 'package:qoot/core/network/api_handler.dart';
import 'package:qoot/core/network/api_result.dart';
import 'package:qoot/features/all_charities/data/models/all_charities_model.dart';

class AllCharitiesRepo {
  final ApiHandler _apiHandler;
  final ApiClient _apiClient;

  AllCharitiesRepo(this._apiHandler, this._apiClient);

  Future<ApiResult<AllCharitiesModel>> getAllCharities({
    int pageNumber = 1,
    int pageSize = 10,
    double radiusKm = 500,
  }) {
    return _apiHandler.makeRequest(
      () async {
        final result = await _apiClient.getAllCharities(
          pageNumber: pageNumber,
          pageSize: pageSize,
          radiusKm: radiusKm,
        );
        return result;
      },
    );
  }
}
