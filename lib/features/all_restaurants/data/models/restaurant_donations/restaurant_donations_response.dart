import 'package:json_annotation/json_annotation.dart';
import 'package:qoot/features/charity_donations/data/models/available_donation/donation_item.dart';
part 'restaurant_donations_response.g.dart';

@JsonSerializable()
class RestaurantDonationsResponse {
  final bool isSuccess;
  final String message;
  final DonationsData data;
  final List<dynamic>? errors;

  RestaurantDonationsResponse({
    required this.isSuccess,
    required this.message,
    required this.data,
    this.errors,
  });

  factory RestaurantDonationsResponse.fromJson(Map<String, dynamic> json) =>
      _$RestaurantDonationsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$RestaurantDonationsResponseToJson(this);
}

@JsonSerializable()
class DonationsData {
  final List<DonationItem> items;
  final int totalCount;
  final int pageNumber;
  final int pageSize;
  final int totalPages;
  final bool hasPreviousPage;
  final bool hasNextPage;

  DonationsData({
    required this.items,
    required this.totalCount,
    required this.pageNumber,
    required this.pageSize,
    required this.totalPages,
    required this.hasPreviousPage,
    required this.hasNextPage,
  });

  factory DonationsData.fromJson(Map<String, dynamic> json) =>
      _$DonationsDataFromJson(json);

  Map<String, dynamic> toJson() => _$DonationsDataToJson(this);
}
