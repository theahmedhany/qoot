import 'package:json_annotation/json_annotation.dart';

part 'update_restaurant_request_body.g.dart';

@JsonSerializable()
class UpdateRestaurantRequestBody {
  String name;
  String description;
  String address;
  double latitude;
  double longitude;

  UpdateRestaurantRequestBody({
    required this.name,
    required this.description,
    required this.address,
    required this.latitude,
    required this.longitude,
  });

  factory UpdateRestaurantRequestBody.fromJson(Map<String, dynamic> json) =>
      _$UpdateRestaurantRequestBodyFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateRestaurantRequestBodyToJson(this);
}
