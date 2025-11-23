import 'package:json_annotation/json_annotation.dart';

part 'create_donation_response.g.dart';

@JsonSerializable()
class CreateDonationResponse {
  final bool isSuccess;
  final String message;
  final DonationData? data;
  final List<dynamic> errors;

  CreateDonationResponse({
    required this.isSuccess,
    required this.message,
    this.data,
    required this.errors,
  });

  factory CreateDonationResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateDonationResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CreateDonationResponseToJson(this);
}

@JsonSerializable()
class DonationData {
  final int id;
  final String foodType;
  final String description;
  final int estimatedServings;
  final DateTime expiryDateTime;
  final int status;
  final String statusDisplayName;
  final bool requiresPickup;
  final String specialInstructions;
  final String contactPerson;
  final String contactPhone;
  final DateTime createdAt;
  final DateTime updatedAt;
  final int restaurantId;
  final String restaurantName;
  final String restaurantAddress;
  final String restaurantPhone;
  final double restaurantLatitude;
  final double restaurantLongitude;
  final List<DonationImage> images;
  final int reservationCount;
  final bool isExpired;
  final bool isAvailable;

  DonationData({
    required this.id,
    required this.foodType,
    required this.description,
    required this.estimatedServings,
    required this.expiryDateTime,
    required this.status,
    required this.statusDisplayName,
    required this.requiresPickup,
    required this.specialInstructions,
    required this.contactPerson,
    required this.contactPhone,
    required this.createdAt,
    required this.updatedAt,
    required this.restaurantId,
    required this.restaurantName,
    required this.restaurantAddress,
    required this.restaurantPhone,
    required this.restaurantLatitude,
    required this.restaurantLongitude,
    required this.images,
    required this.reservationCount,
    required this.isExpired,
    required this.isAvailable,
  });

  factory DonationData.fromJson(Map<String, dynamic> json) =>
      _$DonationDataFromJson(json);

  Map<String, dynamic> toJson() => _$DonationDataToJson(this);
}

@JsonSerializable()
class DonationImage {
  final int id;
  final String imagePath;
  final bool isPrimary;
  final int donationId;
  final DateTime createdAt;

  DonationImage({
    required this.id,
    required this.imagePath,
    required this.isPrimary,
    required this.donationId,
    required this.createdAt,
  });

  factory DonationImage.fromJson(Map<String, dynamic> json) =>
      _$DonationImageFromJson(json);

  Map<String, dynamic> toJson() => _$DonationImageToJson(this);
}
