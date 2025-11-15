import 'package:qoot/core/network/api_handler.dart';
import 'package:qoot/core/network/api_result.dart';
import 'package:qoot/core/network/api_client.dart';
import 'package:qoot/core/di/service_locator.dart';

import '../../domain/repository/reset_password_repository.dart';
import '../models/reset_password_response.dart';

class ResetPasswordRepositoryImpl implements ResetPasswordRepository {
  final ApiClient _apiClient = getIt<ApiClient>();
  final ApiHandler _handler = getIt<ApiHandler>();

  @override
  Future<ResetPasswordResponse> resetPassword({
    required String email,
    required String token,
    required String newPassword,
    required String confirmPassword,
  }) async {
    final body = {
      "email": email,
      "token": token,
      "newPassword": newPassword,
      "confirmPassword": confirmPassword,
    };

    final response = await _handler.makeRequest(
      () => _apiClient.resetPassword(body),
    );

    return response.when(
      success: (data) => data,
      failure: (error) => ResetPasswordResponse(
        isSuccess: false,
        message: error.toString(),
        data: null,
        errors: [],
      ),
    );
  }
}
