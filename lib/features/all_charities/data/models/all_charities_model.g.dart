// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_charities_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllCharitiesModel _$AllCharitiesModelFromJson(Map<String, dynamic> json) =>
    AllCharitiesModel(
      isSuccess: json['isSuccess'] as bool,
      message: json['message'] as String,
      data: AllCharitiesData.fromJson(json['data'] as Map<String, dynamic>),
      errors: json['errors'] as List<dynamic>,
    );

Map<String, dynamic> _$AllCharitiesModelToJson(AllCharitiesModel instance) =>
    <String, dynamic>{
      'isSuccess': instance.isSuccess,
      'message': instance.message,
      'data': instance.data.toJson(),
      'errors': instance.errors,
    };

AllCharitiesData _$AllCharitiesDataFromJson(Map<String, dynamic> json) =>
    AllCharitiesData(
      items: (json['items'] as List<dynamic>)
          .map((e) => CharityItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalCount: (json['totalCount'] as num).toInt(),
      pageNumber: (json['pageNumber'] as num).toInt(),
      pageSize: (json['pageSize'] as num).toInt(),
      totalPages: (json['totalPages'] as num).toInt(),
      hasPreviousPage: json['hasPreviousPage'] as bool,
      hasNextPage: json['hasNextPage'] as bool,
    );

Map<String, dynamic> _$AllCharitiesDataToJson(AllCharitiesData instance) =>
    <String, dynamic>{
      'items': instance.items.map((e) => e.toJson()).toList(),
      'totalCount': instance.totalCount,
      'pageNumber': instance.pageNumber,
      'pageSize': instance.pageSize,
      'totalPages': instance.totalPages,
      'hasPreviousPage': instance.hasPreviousPage,
      'hasNextPage': instance.hasNextPage,
    };

CharityItem _$CharityItemFromJson(Map<String, dynamic> json) => CharityItem(
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
  images: (json['images'] as List<dynamic>)
      .map((e) => CharityImage.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$CharityItemToJson(CharityItem instance) =>
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
      'images': instance.images.map((e) => e.toJson()).toList(),
    };

CharityImage _$CharityImageFromJson(Map<String, dynamic> json) => CharityImage(
  id: (json['id'] as num).toInt(),
  imagePath: json['imagePath'] as String,
  isPrimary: json['isPrimary'] as bool,
  charityId: (json['charityId'] as num).toInt(),
  createdAt: json['createdAt'] as String,
);

Map<String, dynamic> _$CharityImageToJson(CharityImage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imagePath': instance.imagePath,
      'isPrimary': instance.isPrimary,
      'charityId': instance.charityId,
      'createdAt': instance.createdAt,
    };
