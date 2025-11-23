// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: unused_element

part of 'base_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponse<T> _$BaseResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => BaseResponse<T>(
  isSuccess: json['isSuccess'] as bool,
  message: json['message'] as String,
  data: fromJsonT(json['data']),
  errors: json['errors'] as List<dynamic>? ?? [],
);

Map<String, dynamic> _$BaseResponseToJson<T>(
  BaseResponse<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{
  'isSuccess': instance.isSuccess,
  'message': instance.message,
  'data': toJsonT(instance.data),
  'errors': instance.errors,
};

PaginatedData<T> _$PaginatedDataFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => PaginatedData<T>(
  items: (json['items'] as List<dynamic>?)?.map(fromJsonT).toList() ?? [],
  totalCount: (json['totalCount'] as num).toInt(),
  pageNumber: (json['pageNumber'] as num).toInt(),
  pageSize: (json['pageSize'] as num).toInt(),
  totalPages: (json['totalPages'] as num).toInt(),
  hasPreviousPage: json['hasPreviousPage'] as bool,
  hasNextPage: json['hasNextPage'] as bool,
);

Map<String, dynamic> _$PaginatedDataToJson<T>(
  PaginatedData<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{
  'items': instance.items.map(toJsonT).toList(),
  'totalCount': instance.totalCount,
  'pageNumber': instance.pageNumber,
  'pageSize': instance.pageSize,
  'totalPages': instance.totalPages,
  'hasPreviousPage': instance.hasPreviousPage,
  'hasNextPage': instance.hasNextPage,
};
