// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LoginResponseModel _$LoginResponseModelFromJson(Map<String, dynamic> json) =>
    _LoginResponseModel(
      isSuccess: json['isSuccess'] as bool,
      message: json['message'] as String,
      data: json['data'] == null
          ? null
          : LoginDataModel.fromJson(json['data'] as Map<String, dynamic>),
      errors: json['errors'] as List<dynamic>?,
    );

Map<String, dynamic> _$LoginResponseModelToJson(_LoginResponseModel instance) =>
    <String, dynamic>{
      'isSuccess': instance.isSuccess,
      'message': instance.message,
      'data': instance.data,
      'errors': instance.errors,
    };

_LoginDataModel _$LoginDataModelFromJson(Map<String, dynamic> json) =>
    _LoginDataModel(
      token: json['token'] as String,
      tokenExpiry: json['tokenExpiry'] as String,
      user: UserModel.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoginDataModelToJson(_LoginDataModel instance) =>
    <String, dynamic>{
      'token': instance.token,
      'tokenExpiry': instance.tokenExpiry,
      'user': instance.user,
    };

_UserModel _$UserModelFromJson(Map<String, dynamic> json) => _UserModel(
  id: json['id'] as String,
  firstName: json['firstName'] as String,
  lastName: json['lastName'] as String,
  email: json['email'] as String,
  phoneNumber: json['phoneNumber'] as String,
  profileImage: json['profileImage'] as String?,
  roles: (json['roles'] as List<dynamic>).map((e) => e as String).toList(),
  isVerified: json['isVerified'] as bool,
);

Map<String, dynamic> _$UserModelToJson(_UserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'profileImage': instance.profileImage,
      'roles': instance.roles,
      'isVerified': instance.isVerified,
    };
