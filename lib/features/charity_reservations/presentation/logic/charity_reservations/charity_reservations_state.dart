import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qoot/features/charity_reservations/data/models/charity_reservation/charity_reservation_response.dart';
part 'charity_reservations_state.freezed.dart';

@freezed
class CharityReservationsState with _$CharityReservationsState {
  const factory CharityReservationsState.initial() = _Initial;
  const factory CharityReservationsState.loading() = Loading;
  const factory CharityReservationsState.success(
    List<CharityReservationItem> reservations,
  ) = Success;
  const factory CharityReservationsState.failure(String message) = Failure;
}
