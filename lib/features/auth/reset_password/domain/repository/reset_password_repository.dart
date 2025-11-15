import '../../data/models/reset_password_response.dart';

abstract class ResetPasswordRepository {
  Future<ResetPasswordResponse> resetPassword({
    required String email,
    required String token,
    required String newPassword,
    required String confirmPassword,
  });
}
