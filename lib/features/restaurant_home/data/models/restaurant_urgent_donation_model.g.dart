// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_urgent_donation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RestaurantUrgentDonationModel _$RestaurantUrgentDonationModelFromJson(
  Map<String, dynamic> json,
) => RestaurantUrgentDonationModel(
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
  createdAt: DateTime.parse(json['createdAt'] as String),
  contactName: json['contactName'] as String,
  email: json['email'] as String,
  phoneNumber: json['phoneNumber'] as String,
  images: (json['images'] as List<dynamic>)
      .map((e) => CharityImageModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$RestaurantUrgentDonationModelToJson(
  RestaurantUrgentDonationModel instance,
) => <String, dynamic>{
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
  'createdAt': instance.createdAt.toIso8601String(),
  'contactName': instance.contactName,
  'email': instance.email,
  'phoneNumber': instance.phoneNumber,
  'images': instance.images.map((e) => e.toJson()).toList(),
};

CharityImageModel _$CharityImageModelFromJson(Map<String, dynamic> json) =>
    CharityImageModel(
      id: (json['id'] as num).toInt(),
      imagePath: json['imagePath'] as String,
      isPrimary: json['isPrimary'] as bool,
      charityId: (json['charityId'] as num).toInt(),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$CharityImageModelToJson(CharityImageModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imagePath': instance.imagePath,
      'isPrimary': instance.isPrimary,
      'charityId': instance.charityId,
      'createdAt': instance.createdAt.toIso8601String(),
    };
