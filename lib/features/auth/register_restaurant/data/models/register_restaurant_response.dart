import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_restaurant_response.freezed.dart';
part 'register_restaurant_response.g.dart';

@freezed
abstract class RegisterRestaurantResponse with _$RegisterRestaurantResponse {
  const factory RegisterRestaurantResponse({
    @JsonKey(name: 'isSuccess') bool? isSuccess,
    @JsonKey(name: 'IsSuccess') bool? isSuccessAlt,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'Message') String? messageAlt,
    dynamic data,
    dynamic Data,
    List<dynamic>? errors,
    List<dynamic>? Errors,
  }) = _RegisterRestaurantResponse;

  factory RegisterRestaurantResponse.fromJson(Map<String, dynamic> json) =>
      _$RegisterRestaurantResponseFromJson(json);
}

extension RegisterRestaurantResponseX on RegisterRestaurantResponse {
  bool get success => isSuccess ?? isSuccessAlt ?? false;
  String get displayMessage => message ?? messageAlt ?? '';
  dynamic get resultData => data ?? Data;
  List<dynamic> get displayErrors => errors ?? Errors ?? [];
}
