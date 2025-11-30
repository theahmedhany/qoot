// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_donations_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RestaurantDonationsResponse _$RestaurantDonationsResponseFromJson(
  Map<String, dynamic> json,
) => RestaurantDonationsResponse(
  isSuccess: json['isSuccess'] as bool,
  message: json['message'] as String,
  data: DonationsData.fromJson(json['data'] as Map<String, dynamic>),
  errors: json['errors'] as List<dynamic>?,
);

Map<String, dynamic> _$RestaurantDonationsResponseToJson(
  RestaurantDonationsResponse instance,
) => <String, dynamic>{
  'isSuccess': instance.isSuccess,
  'message': instance.message,
  'data': instance.data,
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
      'items': instance.items,
      'totalCount': instance.totalCount,
      'pageNumber': instance.pageNumber,
      'pageSize': instance.pageSize,
      'totalPages': instance.totalPages,
      'hasPreviousPage': instance.hasPreviousPage,
      'hasNextPage': instance.hasNextPage,
    };
