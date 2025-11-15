import 'user_entity.dart';

class RegisterEntity {
  final bool isSuccess;
  final String message;
  final String token;
  final String tokenExpiry;
  final UserEntity user;

  const RegisterEntity({
    required this.isSuccess,
    required this.message,
    required this.token,
    required this.tokenExpiry,
    required this.user,
  });
}
