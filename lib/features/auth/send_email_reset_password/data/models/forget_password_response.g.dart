// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forget_password_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ForgetPasswordResponse _$ForgetPasswordResponseFromJson(
  Map<String, dynamic> json,
) => _ForgetPasswordResponse(
  isSuccessLower: json['isSuccess'] as bool?,
  isSuccessUpper: json['IsSuccess'] as bool?,
  messageLower: json['message'] as String?,
  messageUpper: json['Message'] as String?,
  data: json['data'],
  dataUpper: json['Data'],
  errors: json['errors'] as List<dynamic>?,
  errorsUpper: json['Errors'] as List<dynamic>?,
);

Map<String, dynamic> _$ForgetPasswordResponseToJson(
  _ForgetPasswordResponse instance,
) => <String, dynamic>{
  'isSuccess': instance.isSuccessLower,
  'IsSuccess': instance.isSuccessUpper,
  'message': instance.messageLower,
  'Message': instance.messageUpper,
  'data': instance.data,
  'Data': instance.dataUpper,
  'errors': instance.errors,
  'Errors': instance.errorsUpper,
};
