import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qoot/core/helpers/extensions.dart';
import 'package:qoot/core/network/api_result.dart';
import 'package:qoot/core/network/network_error_mapper.dart';
import 'package:qoot/features/charity_reservations/data/models/charity_reservation/charity_reservation_response.dart';
import 'package:qoot/features/charity_reservations/data/repos/charity_reservations_repo.dart';
import 'package:qoot/features/charity_reservations/presentation/logic/charity_reservations/charity_reservations_state.dart';

import '../../widgets/custom_reservations_tap_bar.dart';

class CharityReservationsCubit extends Cubit<CharityReservationsState> {
  final CharityReservationsRepo repository;

  List<CharityReservationItem> allReservations = [];

  CharityReservationsCubit(this.repository)
    : super(const CharityReservationsState.initial());

  Future<void> fetchCharityReservations(BuildContext context) async {
    emit(const CharityReservationsState.loading());

    final result = await repository.getCharityReservations();

    result.when(
      success: (response) {
        allReservations = response.data?.items ?? [];
        emit(CharityReservationsState.success(allReservations));
      },
      failure: (error) {
        final message = NetworkErrorMapper.toUserMessage(error, context);
        emit(CharityReservationsState.failure(message));
      },
    );
  }

  void filterByTab(ReservationTab tab) {
    final allowedStatuses = tab.statusValues;

    final filtered = allReservations
        .where(
          (item) => allowedStatuses.contains(item.status),
        )
        .toList();

    emit(CharityReservationsState.success(filtered));
  }
}
