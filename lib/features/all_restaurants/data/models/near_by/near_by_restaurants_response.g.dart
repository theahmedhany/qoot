// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'near_by_restaurants_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NearbyRestaurantsResponse _$NearbyRestaurantsResponseFromJson(
  Map<String, dynamic> json,
) => NearbyRestaurantsResponse(
  isSuccess: json['isSuccess'] as bool?,
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : NearbyRestaurantsData.fromJson(json['data'] as Map<String, dynamic>),
  errors: json['errors'] as List<dynamic>?,
);

Map<String, dynamic> _$NearbyRestaurantsResponseToJson(
  NearbyRestaurantsResponse instance,
) => <String, dynamic>{
  'isSuccess': instance.isSuccess,
  'message': instance.message,
  'data': instance.data,
  'errors': instance.errors,
};

NearbyRestaurantsData _$NearbyRestaurantsDataFromJson(
  Map<String, dynamic> json,
) => NearbyRestaurantsData(
  items: (json['items'] as List<dynamic>?)
      ?.map((e) => RestaurantItem.fromJson(e as Map<String, dynamic>))
      .toList(),
  totalCount: (json['totalCount'] as num?)?.toInt(),
  pageNumber: (json['pageNumber'] as num?)?.toInt(),
  pageSize: (json['pageSize'] as num?)?.toInt(),
  totalPages: (json['totalPages'] as num?)?.toInt(),
  hasPreviousPage: json['hasPreviousPage'] as bool?,
  hasNextPage: json['hasNextPage'] as bool?,
);

Map<String, dynamic> _$NearbyRestaurantsDataToJson(
  NearbyRestaurantsData instance,
) => <String, dynamic>{
  'items': instance.items,
  'totalCount': instance.totalCount,
  'pageNumber': instance.pageNumber,
  'pageSize': instance.pageSize,
  'totalPages': instance.totalPages,
  'hasPreviousPage': instance.hasPreviousPage,
  'hasNextPage': instance.hasNextPage,
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
