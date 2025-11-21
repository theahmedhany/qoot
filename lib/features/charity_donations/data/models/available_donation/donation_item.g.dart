// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'donation_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DonationItem _$DonationItemFromJson(Map<String, dynamic> json) =>
    _DonationItem(
      id: (json['id'] as num?)?.toInt(),
      foodType: json['foodType'] as String?,
      description: json['description'] as String?,
      estimatedServings: (json['estimatedServings'] as num?)?.toInt(),
      expiryDateTime: json['expiryDateTime'] as String?,
      status: (json['status'] as num?)?.toInt(),
      statusDisplayName: json['statusDisplayName'] as String?,
      requiresPickup: json['requiresPickup'] as bool?,
      specialInstructions: json['specialInstructions'] as String?,
      contactPerson: json['contactPerson'] as String?,
      contactPhone: json['contactPhone'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      restaurantId: (json['restaurantId'] as num?)?.toInt(),
      restaurantName: json['restaurantName'] as String?,
      restaurantAddress: json['restaurantAddress'] as String?,
      restaurantPhone: json['restaurantPhone'] as String?,
      restaurantLatitude: (json['restaurantLatitude'] as num?)?.toDouble(),
      restaurantLongitude: (json['restaurantLongitude'] as num?)?.toDouble(),
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => DonationImage.fromJson(e as Map<String, dynamic>))
          .toList(),
      reservationCount: (json['reservationCount'] as num?)?.toInt(),
      isExpired: json['isExpired'] as bool?,
      isAvailable: json['isAvailable'] as bool?,
    );

Map<String, dynamic> _$DonationItemToJson(_DonationItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'foodType': instance.foodType,
      'description': instance.description,
      'estimatedServings': instance.estimatedServings,
      'expiryDateTime': instance.expiryDateTime,
      'status': instance.status,
      'statusDisplayName': instance.statusDisplayName,
      'requiresPickup': instance.requiresPickup,
      'specialInstructions': instance.specialInstructions,
      'contactPerson': instance.contactPerson,
      'contactPhone': instance.contactPhone,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'restaurantId': instance.restaurantId,
      'restaurantName': instance.restaurantName,
      'restaurantAddress': instance.restaurantAddress,
      'restaurantPhone': instance.restaurantPhone,
      'restaurantLatitude': instance.restaurantLatitude,
      'restaurantLongitude': instance.restaurantLongitude,
      'images': instance.images,
      'reservationCount': instance.reservationCount,
      'isExpired': instance.isExpired,
      'isAvailable': instance.isAvailable,
    };
