import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qoot/features/donation_details/data/models/create_reservetion/create_reservation_response.dart';
part 'create_reservation_state.freezed.dart';

@freezed
class CreateReservationState with _$CreateReservationState {
  const factory CreateReservationState.initial() = _Initial;
  const factory CreateReservationState.loading() = Loading;
  const factory CreateReservationState.success(CreateReservationResponse data) =
      Success;
  const factory CreateReservationState.failure(String message) = Failure;
}
