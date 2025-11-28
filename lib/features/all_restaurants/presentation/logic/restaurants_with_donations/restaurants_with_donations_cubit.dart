import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qoot/core/network/api_result.dart';
import 'package:qoot/core/network/network_error_mapper.dart';
import 'package:qoot/features/all_restaurants/data/repos/restaurants_with_donations_repo.dart';
import 'package:qoot/features/all_restaurants/presentation/logic/restaurants_with_donations/restaurants_with_donations_state.dart';

class RestaurantsWithDonationsCubit
    extends Cubit<RestaurantsWithDonationsState> {
  RestaurantsWithDonationsCubit(this.repo)
    : super(const RestaurantsWithDonationsState.initial());

  final RestaurantsWithDonationsRepo repo;

  Future<void> getRestaurantsWithDonations(BuildContext context) async {
    emit(const RestaurantsWithDonationsState.loading());

    final result = await repo.fetchRestaurantsWithDonations();

    result.when(
      success: (data) {
        emit(RestaurantsWithDonationsState.success(data));
      },
      failure: (failure) {
        final message = NetworkErrorMapper.toUserMessage(failure, context);
        emit(RestaurantsWithDonationsState.error(message));
      },
    );
  }
}
