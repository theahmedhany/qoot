// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_email_confirmation_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SendEmailConfirmationResponse _$SendEmailConfirmationResponseFromJson(
  Map<String, dynamic> json,
) => _SendEmailConfirmationResponse(
  isSuccess: json['isSuccess'] as bool,
  message: json['message'] as String,
  data: json['data'] as String,
  errors: json['errors'] as List<dynamic>,
);

Map<String, dynamic> _$SendEmailConfirmationResponseToJson(
  _SendEmailConfirmationResponse instance,
) => <String, dynamic>{
  'isSuccess': instance.isSuccess,
  'message': instance.message,
  'data': instance.data,
  'errors': instance.errors,
};
