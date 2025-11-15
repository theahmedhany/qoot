part of 'current_user.dart';

class _RestaurantLocalData {
  final int id;
  final String name;
  final String description;
  final String address;
  final double latitude;
  final double longitude;
  final int status;
  final String statusDisplayName;
  final bool isActive;
  final DateTime createdAt;
  final String ownerName;
  final String email;
  final String phoneNumber;
  final bool isRegisterCompleted;

  const _RestaurantLocalData({
    required this.id,
    required this.name,
    required this.description,
    required this.address,
    required this.latitude,
    required this.longitude,
    required this.status,
    required this.statusDisplayName,
    required this.isActive,
    required this.createdAt,
    required this.ownerName,
    required this.email,
    required this.phoneNumber,
    required this.isRegisterCompleted,
  });
}
