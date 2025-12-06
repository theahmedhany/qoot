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

  CharityReservationsCubit(this.repository)
    : super(const CharityReservationsState.initial());

  // ===========================
  // Pagination State
  // ===========================
  int pageNumber = 1;
  int totalPages = 1;
  bool isLoadingMore = false;

  // All fetched items (from all pages)
  List<CharityReservationItem> allReservations = [];

  // Current filtered list for tab
  List<CharityReservationItem> filteredReservations = [];

  // Current tab
  ReservationTab currentTab = ReservationTab.all;

  // ===========================
  // Initial fetch (Page 1)
  // ===========================
  Future<void> fetchReservationsInitial(BuildContext context) async {
    pageNumber = 1;
    allReservations.clear();
    filteredReservations.clear();

    emit(const CharityReservationsState.loading());

    final result = await repository.getCharityReservations(
      pageNumber: pageNumber,
      pageSize: 10,
    );

    result.when(
      success: (response) {
        totalPages = response.data?.totalPages ?? 1;

        allReservations = response.data?.items ?? [];
        _applyFilter();

        emit(CharityReservationsState.success(filteredReservations));
      },
      failure: (error) {
        final message = NetworkErrorMapper.toUserMessage(error, context);
        emit(CharityReservationsState.failure(message));
      },
    );
  }

  // ===========================
  // Fetch next page
  // ===========================
  Future<List<CharityReservationItem>> fetchMorePaginated(
    BuildContext context,
  ) async {
    if (isLoadingMore) return [];
    if (pageNumber >= totalPages) return [];

    isLoadingMore = true;
    pageNumber++;

    List<CharityReservationItem> newItems = [];

    final result = await repository.getCharityReservations(
      pageNumber: pageNumber,
      pageSize: 10,
    );

    result.when(
      success: (response) {
        newItems = response.data?.items ?? [];
        allReservations.addAll(newItems);
        _applyFilter();
      },
      failure: (error) {
        final message = NetworkErrorMapper.toUserMessage(error, context);
        emit(CharityReservationsState.failure(message));
      },
    );

    isLoadingMore = false;
    return newItems;
  }

  // ===========================
  // Apply filter when tabs change
  // ===========================
  void changeTab(ReservationTab tab) {
    currentTab = tab;
    _applyFilter();
    emit(CharityReservationsState.success(filteredReservations));
  }

  // ===========================
  // Filter logic
  // ===========================
  void _applyFilter() {
    List<int> statuses = currentTab.statusValues;

    if (currentTab == ReservationTab.all) {
      filteredReservations = List.from(allReservations);
    } else {
      filteredReservations = allReservations
          .where((item) => statuses.contains(item.status))
          .toList();
    }
  }
}
