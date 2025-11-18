import 'package:json_annotation/json_annotation.dart';
part 'charity_types_model.g.dart';

@JsonSerializable(explicitToJson: true)
class CharityTypesResponse {
  final bool isSuccess;
  final String message;
  final List<CharityType>? data;
  final List<dynamic>? errors;

  CharityTypesResponse({
    required this.isSuccess,
    required this.message,
    this.data,
    this.errors,
  });

  factory CharityTypesResponse.fromJson(Map<String, dynamic> json) =>
      _$CharityTypesResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CharityTypesResponseToJson(this);
}

@JsonSerializable()
class CharityType {
  final int? value;
  final String? name;
  final String? displayName;

  CharityType({
    this.value,
    this.name,
    this.displayName,
  });

  factory CharityType.fromJson(Map<String, dynamic> json) =>
      _$CharityTypeFromJson(json);

  Map<String, dynamic> toJson() => _$CharityTypeToJson(this);
}
