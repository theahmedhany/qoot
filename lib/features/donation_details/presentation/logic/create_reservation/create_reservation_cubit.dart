import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qoot/core/network/api_result.dart';
import 'package:qoot/features/donation_details/data/models/create_reservetion/create_reservation_request.dart';
import 'package:qoot/features/donation_details/data/repos/create_reservation_repo.dart';
import 'create_reservation_state.dart';

class CreateReservationCubit extends Cubit<CreateReservationState> {
  final CreateReservationRepo repo;

  CreateReservationCubit(this.repo)
    : super(const CreateReservationState.initial());

  Future<void> createReservation(CreateReservationRequest request) async {
    emit(const CreateReservationState.loading());

    try {
      final result = await repo.createReservation(request);

      result.when(
        success: (data) {
          emit(CreateReservationState.success(data));
        },
        failure: (error) {
          emit(CreateReservationState.failure(error.toString()));
        },
      );
    } catch (e) {
      emit(CreateReservationState.failure(e.toString()));
    }
  }
}
