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
  final TextEditingController searchController = TextEditingController();

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

  void clearSearchAndReload(BuildContext context) {
    searchController.clear();
    getAvailableDonations(context, forceRefresh: true);
  }

  @override
  Future<void> close() {
    searchController.dispose();
    return super.close();
  }
}
