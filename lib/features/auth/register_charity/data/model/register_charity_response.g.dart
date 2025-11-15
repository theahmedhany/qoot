// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_charity_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterCharityResponse _$RegisterCharityResponseFromJson(
  Map<String, dynamic> json,
) => RegisterCharityResponse(
  isSuccess: json['isSuccess'] as bool?,
  isSuccessAlt: json['IsSuccess'] as bool?,
  message: json['message'] as String?,
  messageAlt: json['Message'] as String?,
  data: json['data'],
  dataAlt: json['Data'],
  errors: json['errors'],
  errorsAlt: json['Errors'],
);

Map<String, dynamic> _$RegisterCharityResponseToJson(
  RegisterCharityResponse instance,
) => <String, dynamic>{
  'isSuccess': instance.isSuccess,
  'IsSuccess': instance.isSuccessAlt,
  'message': instance.message,
  'Message': instance.messageAlt,
  'data': instance.data,
  'Data': instance.dataAlt,
  'errors': instance.errors,
  'Errors': instance.errorsAlt,
};
