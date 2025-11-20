// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'donation_history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DonationHistoryModel _$DonationHistoryModelFromJson(
  Map<String, dynamic> json,
) => DonationHistoryModel(
  id: (json['id'] as num).toInt(),
  foodType: json['foodType'] as String,
  description: json['description'] as String,
  estimatedServings: (json['estimatedServings'] as num).toInt(),
  expiryDateTime: DateTime.parse(json['expiryDateTime'] as String),
  status: (json['status'] as num).toInt(),
  statusDisplayName: json['statusDisplayName'] as String,
  requiresPickup: json['requiresPickup'] as bool,
  specialInstructions: json['specialInstructions'] as String,
  contactPerson: json['contactPerson'] as String,
  contactPhone: json['contactPhone'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
  restaurantId: (json['restaurantId'] as num).toInt(),
  restaurantName: json['restaurantName'] as String,
  restaurantAddress: json['restaurantAddress'] as String,
  restaurantPhone: json['restaurantPhone'] as String,
  restaurantLatitude: (json['restaurantLatitude'] as num).toDouble(),
  restaurantLongitude: (json['restaurantLongitude'] as num).toDouble(),
  images: (json['images'] as List<dynamic>)
      .map((e) => DonationImage.fromJson(e as Map<String, dynamic>))
      .toList(),
  reservationCount: (json['reservationCount'] as num).toInt(),
  isExpired: json['isExpired'] as bool,
  isAvailable: json['isAvailable'] as bool,
);

Map<String, dynamic> _$DonationHistoryModelToJson(
  DonationHistoryModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'foodType': instance.foodType,
  'description': instance.description,
  'estimatedServings': instance.estimatedServings,
  'expiryDateTime': instance.expiryDateTime.toIso8601String(),
  'status': instance.status,
  'statusDisplayName': instance.statusDisplayName,
  'requiresPickup': instance.requiresPickup,
  'specialInstructions': instance.specialInstructions,
  'contactPerson': instance.contactPerson,
  'contactPhone': instance.contactPhone,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
  'restaurantId': instance.restaurantId,
  'restaurantName': instance.restaurantName,
  'restaurantAddress': instance.restaurantAddress,
  'restaurantPhone': instance.restaurantPhone,
  'restaurantLatitude': instance.restaurantLatitude,
  'restaurantLongitude': instance.restaurantLongitude,
  'images': instance.images.map((e) => e.toJson()).toList(),
  'reservationCount': instance.reservationCount,
  'isExpired': instance.isExpired,
  'isAvailable': instance.isAvailable,
};

DonationImage _$DonationImageFromJson(Map<String, dynamic> json) =>
    DonationImage(
      id: (json['id'] as num).toInt(),
      imagePath: json['imagePath'] as String,
      isPrimary: json['isPrimary'] as bool,
      donationId: (json['donationId'] as num).toInt(),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$DonationImageToJson(DonationImage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imagePath': instance.imagePath,
      'isPrimary': instance.isPrimary,
      'donationId': instance.donationId,
      'createdAt': instance.createdAt.toIso8601String(),
    };
