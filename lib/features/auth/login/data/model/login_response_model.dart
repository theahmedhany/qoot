import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response_model.freezed.dart';
part 'login_response_model.g.dart';

@freezed
abstract class LoginResponseModel with _$LoginResponseModel {
  const factory LoginResponseModel({
    @JsonKey(name: 'isSuccess') required bool isSuccess,
    @JsonKey(name: 'message') required String message,
    @JsonKey(name: 'data') LoginDataModel? data,
    @JsonKey(name: 'errors') required List<dynamic> errors,
  }) = _LoginResponseModel;

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseModelFromJson(json);
}

@freezed
abstract class LoginDataModel with _$LoginDataModel {
  const factory LoginDataModel({
    required String token,
    required String tokenExpiry,
    required UserModel user,
  }) = _LoginDataModel;

  factory LoginDataModel.fromJson(Map<String, dynamic> json) => _$LoginDataModelFromJson(json);
}

@freezed
abstract class UserModel with _$UserModel {
  const factory UserModel({
    required String id,
    required String firstName,
    required String lastName,
    required String email,
    required String phoneNumber,
    String? profileImage,
    required List<String> roles,
    required bool isVerified,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}
