import 'package:json_annotation/json_annotation.dart';

part 'register_charity_response.g.dart';

@JsonSerializable()
class RegisterCharityResponse {
  @JsonKey(name: 'isSuccess')
  final bool? isSuccess;
  @JsonKey(name: 'IsSuccess')
  final bool? isSuccessAlt;

  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'Message')
  final String? messageAlt;

  @JsonKey(name: 'data')
  final dynamic data;
  @JsonKey(name: 'Data')
  final dynamic dataAlt;

  @JsonKey(name: 'errors')
  final dynamic errors;
  @JsonKey(name: 'Errors')
  final dynamic errorsAlt;

  RegisterCharityResponse({
    this.isSuccess,
    this.isSuccessAlt,
    this.message,
    this.messageAlt,
    this.data,
    this.dataAlt,
    this.errors,
    this.errorsAlt,
  });

  bool get success => isSuccess ?? isSuccessAlt ?? false;
  String get msg => message ?? messageAlt ?? '';
  dynamic get resultData => data ?? dataAlt;
  dynamic get errorList => errors ?? errorsAlt;

  factory RegisterCharityResponse.fromJson(Map<String, dynamic> json) =>
      _$RegisterCharityResponseFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterCharityResponseToJson(this);
}
