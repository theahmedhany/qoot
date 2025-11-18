// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_charity_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateCharityRequest _$UpdateCharityRequestFromJson(
  Map<String, dynamic> json,
) => UpdateCharityRequest(
  address: json['address'] as String,
  capacity: (json['capacity'] as num).toInt(),
  latitude: (json['latitude'] as num).toDouble(),
  longitude: (json['longitude'] as num).toDouble(),
  name: json['name'] as String,
  type: (json['type'] as num).toInt(),
  description: json['description'] as String,
);

Map<String, dynamic> _$UpdateCharityRequestToJson(
  UpdateCharityRequest instance,
) => <String, dynamic>{
  'address': instance.address,
  'capacity': instance.capacity,
  'latitude': instance.latitude,
  'longitude': instance.longitude,
  'name': instance.name,
  'type': instance.type,
  'description': instance.description,
};
