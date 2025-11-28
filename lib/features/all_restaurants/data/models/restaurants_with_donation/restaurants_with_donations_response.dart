import 'package:json_annotation/json_annotation.dart';

part 'restaurants_with_donations_response.g.dart';

@JsonSerializable()
class RestaurantsWithDonationsResponse {
  final bool? isSuccess;
  final String? message;
  final List<RestaurantItem> data;
  final List<dynamic>? errors;

  RestaurantsWithDonationsResponse({
    this.isSuccess,
    this.message,
    required this.data,
    this.errors,
  });

  factory RestaurantsWithDonationsResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$RestaurantsWithDonationsResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$RestaurantsWithDonationsResponseToJson(this);
}

@JsonSerializable()
class RestaurantItem {
  final int? id;
  final String? name;
  final String? description;
  final String? address;
  final double? latitude;
  final double? longitude;
  final int? status;
  final String? statusDisplayName;
  final bool? isActive;
  final String? createdAt;
  final String? ownerName;
  final String? email;
  final String? phoneNumber;

  RestaurantItem({
    this.id,
    this.name,
    this.description,
    this.address,
    this.latitude,
    this.longitude,
    this.status,
    this.statusDisplayName,
    this.isActive,
    this.createdAt,
    this.ownerName,
    this.email,
    this.phoneNumber,
  });

  factory RestaurantItem.fromJson(Map<String, dynamic> json) =>
      _$RestaurantItemFromJson(json);

  Map<String, dynamic> toJson() => _$RestaurantItemToJson(this);
}
