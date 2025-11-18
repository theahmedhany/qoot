import 'package:json_annotation/json_annotation.dart';
part 'available_donation_model.g.dart';

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
  final List<DonationItem>? items;
  final int? totalCount;
  final int? pageNumber;
  final int? pageSize;
  final int? totalPages;
  final bool? hasPreviousPage;
  final bool? hasNextPage;

  DonationsData({
    this.items,
    this.totalCount,
    this.pageNumber,
    this.pageSize,
    this.totalPages,
    this.hasPreviousPage,
    this.hasNextPage,
  });

  factory DonationsData.fromJson(Map<String, dynamic> json) =>
      _$DonationsDataFromJson(json);

  Map<String, dynamic> toJson() => _$DonationsDataToJson(this);
}

@JsonSerializable()
class DonationItem {
  final String? foodType;
  final String? description;
  final int? estimatedServings;
  final String? expiryDateTime;
  final bool? requiresPickup;
  final String? specialInstructions;
  final String? contactPerson;
  final String? contactPhone;
  final List<String>? images;

  DonationItem({
    this.foodType,
    this.description,
    this.estimatedServings,
    this.expiryDateTime,
    this.requiresPickup,
    this.specialInstructions,
    this.contactPerson,
    this.contactPhone,
    this.images,
  });

  factory DonationItem.fromJson(Map<String, dynamic> json) =>
      _$DonationItemFromJson(json);

  Map<String, dynamic> toJson() => _$DonationItemToJson(this);
}
