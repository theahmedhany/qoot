import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qoot/features/all_restaurants/data/models/restaurants_with_donation/restaurants_with_donations_response.dart';
part 'restaurants_with_donations_state.freezed.dart';

@freezed
class RestaurantsWithDonationsState with _$RestaurantsWithDonationsState {
  const factory RestaurantsWithDonationsState.initial() = _Initial;
  const factory RestaurantsWithDonationsState.loading() = Loading;
  const factory RestaurantsWithDonationsState.success(
    RestaurantsWithDonationsResponse data,
  ) = Success;
  const factory RestaurantsWithDonationsState.error(String message) = Error;
}
