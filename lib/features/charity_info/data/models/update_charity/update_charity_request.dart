import 'package:json_annotation/json_annotation.dart';
part 'update_charity_request.g.dart';

@JsonSerializable()
class UpdateCharityRequest {
  final String address;
  final int capacity;
  final double latitude;
  final double longitude;
  final String name;
  final int type;
  final String description;

  UpdateCharityRequest({
    required this.address,
    required this.capacity,
    required this.latitude,
    required this.longitude,
    required this.name,
    required this.type,
    required this.description,
  });

  factory UpdateCharityRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateCharityRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateCharityRequestToJson(this);
}
