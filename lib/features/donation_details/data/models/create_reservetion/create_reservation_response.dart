import 'package:json_annotation/json_annotation.dart';

part 'create_reservation_response.g.dart';

@JsonSerializable()
class CreateReservationResponse {
  final bool isSuccess;
  final String message;
  final ReservationData? data;
  final List<dynamic> errors;

  CreateReservationResponse({
    required this.isSuccess,
    required this.message,
    this.data,
    required this.errors,
  });

  factory CreateReservationResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateReservationResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CreateReservationResponseToJson(this);
}

@JsonSerializable()
class ReservationData {
  final int id;
  final DateTime reservationTime;
  final int status;
  final String statusDisplayName;
  final String notes;
  final DateTime pickupTime;
  final String pickupPersonName;
  final String pickupPersonPhone;
  final int donationId;
  final int charityId;
  final String donationFoodType;
  final DateTime donationExpiry;
  final int restaurantId;
  final String restaurantName;
  final String restaurantPhone;
  final String restaurantAddress;

  ReservationData({
    required this.id,
    required this.reservationTime,
    required this.status,
    required this.statusDisplayName,
    required this.notes,
    required this.pickupTime,
    required this.pickupPersonName,
    required this.pickupPersonPhone,
    required this.donationId,
    required this.charityId,
    required this.donationFoodType,
    required this.donationExpiry,
    required this.restaurantId,
    required this.restaurantName,
    required this.restaurantPhone,
    required this.restaurantAddress,
  });

  factory ReservationData.fromJson(Map<String, dynamic> json) =>
      _$ReservationDataFromJson(json);

  Map<String, dynamic> toJson() => _$ReservationDataToJson(this);
}
