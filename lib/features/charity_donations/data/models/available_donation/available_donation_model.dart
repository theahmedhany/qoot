import 'package:freezed_annotation/freezed_annotation.dart';
import 'donation_item.dart';
part 'available_donation_model.freezed.dart';
part 'available_donation_model.g.dart';

@freezed
abstract class AvailableDonationsResponse with _$AvailableDonationsResponse {
  const factory AvailableDonationsResponse({
    required bool isSuccess,
    required String message,
    DonationsData? data,
    List<dynamic>? errors,
  }) = _AvailableDonationsResponse;

  factory AvailableDonationsResponse.fromJson(Map<String, dynamic> json) =>
      _$AvailableDonationsResponseFromJson(json);
}

@freezed
abstract class DonationsData with _$DonationsData {
  const factory DonationsData({
    List<DonationItem>? items,
    int? totalCount,
    int? pageNumber,
    int? pageSize,
    int? totalPages,
    bool? hasPreviousPage,
    bool? hasNextPage,
  }) = _DonationsData;

  factory DonationsData.fromJson(Map<String, dynamic> json) =>
      _$DonationsDataFromJson(json);
}
