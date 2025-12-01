import 'package:json_annotation/json_annotation.dart';

part 'restaurant_urgent_donation_model.g.dart';

@JsonSerializable(explicitToJson: true)
class RestaurantUrgentDonationModel {
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

  final List<CharityImageModel> images;

  RestaurantUrgentDonationModel({
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
    required this.images,
  });

  factory RestaurantUrgentDonationModel.fromJson(Map<String, dynamic> json) =>
      _$RestaurantUrgentDonationModelFromJson(json);

  Map<String, dynamic> toJson() => _$RestaurantUrgentDonationModelToJson(this);
}

@JsonSerializable()
class CharityImageModel {
  final int id;
  final String imagePath;
  final bool isPrimary;
  final int charityId;
  final DateTime createdAt;

  CharityImageModel({
    required this.id,
    required this.imagePath,
    required this.isPrimary,
    required this.charityId,
    required this.createdAt,
  });

  factory CharityImageModel.fromJson(Map<String, dynamic> json) =>
      _$CharityImageModelFromJson(json);

  Map<String, dynamic> toJson() => _$CharityImageModelToJson(this);
}
