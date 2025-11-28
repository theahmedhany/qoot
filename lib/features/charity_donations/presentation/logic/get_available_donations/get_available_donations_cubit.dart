import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qoot/core/network/api_result.dart';
import 'package:qoot/core/network/network_error_mapper.dart';
import 'package:qoot/features/charity_donations/data/models/available_donation/donation_item.dart';
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
        hasFetched = true;
        allItems = data.data?.items ?? [];

        emit(GetAvailableDonationsState.success(data));
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
      return (donation.foodType?.toLowerCase().startsWith(q) ?? false) ||
          (donation.restaurantName?.toLowerCase().startsWith(q) ?? false);
    }).toList();

    final newState = state.maybeWhen(
      success: (data) => data.copyWith(
        data: data.data?.copyWith(items: filtered),
      ),
      orElse: () => null,
    );

    if (newState != null) {
      emit(GetAvailableDonationsState.success(newState));
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
    final itemsWithExpiry = allItems
        .where(
          (item) => item.expiryDateTime != null,
        )
        .toList();

    itemsWithExpiry.sort(
      (a, b) => DateTime.parse(
        a.expiryDateTime!,
      ).compareTo(DateTime.parse(b.expiryDateTime!)),
    );

    return itemsWithExpiry;
  }

  void removeDonationAfterReservation(DonationItem item) {
    allItems.removeWhere((e) => e.id == item.id);

    final newState = state.maybeWhen(
      success: (data) {
        final updatedResponse = data.copyWith(
          data: data.data?.copyWith(items: allItems),
        );
        return updatedResponse;
      },
      orElse: () => null,
    );

    if (newState != null) {
      emit(GetAvailableDonationsState.success(newState));
    }
  }
}
