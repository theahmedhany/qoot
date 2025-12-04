part of 'current_user.dart';

class _CharityImage {
  final int id;
  final String imagePath;
  final bool isPrimary;
  final int charityId;
  final DateTime createdAt;

  const _CharityImage({
    required this.id,
    required this.imagePath,
    required this.isPrimary,
    required this.charityId,
    required this.createdAt,
  });
}

class _CharityLocalData {
  final int id;
  final String name;
  final String description;
  final String address;
  final double latitude;
  final double longitude;
  final int capacity;
  final int type;
  final int status;
  final String statusDisplayName;
  final bool isActive;
  final DateTime createdAt;
  final String contactName;
  final String email;
  final String phoneNumber;
  final bool isRegisterCompleted;
  final List<_CharityImage> images;

  const _CharityLocalData({
    required this.id,
    required this.name,
    required this.description,
    required this.address,
    required this.latitude,
    required this.longitude,
    required this.capacity,
    required this.type,
    required this.status,
    required this.statusDisplayName,
    required this.isActive,
    required this.createdAt,
    required this.contactName,
    required this.email,
    required this.phoneNumber,
    required this.isRegisterCompleted,
    required this.images,
  });
}
