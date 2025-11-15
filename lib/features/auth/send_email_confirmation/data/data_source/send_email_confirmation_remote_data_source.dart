import 'package:qoot/core/network/api_client.dart';
import '../models/send_email_confirmation_response.dart';

class SendEmailConfirmationRemoteDataSource {
  final ApiClient apiClient;
  SendEmailConfirmationRemoteDataSource(this.apiClient);

  Future<SendEmailConfirmationResponse> sendEmailConfirmation(String email) {
    return apiClient.sendEmailConfirmation(email);
  }
}
