import 'package:qoot/core/network/api_client.dart';
import 'package:qoot/core/network/api_handler.dart';
import 'package:qoot/core/network/api_result.dart';
import '../../domain/repository/forget_password_repository.dart';
import '../models/forget_password_response.dart';

class ForgetPasswordRepositoryImpl implements ForgetPasswordRepository {
  final ApiClient apiClient;
  final ApiHandler apiHandler;

  ForgetPasswordRepositoryImpl({
    required this.apiClient,
    required this.apiHandler,
  });

  @override
  Future<ApiResult<ForgetPasswordResponse>> forgetPassword(String email) {
    return apiHandler.makeRequest(
      () => apiClient.forgetPassword({"email": email}),
    );
  }
}
