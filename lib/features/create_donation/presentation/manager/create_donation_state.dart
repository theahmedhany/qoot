import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qoot/features/create_donation/data/models/create_donation_response.dart';

part 'create_donation_state.freezed.dart';

@freezed
class CreateDonationState with _$CreateDonationState {
  const factory CreateDonationState.initial() = _Initial;
  const factory CreateDonationState.loading() = Loading;
  const factory CreateDonationState.success(
    CreateDonationResponse donationResponse,
  ) = Success;
  const factory CreateDonationState.error({required String error}) = Error;
}
