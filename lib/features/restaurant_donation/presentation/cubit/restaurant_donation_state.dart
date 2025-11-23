import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qoot/features/restaurant_donation/data/models/donation_history_model.dart';

part 'restaurant_donation_state.freezed.dart';

@freezed
class RestaurantDonationState with _$RestaurantDonationState {
  const factory RestaurantDonationState.initial() = _Initial;
  const factory RestaurantDonationState.loading() = Loading;
  const factory RestaurantDonationState.success(
    List<DonationHistoryModel> data,
  ) = Success;
  const factory RestaurantDonationState.error({required String message}) =
      Error;
}
