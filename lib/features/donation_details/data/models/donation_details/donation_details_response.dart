import 'package:json_annotation/json_annotation.dart';
import 'package:qoot/features/donation_details/data/models/donation_details/donation_details_data.dart';
part 'donation_details_response.g.dart';

@JsonSerializable(explicitToJson: true)
class DonationDetailsResponse {
  final bool isSuccess;
  final String message;
  final DonationDetailsData? data;
  final List<dynamic>? errors;

  DonationDetailsResponse({
    required this.isSuccess,
    required this.message,
    this.data,
    this.errors,
  });

  factory DonationDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$DonationDetailsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DonationDetailsResponseToJson(this);
}
