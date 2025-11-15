import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_restaurant_response.freezed.dart';
part 'my_restaurant_response.g.dart';

@freezed
abstract class MyRestaurantResponse with _$MyRestaurantResponse {
  const MyRestaurantResponse._();

  const factory MyRestaurantResponse({
    @JsonKey(name: 'isSuccess') bool? isSuccessLower,
    @JsonKey(name: 'IsSuccess') bool? isSuccessUpper,
    @JsonKey(name: 'message') String? messageLower,
    @JsonKey(name: 'Message') String? messageUpper,
    @JsonKey(name: 'data') Map<String, dynamic>? dataLower,
    @JsonKey(name: 'Data') Map<String, dynamic>? dataUpper,
    @JsonKey(name: 'errors') List<dynamic>? errorsLower,
    @JsonKey(name: 'Errors') List<dynamic>? errorsUpper,
  }) = _MyRestaurantResponse;

  factory MyRestaurantResponse.fromJson(Map<String, dynamic> json) =>
      _$MyRestaurantResponseFromJson(json);

  bool get isSuccess => isSuccessLower ?? isSuccessUpper ?? false;

  String get message => messageLower ?? messageUpper ?? '';

  Map<String, dynamic>? get restaurantData => dataLower ?? dataUpper;

  List<dynamic> get errors => errorsLower ?? errorsUpper ?? [];
}
