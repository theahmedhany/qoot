part of 'restaurant_profile_cubit.dart';

@freezed
class RestaurantProfileState with _$RestaurantProfileState {
  const factory RestaurantProfileState.initial() = _Initial;
  const factory RestaurantProfileState.loading() = Loading;
  const factory RestaurantProfileState.success() = Success;
  const factory RestaurantProfileState.deleted() = Deleted;
  const factory RestaurantProfileState.failure(String message) = Failure;
}
