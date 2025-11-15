// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'confirm_email_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ConfirmEmailResponse _$ConfirmEmailResponseFromJson(
  Map<String, dynamic> json,
) => _ConfirmEmailResponse(
  isSuccess: json['isSuccess'] as bool,
  message: json['message'] as String,
  data: json['data'],
  errors: json['errors'] as List<dynamic>,
);

Map<String, dynamic> _$ConfirmEmailResponseToJson(
  _ConfirmEmailResponse instance,
) => <String, dynamic>{
  'isSuccess': instance.isSuccess,
  'message': instance.message,
  'data': instance.data,
  'errors': instance.errors,
};
