// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'available_donations_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AvailableDonationsResponse _$AvailableDonationsResponseFromJson(
  Map<String, dynamic> json,
) => AvailableDonationsResponse(
  isSuccess: json['isSuccess'] as bool,
  message: json['message'] as String,
  data: json['data'] == null
      ? null
      : DonationsData.fromJson(json['data'] as Map<String, dynamic>),
  errors: json['errors'] as List<dynamic>?,
);

Map<String, dynamic> _$AvailableDonationsResponseToJson(
  AvailableDonationsResponse instance,
) => <String, dynamic>{
  'isSuccess': instance.isSuccess,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'errors': instance.errors,
};

DonationsData _$DonationsDataFromJson(Map<String, dynamic> json) =>
    DonationsData(
      items: (json['items'] as List<dynamic>)
          .map((e) => DonationItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalCount: (json['totalCount'] as num).toInt(),
      pageNumber: (json['pageNumber'] as num).toInt(),
      pageSize: (json['pageSize'] as num).toInt(),
      totalPages: (json['totalPages'] as num).toInt(),
      hasPreviousPage: json['hasPreviousPage'] as bool,
      hasNextPage: json['hasNextPage'] as bool,
    );

Map<String, dynamic> _$DonationsDataToJson(DonationsData instance) =>
    <String, dynamic>{
      'items': instance.items.map((e) => e.toJson()).toList(),
      'totalCount': instance.totalCount,
      'pageNumber': instance.pageNumber,
      'pageSize': instance.pageSize,
      'totalPages': instance.totalPages,
      'hasPreviousPage': instance.hasPreviousPage,
      'hasNextPage': instance.hasNextPage,
    };

DonationItem _$DonationItemFromJson(Map<String, dynamic> json) => DonationItem(
  id: (json['id'] as num).toInt(),
  foodType: json['foodType'] as String,
  description: json['description'] as String,
  estimatedServings: (json['estimatedServings'] as num).toInt(),
  expiryDateTime: json['expiryDateTime'] as String,
  status: (json['status'] as num).toInt(),
  statusDisplayName: json['statusDisplayName'] as String,
  requiresPickup: json['requiresPickup'] as bool,
  specialInstructions: json['specialInstructions'] as String,
  contactPerson: json['contactPerson'] as String,
  contactPhone: json['contactPhone'] as String,
  createdAt: json['createdAt'] as String,
  updatedAt: json['updatedAt'] as String,
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

Map<String, dynamic> _$DonationItemToJson(DonationItem instance) =>
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
      createdAt: json['createdAt'] as String,
    );

Map<String, dynamic> _$DonationImageToJson(DonationImage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imagePath': instance.imagePath,
      'isPrimary': instance.isPrimary,
      'donationId': instance.donationId,
      'createdAt': instance.createdAt,
    };
