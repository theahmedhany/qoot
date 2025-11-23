import 'package:json_annotation/json_annotation.dart';
part 'near_by_restaurants_response.g.dart';

@JsonSerializable()
class NearbyRestaurantsResponse {
  final bool? isSuccess;
  final String? message;
  final NearbyRestaurantsData? data;
  final List<dynamic>? errors;

  NearbyRestaurantsResponse({
    this.isSuccess,
    this.message,
    this.data,
    this.errors,
  });

  factory NearbyRestaurantsResponse.fromJson(Map<String, dynamic> json) =>
      _$NearbyRestaurantsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$NearbyRestaurantsResponseToJson(this);
}

@JsonSerializable()
class NearbyRestaurantsData {
  final List<RestaurantItem>? items;
  final int? totalCount;
  final int? pageNumber;
  final int? pageSize;
  final int? totalPages;
  final bool? hasPreviousPage;
  final bool? hasNextPage;

  NearbyRestaurantsData({
    this.items,
    this.totalCount,
    this.pageNumber,
    this.pageSize,
    this.totalPages,
    this.hasPreviousPage,
    this.hasNextPage,
  });

  factory NearbyRestaurantsData.fromJson(Map<String, dynamic> json) =>
      _$NearbyRestaurantsDataFromJson(json);

  Map<String, dynamic> toJson() => _$NearbyRestaurantsDataToJson(this);
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
