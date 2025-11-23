import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qoot/core/network/api_result.dart';
import 'package:qoot/core/network/network_error_mapper.dart';
import 'package:qoot/features/all_restaurants/data/repos/near_by_restaurants_repo.dart';
import 'package:qoot/features/all_restaurants/presentation/logic/near_by_restaurants/near_by_restaurants_state.dart';

class NearByRestaurantsCubit extends Cubit<NearByRestaurantsState> {
  NearByRestaurantsCubit(this.nearByRestaurantsRepo)
    : super(const NearByRestaurantsState.initial());
  final NearByRestaurantsRepo nearByRestaurantsRepo;

  Future<void> getNearByRestaurants(
    double latitude,
    double longitude,
    BuildContext context,
  ) async {
    emit(const NearByRestaurantsState.loading());

    final result = await nearByRestaurantsRepo.fetchNearByRestaurants(
      longitude: longitude,
      latitude: latitude,
    );

    result.when(
      success: (data) {
        emit(NearByRestaurantsState.success(data));
      },
      failure: (failure) {
        final message = NetworkErrorMapper.toUserMessage(failure, context);
        emit(NearByRestaurantsState.error(message));
      },
    );
  }
}
