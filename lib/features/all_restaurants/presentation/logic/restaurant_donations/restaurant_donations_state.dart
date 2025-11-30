import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../data/models/restaurant_donations/restaurant_donations_response.dart';
part 'restaurant_donations_state.freezed.dart';

@freezed
class RestaurantDonationsState with _$RestaurantDonationsState {
  const factory RestaurantDonationsState.initial() = _Initial;

  const factory RestaurantDonationsState.loading() = Loading;

  const factory RestaurantDonationsState.success(
    RestaurantDonationsResponse data,
  ) = Success;

  const factory RestaurantDonationsState.error(
    String message,
  ) = Error;
}
