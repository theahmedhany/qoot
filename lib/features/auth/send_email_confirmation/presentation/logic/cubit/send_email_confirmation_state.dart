import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/send_email_confirmation_response.dart';

part 'send_email_confirmation_state.freezed.dart';

@freezed
class SendEmailConfirmationState with _$SendEmailConfirmationState {
  const factory SendEmailConfirmationState.initial() = _Initial;
  const factory SendEmailConfirmationState.loading() = _Loading;
  const factory SendEmailConfirmationState.success(SendEmailConfirmationResponse response) =
      _Success;
  const factory SendEmailConfirmationState.failure(String message) = _Failure;
}
