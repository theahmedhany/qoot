import 'package:json_annotation/json_annotation.dart';

part 'create_reservation_request.g.dart';

@JsonSerializable()
class CreateReservationRequest {
  final int donationId;
  final String notes;
  final DateTime pickupTime;
  final String pickupPersonName;
  final String pickupPersonPhone;

  CreateReservationRequest({
    required this.donationId,
    required this.notes,
    required this.pickupTime,
    required this.pickupPersonName,
    required this.pickupPersonPhone,
  });

  factory CreateReservationRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateReservationRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateReservationRequestToJson(this);
}
