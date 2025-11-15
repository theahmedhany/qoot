import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/forget_password_response.dart';

part 'forget_password_state.freezed.dart';

@freezed
class ForgetPasswordState with _$ForgetPasswordState {
  const factory ForgetPasswordState.initial() = _Initial;
  const factory ForgetPasswordState.loading() = _Loading;
  const factory ForgetPasswordState.success(ForgetPasswordResponse response) = _Success;
  const factory ForgetPasswordState.failure(String message) = _Failure;
}
