import 'package:qoot/core/network/api_handler.dart';
import 'package:qoot/core/network/api_result.dart';
import '../data_source/send_email_confirmation_remote_data_source.dart';
import '../models/send_email_confirmation_response.dart';

class SendEmailConfirmationRepository {
  final SendEmailConfirmationRemoteDataSource remoteDataSource;
  final ApiHandler apiHandler;

  SendEmailConfirmationRepository({
    required this.remoteDataSource,
    required this.apiHandler,
  });

  Future<ApiResult<SendEmailConfirmationResponse>> sendEmailConfirmation(String email) {
    return apiHandler.makeRequest(() => remoteDataSource.sendEmailConfirmation(email));
  }
}
