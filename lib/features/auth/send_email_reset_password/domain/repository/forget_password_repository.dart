import 'package:qoot/core/network/api_result.dart';
import '../../data/models/forget_password_response.dart';

abstract class ForgetPasswordRepository {
  Future<ApiResult<ForgetPasswordResponse>> forgetPassword(String email);
}
