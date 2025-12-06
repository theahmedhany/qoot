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
  int currentPage = 1;
  int totalPages = 1;
  final int pageSize = 10;
  bool isLoadingMore = false;
  bool hasFetched = false;

  GetAvailableDonationsCubit(this.repo)
    : super(const GetAvailableDonationsState.initial()) {
    getAvailableDonations(null);
  }

  /// ******** Get available donations ********
  Future<void> getAvailableDonations(
    BuildContext? context, {
    bool forceRefresh = false,
    int? page,
  }) async {
    final loadPage = page ?? 1;

    if (hasFetched && !forceRefresh && loadPage == 1) {
      final cachedData = state.maybeWhen(
        success: (data) => data,
        orElse: () => null,
      );
      if (cachedData != null) {
        if (!isClosed) {
          emit(GetAvailableDonationsState.success(cachedData));
        }

        return;
      }
    }

    if (loadPage == 1) {
      emit(const GetAvailableDonationsState.loading());
    } else {
      isLoadingMore = true;
    }

    final result = await repo.getAvailableDonations(
      page: loadPage,
      pageSize: pageSize,
    );

    result.when(
      success: (response) {
        hasFetched = true;

        final newItems = response.data?.items ?? [];

        if (loadPage == 1) {
          allItems = newItems;
        } else {
          for (var item in newItems) {
            if (!allItems.any((e) => e.id == item.id)) {
              allItems.add(item);
            }
          }
        }

        totalPages = response.data?.totalPages ?? 1;
        currentPage = loadPage;

        emit(
          GetAvailableDonationsState.success(
            AvailableDonationsResponse(
              isSuccess: response.isSuccess,
              message: response.message,
              data: DonationsData(
                items: allItems,
                totalCount: allItems.length,
                pageNumber: currentPage,
                pageSize: pageSize,
                totalPages: totalPages,
                hasPreviousPage: currentPage > 1,
                hasNextPage: currentPage < totalPages,
              ),
              errors: response.errors,
            ),
          ),
        );

        isLoadingMore = false;
      },
      failure: (error) {
        final message = NetworkErrorMapper.toUserMessage(error, context);
        emit(GetAvailableDonationsState.failure(message));
        isLoadingMore = false;
      },
    );
  }

  /// ******** Load next page ********
  Future<void> loadNextPage(BuildContext context) async {
    if (isLoadingMore || currentPage >= totalPages) return;
    await getAvailableDonations(context, page: currentPage + 1);
  }

  /// ******** Refresh list ********
  Future<void> refreshList(BuildContext context) async {
    allItems.clear();
    currentPage = 1;
    hasFetched = false;
    await getAvailableDonations(context, forceRefresh: true);
  }

  /// ******** Search donations ********
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

  /// ******** Clear search and reload ********
  void clearSearchAndReload(
    BuildContext context,
    TextEditingController controller,
  ) {
    controller.clear();
    getAvailableDonations(context, forceRefresh: true);
  }

  /// ******** Get urgent donations ********
  List<DonationItem> getUrgentDonations() {
    final itemsWithExpiry = List<DonationItem>.from(allItems);
    itemsWithExpiry.sort(
      (a, b) => DateTime.parse(
        a.expiryDateTime,
      ).compareTo(DateTime.parse(b.expiryDateTime)),
    );
    return itemsWithExpiry;
  }

  /// ******** Remove donation after reservation ********
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
