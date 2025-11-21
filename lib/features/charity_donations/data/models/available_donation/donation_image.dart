import 'package:freezed_annotation/freezed_annotation.dart';

part 'donation_image.freezed.dart';
part 'donation_image.g.dart';

@freezed
abstract class DonationImage with _$DonationImage {
  const factory DonationImage({
    int? id,
    String? imagePath,
    bool? isPrimary,
    int? donationId,
    String? createdAt,
  }) = _DonationImage;

  factory DonationImage.fromJson(Map<String, dynamic> json) =>
      _$DonationImageFromJson(json);
}
