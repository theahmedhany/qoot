// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_reservation_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateReservationRequest _$CreateReservationRequestFromJson(
  Map<String, dynamic> json,
) => CreateReservationRequest(
  donationId: (json['donationId'] as num).toInt(),
  notes: json['notes'] as String,
  pickupTime: DateTime.parse(json['pickupTime'] as String),
  pickupPersonName: json['pickupPersonName'] as String,
  pickupPersonPhone: json['pickupPersonPhone'] as String,
);

Map<String, dynamic> _$CreateReservationRequestToJson(
  CreateReservationRequest instance,
) => <String, dynamic>{
  'donationId': instance.donationId,
  'notes': instance.notes,
  'pickupTime': instance.pickupTime.toIso8601String(),
  'pickupPersonName': instance.pickupPersonName,
  'pickupPersonPhone': instance.pickupPersonPhone,
};
