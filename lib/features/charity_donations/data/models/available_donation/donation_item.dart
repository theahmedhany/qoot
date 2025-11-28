import 'package:freezed_annotation/freezed_annotation.dart';
import 'donation_image.dart';
part 'donation_item.freezed.dart';
part 'donation_item.g.dart';

@freezed
abstract class DonationItem with _$DonationItem {
  const factory DonationItem({
    int? id,
    String? foodType,
    String? description,
    int? estimatedServings,
    String? expiryDateTime,
    int? status,
    String? statusDisplayName,
    bool? requiresPickup,
    String? specialInstructions,
    String? contactPerson,
    String? contactPhone,
    String? createdAt,
    String? updatedAt,
    int? restaurantId,
    String? restaurantName,
    String? restaurantAddress,
    String? restaurantPhone,
    double? restaurantLatitude,
    double? restaurantLongitude,
    List<DonationImage>? images,
    int? reservationCount,
    bool? isExpired,
    bool? isAvailable,
  }) = _DonationItem;

  factory DonationItem.fromJson(Map<String, dynamic> json) =>
      _$DonationItemFromJson(json);
}
