import 'package:dio/dio.dart';
import 'package:qoot/core/network/api_client.dart';
import 'package:qoot/core/network/api_result.dart';
import 'package:qoot/core/network/network_failure.dart';
import 'package:qoot/features/create_donation/data/models/create_donation_response.dart';

class CreateDonationRepo {
  final ApiClient _apiClient;

  CreateDonationRepo(this._apiClient);

  Future<ApiResult<CreateDonationResponse>> createDonation(
    FormData formData,
  ) async {
    try {
      final response = await _apiClient.createDonation(formData);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(
        NetworkFailure.unknown(error.toString()),
      );
    }
  }
}
