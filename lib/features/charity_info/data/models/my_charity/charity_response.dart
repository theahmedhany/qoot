import 'package:json_annotation/json_annotation.dart';
part 'charity_response.g.dart';

@JsonSerializable(explicitToJson: true)
class CharityResponse {
  final bool isSuccess;
  final String message;
  final CharityData? data;
  final List<dynamic> errors;

  CharityResponse({
    required this.isSuccess,
    required this.message,
    this.data,
    required this.errors,
  });

  factory CharityResponse.fromJson(Map<String, dynamic> json) =>
      _$CharityResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CharityResponseToJson(this);
}

@JsonSerializable()
class CharityData {
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
  final String createdAt;
  final String contactName;
  final String email;
  final String phoneNumber;

  CharityData({
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

  factory CharityData.fromJson(Map<String, dynamic> json) =>
      _$CharityDataFromJson(json);

  Map<String, dynamic> toJson() => _$CharityDataToJson(this);
}
