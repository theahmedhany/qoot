import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../data/models/donation_images/donation_images_response.dart';

part 'donation_images_state.freezed.dart';

@freezed
class DonationImagesState with _$DonationImagesState {
  const factory DonationImagesState.initial() = _Initial;
  const factory DonationImagesState.loading() = Loading;
  const factory DonationImagesState.success(DonationImagesResponse data) =
      Success;
  const factory DonationImagesState.failure(String errorMessage) = Failure;
}
