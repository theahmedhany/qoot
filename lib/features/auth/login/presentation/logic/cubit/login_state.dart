part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.loading() = _Loading;
  const factory LoginState.success(String message, LoginDataModel? data) = _Success;
  const factory LoginState.failure(String message) = _Failure;
}
