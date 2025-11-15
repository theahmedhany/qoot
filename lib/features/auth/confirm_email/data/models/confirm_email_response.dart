import 'package:freezed_annotation/freezed_annotation.dart';

part 'confirm_email_response.freezed.dart';
part 'confirm_email_response.g.dart';

@freezed
abstract class ConfirmEmailResponse with _$ConfirmEmailResponse {
  const factory ConfirmEmailResponse({
    required bool isSuccess,
    required String message,
    dynamic data,
    required List<dynamic> errors,
  }) = _ConfirmEmailResponse;

  factory ConfirmEmailResponse.fromJson(Map<String, dynamic> json) =>
      _$ConfirmEmailResponseFromJson(json);
}
