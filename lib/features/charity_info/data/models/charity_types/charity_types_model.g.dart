// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'charity_types_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CharityTypesResponse _$CharityTypesResponseFromJson(
  Map<String, dynamic> json,
) => CharityTypesResponse(
  isSuccess: json['isSuccess'] as bool,
  message: json['message'] as String,
  data: (json['data'] as List<dynamic>?)
      ?.map((e) => CharityType.fromJson(e as Map<String, dynamic>))
      .toList(),
  errors: json['errors'] as List<dynamic>?,
);

Map<String, dynamic> _$CharityTypesResponseToJson(
  CharityTypesResponse instance,
) => <String, dynamic>{
  'isSuccess': instance.isSuccess,
  'message': instance.message,
  'data': instance.data?.map((e) => e.toJson()).toList(),
  'errors': instance.errors,
};

CharityType _$CharityTypeFromJson(Map<String, dynamic> json) => CharityType(
  value: (json['value'] as num?)?.toInt(),
  name: json['name'] as String?,
  displayName: json['displayName'] as String?,
);

Map<String, dynamic> _$CharityTypeToJson(CharityType instance) =>
    <String, dynamic>{
      'value': instance.value,
      'name': instance.name,
      'displayName': instance.displayName,
    };
