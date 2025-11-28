// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'available_donation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AvailableDonationsResponse _$AvailableDonationsResponseFromJson(
  Map<String, dynamic> json,
) => _AvailableDonationsResponse(
  isSuccess: json['isSuccess'] as bool,
  message: json['message'] as String,
  data: json['data'] == null
      ? null
      : DonationsData.fromJson(json['data'] as Map<String, dynamic>),
  errors: json['errors'] as List<dynamic>?,
);

Map<String, dynamic> _$AvailableDonationsResponseToJson(
  _AvailableDonationsResponse instance,
) => <String, dynamic>{
  'isSuccess': instance.isSuccess,
  'message': instance.message,
  'data': instance.data,
  'errors': instance.errors,
};

_DonationsData _$DonationsDataFromJson(Map<String, dynamic> json) =>
    _DonationsData(
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

Map<String, dynamic> _$DonationsDataToJson(_DonationsData instance) =>
    <String, dynamic>{
      'items': instance.items,
      'totalCount': instance.totalCount,
      'pageNumber': instance.pageNumber,
      'pageSize': instance.pageSize,
      'totalPages': instance.totalPages,
      'hasPreviousPage': instance.hasPreviousPage,
      'hasNextPage': instance.hasNextPage,
    };
