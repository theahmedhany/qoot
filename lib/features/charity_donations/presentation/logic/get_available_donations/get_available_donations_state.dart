import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qoot/features/charity_donations/data/models/available_donation/available_donation_model.dart';

part 'get_available_donations_state.freezed.dart';

@freezed
class GetAvailableDonationsState with _$GetAvailableDonationsState {
  const factory GetAvailableDonationsState.initial() = _Initial;

  const factory GetAvailableDonationsState.loading() = Loading;

  const factory GetAvailableDonationsState.success(
    AvailableDonationsResponse response,
  ) = Success;

  const factory GetAvailableDonationsState.failure(
    String message,
  ) = Failure;
}
