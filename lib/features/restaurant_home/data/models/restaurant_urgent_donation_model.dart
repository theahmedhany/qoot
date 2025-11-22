import 'package:json_annotation/json_annotation.dart';

part 'restaurant_urgent_donation_model.g.dart';

@JsonSerializable()
class RestaurantUrgentDonationModel {
  final int id;
  final String name;
  final String description;
  final String address;
  final double latitude;
  final double longitude;
  final int capacity;
  final int type;
  final int status;
  final String statusDisplayName;
  final bool isActive;
  final DateTime createdAt;
  final String contactName;
  final String email;
  final String phoneNumber;

  RestaurantUrgentDonationModel({
    required this.id,
    required this.name,
    required this.description,
    required this.address,
    required this.latitude,
    required this.longitude,
    required this.capacity,
    required this.type,
    required this.status,
    required this.statusDisplayName,
    required this.isActive,
    required this.createdAt,
    required this.contactName,
    required this.email,
    required this.phoneNumber,
  });

  factory RestaurantUrgentDonationModel.fromJson(Map<String, dynamic> json) =>
      _$RestaurantUrgentDonationModelFromJson(json);

  Map<String, dynamic> toJson() => _$RestaurantUrgentDonationModelToJson(this);
}
