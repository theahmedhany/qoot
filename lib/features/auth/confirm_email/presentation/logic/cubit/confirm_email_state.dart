import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../data/models/confirm_email_response.dart';

part 'confirm_email_state.freezed.dart';

@freezed
class ConfirmEmailState with _$ConfirmEmailState {
  const factory ConfirmEmailState.loading() = _Loading;
  const factory ConfirmEmailState.success(ConfirmEmailResponse response) = _Success;
  const factory ConfirmEmailState.failure(String message) = _Failure;
}
