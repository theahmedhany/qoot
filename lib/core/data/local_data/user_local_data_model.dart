part of 'current_user.dart';

class _UserLocalData {
  final String token;
  final String tokenExpiry;
  final bool isLoggedIn;
  final String userId;
  final String firstName;
  final String lastName;
  final String email;
  final String role;
  final String phoneNumber;
  final String? profileImage;
  final bool isVerified;
  _UserLocalData({
    required this.token,
    required this.tokenExpiry,
    required this.userId,
    required this.isLoggedIn,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.role,
    required this.phoneNumber,
    required this.profileImage,
    required this.isVerified,
  });
}
