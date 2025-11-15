import 'package:qoot/core/network/api_result.dart';
import '../../data/model/login_response_model.dart';

abstract class LoginRepository {
  Future<ApiResult<LoginResponseModel>> login({
    required String email,
    required String password,
  });
}
