import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qoot/core/network/api_result.dart';
import 'package:qoot/core/network/network_error_mapper.dart';
import '../../../data/repos/restaurnt_donations_by_id_repo.dart';
import 'restaurant_donations_state.dart';

class RestaurantDonationsCubit extends Cubit<RestaurantDonationsState> {
  final RestaurntDonationsByIdRepo repo;

  RestaurantDonationsCubit(this.repo)
    : super(const RestaurantDonationsState.initial());

  Future<void> getRestaurantDonations(String id, BuildContext context) async {
    emit(const RestaurantDonationsState.loading());

    final result = await repo.fetchRestaurantsDonationsById(id);

    result.when(
      success: (data) {
        emit(RestaurantDonationsState.success(data));
      },
      failure: (error) {
        emit(
          RestaurantDonationsState.error(
            NetworkErrorMapper.toUserMessage(error, context),
          ),
        );
      },
    );
  }
}
