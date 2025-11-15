import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_middleware_state.freezed.dart';

@freezed
class AuthMiddlewareState with _$AuthMiddlewareState {
  const factory AuthMiddlewareState.initial() = _Initial;
  const factory AuthMiddlewareState.isLoggedOut() = _IsLoggedOut;

  const factory AuthMiddlewareState.authenticated({
    required bool isLoggedIn,
    required bool isVerified,
    required bool isVolunteer,
    required bool isCharity,
    required bool isRestaurant,
  }) = _Authenticated;

  const factory AuthMiddlewareState.error(String message) = _Error;
}
