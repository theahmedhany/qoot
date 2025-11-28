// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'charity_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CharityResponse _$CharityResponseFromJson(Map<String, dynamic> json) =>
    CharityResponse(
      isSuccess: json['isSuccess'] as bool,
      message: json['message'] as String,
      data: json['data'] == null
          ? null
          : CharityData.fromJson(json['data'] as Map<String, dynamic>),
      errors: json['errors'] as List<dynamic>,
    );

Map<String, dynamic> _$CharityResponseToJson(CharityResponse instance) =>
    <String, dynamic>{
      'isSuccess': instance.isSuccess,
      'message': instance.message,
      'data': instance.data?.toJson(),
      'errors': instance.errors,
    };

CharityData _$CharityDataFromJson(Map<String, dynamic> json) => CharityData(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  description: json['description'] as String,
  address: json['address'] as String,
  latitude: (json['latitude'] as num).toDouble(),
  longitude: (json['longitude'] as num).toDouble(),
  capacity: (json['capacity'] as num).toInt(),
  type: (json['type'] as num).toInt(),
  status: (json['status'] as num).toInt(),
  statusDisplayName: json['statusDisplayName'] as String,
  isActive: json['isActive'] as bool,
  createdAt: json['createdAt'] as String,
  contactName: json['contactName'] as String,
  email: json['email'] as String,
  phoneNumber: json['phoneNumber'] as String,
);

Map<String, dynamic> _$CharityDataToJson(CharityData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'address': instance.address,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'capacity': instance.capacity,
      'type': instance.type,
      'status': instance.status,
      'statusDisplayName': instance.statusDisplayName,
      'isActive': instance.isActive,
      'createdAt': instance.createdAt,
      'contactName': instance.contactName,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
    };
