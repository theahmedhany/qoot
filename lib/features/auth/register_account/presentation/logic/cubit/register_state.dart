import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/register_entity.dart';

part 'register_state.freezed.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState.initial() = _Initial;
  const factory RegisterState.loading() = _Loading;
  const factory RegisterState.success(RegisterEntity data) = _Success;
  const factory RegisterState.failure(String message) = _Failure;
}
