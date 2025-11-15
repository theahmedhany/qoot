// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_restaurant_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RegisterRestaurantResponse _$RegisterRestaurantResponseFromJson(
  Map<String, dynamic> json,
) => _RegisterRestaurantResponse(
  isSuccess: json['isSuccess'] as bool?,
  isSuccessAlt: json['IsSuccess'] as bool?,
  message: json['message'] as String?,
  messageAlt: json['Message'] as String?,
  data: json['data'],
  Data: json['Data'],
  errors: json['errors'] as List<dynamic>?,
  Errors: json['Errors'] as List<dynamic>?,
);

Map<String, dynamic> _$RegisterRestaurantResponseToJson(
  _RegisterRestaurantResponse instance,
) => <String, dynamic>{
  'isSuccess': instance.isSuccess,
  'IsSuccess': instance.isSuccessAlt,
  'message': instance.message,
  'Message': instance.messageAlt,
  'data': instance.data,
  'Data': instance.Data,
  'errors': instance.errors,
  'Errors': instance.Errors,
};
