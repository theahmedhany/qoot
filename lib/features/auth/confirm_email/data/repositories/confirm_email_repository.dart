import 'package:qoot/core/di/service_locator.dart';
import 'package:qoot/core/network/api_client.dart';
import 'package:qoot/core/network/api_handler.dart';
import 'package:qoot/core/network/api_result.dart';
import '../models/confirm_email_response.dart';

class ConfirmEmailRepository {
  final ApiHandler _apiHandler;
  final ApiClient _apiClient;

  ConfirmEmailRepository() : _apiHandler = getIt<ApiHandler>(), _apiClient = getIt<ApiClient>();

  Future<ApiResult<ConfirmEmailResponse>> confirmEmail({
    required String email,
    required String token,
  }) async {
    return _apiHandler.makeRequest(
      () => _apiClient.confirmEmail(email, token),
    );
  }
}
