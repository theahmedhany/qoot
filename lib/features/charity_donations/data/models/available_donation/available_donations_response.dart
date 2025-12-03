import 'package:json_annotation/json_annotation.dart';

part 'available_donations_response.g.dart';

@JsonSerializable(explicitToJson: true)
class AvailableDonationsResponse {
  final bool isSuccess;
  final String message;
  final DonationsData? data;
  final List<dynamic>? errors;

  AvailableDonationsResponse({
    required this.isSuccess,
    required this.message,
    this.data,
    this.errors,
  });

  factory AvailableDonationsResponse.fromJson(Map<String, dynamic> json) =>
      _$AvailableDonationsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AvailableDonationsResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DonationsData {
  final List<DonationItem> items;
  final int totalCount;
  final int pageNumber;
  final int pageSize;
  final int totalPages;
  final bool hasPreviousPage;
  final bool hasNextPage;

  DonationsData({
    required this.items,
    required this.totalCount,
    required this.pageNumber,
    required this.pageSize,
    required this.totalPages,
    required this.hasPreviousPage,
    required this.hasNextPage,
  });

  factory DonationsData.fromJson(Map<String, dynamic> json) =>
      _$DonationsDataFromJson(json);

  Map<String, dynamic> toJson() => _$DonationsDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DonationItem {
  final int id;
  final String foodType;
  final String description;
  final int estimatedServings;
  final String expiryDateTime;
  final int status;
  final String statusDisplayName;
  final bool requiresPickup;
  final String specialInstructions;
  final String contactPerson;
  final String contactPhone;
  final String createdAt;
  final String updatedAt;

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

  DonationItem({
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

  factory DonationItem.fromJson(Map<String, dynamic> json) =>
      _$DonationItemFromJson(json);

  Map<String, dynamic> toJson() => _$DonationItemToJson(this);
}

@JsonSerializable()
class DonationImage {
  final int id;
  final String imagePath;
  final bool isPrimary;
  final int donationId;
  final String createdAt;

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
