// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_donation_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateDonationRequestBody _$CreateDonationRequestBodyFromJson(
  Map<String, dynamic> json,
) => CreateDonationRequestBody(
  foodType: json['foodType'] as String,
  description: json['description'] as String,
  estimatedServings: (json['estimatedServings'] as num).toInt(),
  expiryDateTime: DateTime.parse(json['expiryDateTime'] as String),
  requiresPickup: json['requiresPickup'] as bool,
  specialInstructions: json['specialInstructions'] as String,
  contactPerson: json['contactPerson'] as String,
  contactPhone: json['contactPhone'] as String,
  images: (json['images'] as List<dynamic>).map((e) => e as String).toList(),
);

Map<String, dynamic> _$CreateDonationRequestBodyToJson(
  CreateDonationRequestBody instance,
) => <String, dynamic>{
  'foodType': instance.foodType,
  'description': instance.description,
  'estimatedServings': instance.estimatedServings,
  'expiryDateTime': instance.expiryDateTime.toIso8601String(),
  'requiresPickup': instance.requiresPickup,
  'specialInstructions': instance.specialInstructions,
  'contactPerson': instance.contactPerson,
  'contactPhone': instance.contactPhone,
  'images': instance.images,
};
