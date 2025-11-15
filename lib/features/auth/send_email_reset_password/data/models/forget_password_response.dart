import 'package:freezed_annotation/freezed_annotation.dart';

part 'forget_password_response.freezed.dart';
part 'forget_password_response.g.dart';

@freezed
abstract class ForgetPasswordResponse with _$ForgetPasswordResponse {
  const ForgetPasswordResponse._();

  const factory ForgetPasswordResponse({
    @JsonKey(name: 'isSuccess') bool? isSuccessLower,
    @JsonKey(name: 'IsSuccess') bool? isSuccessUpper,
    @JsonKey(name: 'message') String? messageLower,
    @JsonKey(name: 'Message') String? messageUpper,
    dynamic data,
    @JsonKey(name: 'Data') dynamic dataUpper,
    List<dynamic>? errors,
    @JsonKey(name: 'Errors') List<dynamic>? errorsUpper,
  }) = _ForgetPasswordResponse;

  factory ForgetPasswordResponse.fromJson(Map<String, dynamic> json) =>
      _$ForgetPasswordResponseFromJson(json);

  bool get isSuccess => isSuccessLower ?? isSuccessUpper ?? false;
  String get message => messageLower ?? messageUpper ?? '';
  dynamic get responseData => data ?? dataUpper;
  List<dynamic> get errorList => errors ?? errorsUpper ?? [];
}
