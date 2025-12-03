import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qoot/core/network/api_result.dart';
import 'package:qoot/core/network/network_error_mapper.dart';
import 'package:qoot/features/charity_donations/data/models/available_donation/available_donations_response.dart';
import 'package:qoot/features/charity_donations/data/repos/get_available_donation_repo.dart';
import 'package:qoot/features/charity_donations/presentation/logic/get_available_donations/get_available_donations_state.dart';

class GetAvailableDonationsCubit extends Cubit<GetAvailableDonationsState> {
  final GetAvailableDonationRepo repo;

  List<DonationItem> allItems = [];

  bool hasFetched = false;

  GetAvailableDonationsCubit(this.repo)
    : super(const GetAvailableDonationsState.initial());

  Future<void> getAvailableDonations(
    BuildContext context, {
    bool forceRefresh = false,
  }) async {
    if (hasFetched && !forceRefresh) {
      final cachedData = state.maybeWhen(
        success: (data) => data,
        orElse: () => null,
      );

      if (cachedData != null) {
        emit(GetAvailableDonationsState.success(cachedData));
        return;
      }
    }
    emit(const GetAvailableDonationsState.loading());

    final result = await repo.getAvailableDonations();

    result.when(
      success: (data) {
        final response = data;
        hasFetched = true;
        allItems = response.data?.items ?? [];

        emit(GetAvailableDonationsState.success(response));
      },
      failure: (error) {
        final message = NetworkErrorMapper.toUserMessage(error, context);
        emit(GetAvailableDonationsState.failure(message));
      },
    );
  }

  void searchDonations(String query) {
    final filtered = allItems.where((donation) {
      final q = query.toLowerCase();
      return donation.foodType.toLowerCase().startsWith(q) ||
          donation.restaurantName.toLowerCase().startsWith(q);
    }).toList();

    final currentState = state.maybeWhen(
      success: (data) => data,
      orElse: () => null,
    );

    if (currentState != null) {
      final newData = AvailableDonationsResponse(
        isSuccess: currentState.isSuccess,
        message: currentState.message,
        data: currentState.data != null
            ? DonationsData(
                items: filtered,
                totalCount: filtered.length,
                pageNumber: currentState.data!.pageNumber,
                pageSize: currentState.data!.pageSize,
                totalPages: (filtered.length / currentState.data!.pageSize)
                    .ceil(),
                hasPreviousPage: currentState.data!.hasPreviousPage,
                hasNextPage: currentState.data!.hasNextPage,
              )
            : null,
        errors: currentState.errors,
      );
      emit(GetAvailableDonationsState.success(newData));
    }
  }

  void clearSearchAndReload(
    BuildContext context,
    TextEditingController searchController,
  ) {
    searchController.clear();
    getAvailableDonations(context, forceRefresh: true);
  }

  List<DonationItem> getUrgentDonations() {
    final itemsWithExpiry = allItems;

    itemsWithExpiry.sort(
      (a, b) => DateTime.parse(
        a.expiryDateTime,
      ).compareTo(DateTime.parse(b.expiryDateTime)),
    );

    return itemsWithExpiry;
  }

  void removeDonationAfterReservation(DonationItem item) {
    allItems.removeWhere((e) => e.id == item.id);

    final currentState = state.maybeWhen(
      success: (data) => data,
      orElse: () => null,
    );

    if (currentState != null) {
      final newData = AvailableDonationsResponse(
        isSuccess: currentState.isSuccess,
        message: currentState.message,
        data: currentState.data != null
            ? DonationsData(
                items: allItems,
                totalCount: allItems.length,
                pageNumber: currentState.data!.pageNumber,
                pageSize: currentState.data!.pageSize,
                totalPages: (allItems.length / currentState.data!.pageSize)
                    .ceil(),
                hasPreviousPage: currentState.data!.hasPreviousPage,
                hasNextPage: currentState.data!.hasNextPage,
              )
            : null,
        errors: currentState.errors,
      );
      emit(GetAvailableDonationsState.success(newData));
    }
  }
}
