import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qoot/features/restaurant_home/data/models/restaurant_urgent_donation_model.dart';

part 'restaurant_home_state.freezed.dart';

@freezed
class RestaurantHomeState with _$RestaurantHomeState {
  const factory RestaurantHomeState.initial() = _Initial;
  const factory RestaurantHomeState.loading() = Loading;
  const factory RestaurantHomeState.success(
    List<RestaurantUrgentDonationModel> data,
  ) = Success;
  const factory RestaurantHomeState.error({required String message}) = Error;
}
