// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurants_with_donations_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RestaurantsWithDonationsResponse _$RestaurantsWithDonationsResponseFromJson(
  Map<String, dynamic> json,
) => RestaurantsWithDonationsResponse(
  isSuccess: json['isSuccess'] as bool?,
  message: json['message'] as String?,
  data: (json['data'] as List<dynamic>)
      .map((e) => RestaurantItem.fromJson(e as Map<String, dynamic>))
      .toList(),
  errors: json['errors'] as List<dynamic>?,
);

Map<String, dynamic> _$RestaurantsWithDonationsResponseToJson(
  RestaurantsWithDonationsResponse instance,
) => <String, dynamic>{
  'isSuccess': instance.isSuccess,
  'message': instance.message,
  'data': instance.data,
  'errors': instance.errors,
};

RestaurantItem _$RestaurantItemFromJson(Map<String, dynamic> json) =>
    RestaurantItem(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      description: json['description'] as String?,
      address: json['address'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      status: (json['status'] as num?)?.toInt(),
      statusDisplayName: json['statusDisplayName'] as String?,
      isActive: json['isActive'] as bool?,
      createdAt: json['createdAt'] as String?,
      ownerName: json['ownerName'] as String?,
      email: json['email'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
    );

Map<String, dynamic> _$RestaurantItemToJson(RestaurantItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'address': instance.address,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'status': instance.status,
      'statusDisplayName': instance.statusDisplayName,
      'isActive': instance.isActive,
      'createdAt': instance.createdAt,
      'ownerName': instance.ownerName,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
    };
