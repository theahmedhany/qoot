// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_reservation_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateReservationResponse _$CreateReservationResponseFromJson(
  Map<String, dynamic> json,
) => CreateReservationResponse(
  isSuccess: json['isSuccess'] as bool,
  message: json['message'] as String,
  data: json['data'] == null
      ? null
      : ReservationData.fromJson(json['data'] as Map<String, dynamic>),
  errors: json['errors'] as List<dynamic>,
);

Map<String, dynamic> _$CreateReservationResponseToJson(
  CreateReservationResponse instance,
) => <String, dynamic>{
  'isSuccess': instance.isSuccess,
  'message': instance.message,
  'data': instance.data,
  'errors': instance.errors,
};

ReservationData _$ReservationDataFromJson(Map<String, dynamic> json) =>
    ReservationData(
      id: (json['id'] as num).toInt(),
      reservationTime: DateTime.parse(json['reservationTime'] as String),
      status: (json['status'] as num).toInt(),
      statusDisplayName: json['statusDisplayName'] as String,
      notes: json['notes'] as String,
      pickupTime: DateTime.parse(json['pickupTime'] as String),
      pickupPersonName: json['pickupPersonName'] as String,
      pickupPersonPhone: json['pickupPersonPhone'] as String,
      donationId: (json['donationId'] as num).toInt(),
      charityId: (json['charityId'] as num).toInt(),
      donationFoodType: json['donationFoodType'] as String,
      donationExpiry: DateTime.parse(json['donationExpiry'] as String),
      restaurantId: (json['restaurantId'] as num).toInt(),
      restaurantName: json['restaurantName'] as String,
      restaurantPhone: json['restaurantPhone'] as String,
      restaurantAddress: json['restaurantAddress'] as String,
    );

Map<String, dynamic> _$ReservationDataToJson(ReservationData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'reservationTime': instance.reservationTime.toIso8601String(),
      'status': instance.status,
      'statusDisplayName': instance.statusDisplayName,
      'notes': instance.notes,
      'pickupTime': instance.pickupTime.toIso8601String(),
      'pickupPersonName': instance.pickupPersonName,
      'pickupPersonPhone': instance.pickupPersonPhone,
      'donationId': instance.donationId,
      'charityId': instance.charityId,
      'donationFoodType': instance.donationFoodType,
      'donationExpiry': instance.donationExpiry.toIso8601String(),
      'restaurantId': instance.restaurantId,
      'restaurantName': instance.restaurantName,
      'restaurantPhone': instance.restaurantPhone,
      'restaurantAddress': instance.restaurantAddress,
    };
