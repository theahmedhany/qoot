import 'package:json_annotation/json_annotation.dart';
part 'charity_reservation_response.g.dart';

@JsonSerializable()
class CharityReservationResponse {
  final bool isSuccess;
  final String message;
  final CharityReservationData? data;
  final List<dynamic>? errors;

  CharityReservationResponse({
    required this.isSuccess,
    required this.message,
    this.data,
    this.errors,
  });

  factory CharityReservationResponse.fromJson(Map<String, dynamic> json) =>
      _$CharityReservationResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CharityReservationResponseToJson(this);
}

@JsonSerializable()
class CharityReservationData {
  final List<CharityReservationItem> items;
  final int totalCount;
  final int pageNumber;
  final int pageSize;
  final int totalPages;
  final bool hasPreviousPage;
  final bool hasNextPage;

  CharityReservationData({
    required this.items,
    required this.totalCount,
    required this.pageNumber,
    required this.pageSize,
    required this.totalPages,
    required this.hasPreviousPage,
    required this.hasNextPage,
  });

  factory CharityReservationData.fromJson(Map<String, dynamic> json) =>
      _$CharityReservationDataFromJson(json);

  Map<String, dynamic> toJson() => _$CharityReservationDataToJson(this);
}

@JsonSerializable()
class CharityReservationItem {
  final int id;
  final String reservationTime;
  final int status;
  final String statusDisplayName;
  final String? notes;
  final String? pickupTime;
  final String? pickupPersonName;
  final String? pickupPersonPhone;
  final int donationId;
  final int charityId;
  final String donationFoodType;
  final String donationExpiry;
  final int restaurantId;
  final String restaurantName;
  final String restaurantPhone;
  final String restaurantAddress;

  CharityReservationItem({
    required this.id,
    required this.reservationTime,
    required this.status,
    required this.statusDisplayName,
    this.notes,
    this.pickupTime,
    this.pickupPersonName,
    this.pickupPersonPhone,
    required this.donationId,
    required this.charityId,
    required this.donationFoodType,
    required this.donationExpiry,
    required this.restaurantId,
    required this.restaurantName,
    required this.restaurantPhone,
    required this.restaurantAddress,
  });

  factory CharityReservationItem.fromJson(Map<String, dynamic> json) =>
      _$CharityReservationItemFromJson(json);

  Map<String, dynamic> toJson() => _$CharityReservationItemToJson(this);
}
