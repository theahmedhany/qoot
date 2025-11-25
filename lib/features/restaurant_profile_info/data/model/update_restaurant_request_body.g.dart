// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_restaurant_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateRestaurantRequestBody _$UpdateRestaurantRequestBodyFromJson(
  Map<String, dynamic> json,
) => UpdateRestaurantRequestBody(
  name: json['name'] as String,
  description: json['description'] as String,
  address: json['address'] as String,
  latitude: (json['latitude'] as num).toDouble(),
  longitude: (json['longitude'] as num).toDouble(),
);

Map<String, dynamic> _$UpdateRestaurantRequestBodyToJson(
  UpdateRestaurantRequestBody instance,
) => <String, dynamic>{
  'name': instance.name,
  'description': instance.description,
  'address': instance.address,
  'latitude': instance.latitude,
  'longitude': instance.longitude,
};
