// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_restaurant_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MyRestaurantResponse _$MyRestaurantResponseFromJson(
  Map<String, dynamic> json,
) => _MyRestaurantResponse(
  isSuccessLower: json['isSuccess'] as bool?,
  isSuccessUpper: json['IsSuccess'] as bool?,
  messageLower: json['message'] as String?,
  messageUpper: json['Message'] as String?,
  dataLower: json['data'] as Map<String, dynamic>?,
  dataUpper: json['Data'] as Map<String, dynamic>?,
  errorsLower: json['errors'] as List<dynamic>?,
  errorsUpper: json['Errors'] as List<dynamic>?,
);

Map<String, dynamic> _$MyRestaurantResponseToJson(
  _MyRestaurantResponse instance,
) => <String, dynamic>{
  'isSuccess': instance.isSuccessLower,
  'IsSuccess': instance.isSuccessUpper,
  'message': instance.messageLower,
  'Message': instance.messageUpper,
  'data': instance.dataLower,
  'Data': instance.dataUpper,
  'errors': instance.errorsLower,
  'Errors': instance.errorsUpper,
};
