import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qoot/core/network/api_result.dart';
import 'package:qoot/features/charity_reservations/data/repos/charity_reservations_repo.dart';
import 'package:qoot/features/charity_reservations/presentation/logic/charity_reservations/charity_reservations_state.dart';

// ------------------ Cubit ------------------
class CharityReservationsCubit extends Cubit<CharityReservationsState> {
  final CharityReservationsRepo repository;

  CharityReservationsCubit(this.repository)
    : super(const CharityReservationsState.initial());

  Future<void> fetchCharityReservations() async {
    emit(const CharityReservationsState.loading());

    final result = await repository.getCharityReservations();

    result.when(
      success: (response) {
        emit(CharityReservationsState.success(response.data?.items ?? []));
      },
      failure: (error) {
        emit(CharityReservationsState.failure(error.toString()));
      },
    );
  }
}
