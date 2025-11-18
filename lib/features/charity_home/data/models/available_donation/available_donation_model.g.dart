// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'available_donation_model.dart';

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
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => DonationItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalCount: (json['totalCount'] as num?)?.toInt(),
      pageNumber: (json['pageNumber'] as num?)?.toInt(),
      pageSize: (json['pageSize'] as num?)?.toInt(),
      totalPages: (json['totalPages'] as num?)?.toInt(),
      hasPreviousPage: json['hasPreviousPage'] as bool?,
      hasNextPage: json['hasNextPage'] as bool?,
    );

Map<String, dynamic> _$DonationsDataToJson(DonationsData instance) =>
    <String, dynamic>{
      'items': instance.items?.map((e) => e.toJson()).toList(),
      'totalCount': instance.totalCount,
      'pageNumber': instance.pageNumber,
      'pageSize': instance.pageSize,
      'totalPages': instance.totalPages,
      'hasPreviousPage': instance.hasPreviousPage,
      'hasNextPage': instance.hasNextPage,
    };

DonationItem _$DonationItemFromJson(Map<String, dynamic> json) => DonationItem(
  foodType: json['foodType'] as String?,
  description: json['description'] as String?,
  estimatedServings: (json['estimatedServings'] as num?)?.toInt(),
  expiryDateTime: json['expiryDateTime'] as String?,
  requiresPickup: json['requiresPickup'] as bool?,
  specialInstructions: json['specialInstructions'] as String?,
  contactPerson: json['contactPerson'] as String?,
  contactPhone: json['contactPhone'] as String?,
  images: (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
);

Map<String, dynamic> _$DonationItemToJson(DonationItem instance) =>
    <String, dynamic>{
      'foodType': instance.foodType,
      'description': instance.description,
      'estimatedServings': instance.estimatedServings,
      'expiryDateTime': instance.expiryDateTime,
      'requiresPickup': instance.requiresPickup,
      'specialInstructions': instance.specialInstructions,
      'contactPerson': instance.contactPerson,
      'contactPhone': instance.contactPhone,
      'images': instance.images,
    };
