import 'package:qoot/core/network/api_client.dart';
import 'package:qoot/features/auth/register_account/data/models/register_request_model.dart';
import 'package:qoot/features/auth/register_account/data/models/register_response_model.dart';

/// Abstract class defining the contract for the register data source.
abstract class RegisterRemoteDataSource {
  Future<RegisterResponseModel> register(RegisterRequestModel body);
}

/// Implementation that uses ApiClient (Retrofit) for making network calls.
class RegisterRemoteDataSourceImpl implements RegisterRemoteDataSource {
  final ApiClient _apiClient;

  RegisterRemoteDataSourceImpl(this._apiClient);

  @override
  Future<RegisterResponseModel> register(RegisterRequestModel body) async {
    return await _apiClient.register(body.toJson());
  }
}
