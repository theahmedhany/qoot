import 'package:freezed_annotation/freezed_annotation.dart';

part 'send_email_confirmation_response.freezed.dart';
part 'send_email_confirmation_response.g.dart';

@freezed
abstract class SendEmailConfirmationResponse with _$SendEmailConfirmationResponse {
  const factory SendEmailConfirmationResponse({
    required bool isSuccess,
    required String message,
    required String data, // response data is always a string
    required List<dynamic> errors,
  }) = _SendEmailConfirmationResponse;

  factory SendEmailConfirmationResponse.fromJson(Map<String, dynamic> json) =>
      _$SendEmailConfirmationResponseFromJson(json);
}
