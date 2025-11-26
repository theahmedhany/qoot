import 'package:json_annotation/json_annotation.dart';

part 'all_charities_model.g.dart';

@JsonSerializable()
class AllCharitiesModel {
  final bool isSuccess;
  final String message;
  final AllCharitiesData data;
  final List<dynamic> errors;

  AllCharitiesModel({
    required this.isSuccess,
    required this.message,
    required this.data,
    required this.errors,
  });

  factory AllCharitiesModel.fromJson(Map<String, dynamic> json) =>
      _$AllCharitiesModelFromJson(json);

  Map<String, dynamic> toJson() => _$AllCharitiesModelToJson(this);
}

@JsonSerializable()
class AllCharitiesData {
  final List<CharityItem> items;
  final int totalCount;
  final int pageNumber;
  final int pageSize;
  final int totalPages;
  final bool hasPreviousPage;
  final bool hasNextPage;

  AllCharitiesData({
    required this.items,
    required this.totalCount,
    required this.pageNumber,
    required this.pageSize,
    required this.totalPages,
    required this.hasPreviousPage,
    required this.hasNextPage,
  });

  factory AllCharitiesData.fromJson(Map<String, dynamic> json) =>
      _$AllCharitiesDataFromJson(json);

  Map<String, dynamic> toJson() => _$AllCharitiesDataToJson(this);
}

@JsonSerializable()
class CharityItem {
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

  CharityItem({
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

  factory CharityItem.fromJson(Map<String, dynamic> json) =>
      _$CharityItemFromJson(json);

  Map<String, dynamic> toJson() => _$CharityItemToJson(this);
}
