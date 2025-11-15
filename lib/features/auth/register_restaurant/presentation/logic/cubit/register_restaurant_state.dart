import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/register_restaurant_response.dart';

part 'register_restaurant_state.freezed.dart';

@freezed
class RegisterRestaurantState with _$RegisterRestaurantState {
  const factory RegisterRestaurantState.initial() = _Initial;
  const factory RegisterRestaurantState.loading() = _Loading;
  const factory RegisterRestaurantState.success(RegisterRestaurantResponse response) = _Success;
  const factory RegisterRestaurantState.failure(String message) = _Failure;
}
