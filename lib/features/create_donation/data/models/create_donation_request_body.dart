import 'package:json_annotation/json_annotation.dart';

part 'create_donation_request_body.g.dart';

@JsonSerializable()
class CreateDonationRequestBody {
  final String foodType;
  final String description;
  final int estimatedServings;
  final DateTime expiryDateTime;
  final bool requiresPickup;
  final String specialInstructions;
  final String contactPerson;
  final String contactPhone;
  final List<String> images;

  CreateDonationRequestBody({
    required this.foodType,
    required this.description,
    required this.estimatedServings,
    required this.expiryDateTime,
    required this.requiresPickup,
    required this.specialInstructions,
    required this.contactPerson,
    required this.contactPhone,
    required this.images,
  });

  factory CreateDonationRequestBody.fromJson(Map<String, dynamic> json) =>
      _$CreateDonationRequestBodyFromJson(json);

  Map<String, dynamic> toJson() => _$CreateDonationRequestBodyToJson(this);
}
