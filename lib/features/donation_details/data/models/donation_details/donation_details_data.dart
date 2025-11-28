import 'package:json_annotation/json_annotation.dart';
import 'package:qoot/features/charity_donations/data/models/available_donation/donation_image.dart';
part 'donation_details_data.g.dart';

@JsonSerializable(explicitToJson: true)
class DonationDetailsData {
  final int? id;
  final String? foodType;
  final String? description;
  final int? estimatedServings;
  final String? expiryDateTime;

  final int? status;
  final String? statusDisplayName;

  final bool? requiresPickup;
  final String? specialInstructions;

  final String? contactPerson;
  final String? contactPhone;

  final String? createdAt;
  final String? updatedAt;

  final int? restaurantId;
  final String? restaurantName;
  final String? restaurantAddress;
  final String? restaurantPhone;
  final double? restaurantLatitude;
  final double? restaurantLongitude;

  final List<DonationImage>? images;

  final int? reservationCount;
  final bool? isExpired;
  final bool? isAvailable;

  DonationDetailsData({
    this.id,
    this.foodType,
    this.description,
    this.estimatedServings,
    this.expiryDateTime,
    this.status,
    this.statusDisplayName,
    this.requiresPickup,
    this.specialInstructions,
    this.contactPerson,
    this.contactPhone,
    this.createdAt,
    this.updatedAt,
    this.restaurantId,
    this.restaurantName,
    this.restaurantAddress,
    this.restaurantPhone,
    this.restaurantLatitude,
    this.restaurantLongitude,
    this.images,
    this.reservationCount,
    this.isExpired,
    this.isAvailable,
  });

  factory DonationDetailsData.fromJson(Map<String, dynamic> json) =>
      _$DonationDetailsDataFromJson(json);

  Map<String, dynamic> toJson() => _$DonationDetailsDataToJson(this);
}
