import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/model/register_charity_response.dart';

part 'register_charity_state.freezed.dart';

@freezed
abstract class RegisterCharityState with _$RegisterCharityState {
  const factory RegisterCharityState.initial() = _Initial;
  const factory RegisterCharityState.loading() = _Loading;
  const factory RegisterCharityState.success(RegisterCharityResponse response) = _Success;
  const factory RegisterCharityState.failure(String message) = _Failure;
}
