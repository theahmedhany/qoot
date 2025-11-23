import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qoot/features/donation_details/data/models/donation_details/donation_details_response.dart';
part 'donation_details_state.freezed.dart';

@freezed
class DonationDetailsState with _$DonationDetailsState {
  const factory DonationDetailsState.initial() = _Initial;
  const factory DonationDetailsState.loading() = _Loading;
  const factory DonationDetailsState.success(DonationDetailsResponse details) =
      _Success;
  const factory DonationDetailsState.error(String message) = _Error;
}
