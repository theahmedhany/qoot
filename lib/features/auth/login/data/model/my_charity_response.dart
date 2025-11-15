import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_charity_response.freezed.dart';
part 'my_charity_response.g.dart';

@freezed
abstract class MyCharityResponse with _$MyCharityResponse {
  const MyCharityResponse._();

  const factory MyCharityResponse({
    @JsonKey(name: 'isSuccess') bool? isSuccessLower,
    @JsonKey(name: 'IsSuccess') bool? isSuccessUpper,
    @JsonKey(name: 'message') String? messageLower,
    @JsonKey(name: 'Message') String? messageUpper,
    dynamic data,
    @JsonKey(name: 'Data') dynamic dataUpper,
    List<dynamic>? errors,
    @JsonKey(name: 'Errors') List<dynamic>? errorsUpper,
  }) = _MyCharityResponse;

  factory MyCharityResponse.fromJson(Map<String, dynamic> json) =>
      _$MyCharityResponseFromJson(json);

  bool get isSuccess => isSuccessLower ?? isSuccessUpper ?? false;
  String get message => messageLower ?? messageUpper ?? '';
  dynamic get charityData => data ?? dataUpper;
}
