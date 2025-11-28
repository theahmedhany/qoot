import 'package:json_annotation/json_annotation.dart';
part 'donation_images_response.g.dart';

@JsonSerializable()
class DonationImagesResponse {
  final bool? isSuccess;
  final String? message;
  final List<DonationImageItem>? data;
  final List<dynamic>? errors;

  DonationImagesResponse({
    this.isSuccess,
    this.message,
    this.data,
    this.errors,
  });

  factory DonationImagesResponse.fromJson(Map<String, dynamic> json) =>
      _$DonationImagesResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DonationImagesResponseToJson(this);
}

@JsonSerializable()
class DonationImageItem {
  final int id;
  final String imagePath;
  final bool isPrimary;
  final int donationId;
  final String createdAt;

  DonationImageItem({
    required this.id,
    required this.imagePath,
    required this.isPrimary,
    required this.donationId,
    required this.createdAt,
  });

  factory DonationImageItem.fromJson(Map<String, dynamic> json) =>
      _$DonationImageItemFromJson(json);

  Map<String, dynamic> toJson() => _$DonationImageItemToJson(this);
}
