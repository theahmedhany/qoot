import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../data/models/near_by/near_by_restaurants_response.dart';
part 'near_by_restaurants_state.freezed.dart';

@freezed
class NearByRestaurantsState with _$NearByRestaurantsState {
  const factory NearByRestaurantsState.initial() = _Initial;
  const factory NearByRestaurantsState.loading() = Loading;
  const factory NearByRestaurantsState.success(
    NearbyRestaurantsResponse data,
  ) = Success;
  const factory NearByRestaurantsState.error(String message) = Error;
}
