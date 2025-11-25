import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qoot/core/di/service_locator.dart';
import 'package:qoot/core/network/api_result.dart';
import 'package:qoot/core/services/storage/restaurant_local_storage.dart';
import 'package:qoot/features/auth/login/domain/repositories/my_restaurant_repository.dart';
import 'package:qoot/features/restaurant_profile_info/data/model/update_restaurant_request_body.dart';

part 'restaurant_profile_state.dart';
part 'restaurant_profile_cubit.freezed.dart';

class RestaurantProfileCubit extends Cubit<RestaurantProfileState> {
  final repo = getIt.get<MyRestaurantRepository>();
  RestaurantProfileCubit() : super(const RestaurantProfileState.initial());

  Future<void> updateRestaurant(UpdateRestaurantRequestBody body) async {
    emit(const RestaurantProfileState.loading());
    var res = await repo.updateMyRestaurant(body);
    res.map(
      success: (res) async {
        await RestaurantLocalStorage().updateRestaurantData(
          name: body.name,
          description: body.description,
          address: body.address,
          latitude: body.latitude,
          longitude: body.longitude,
        );
        emit(const RestaurantProfileState.success());
      },
      failure: (error) {
        emit(RestaurantProfileState.failure(error.failure.toString()));
      },
    );
  }

  Future<void> deleteRestaurant() async {
    emit(const RestaurantProfileState.loading());
    var res = await repo.deleteMyRestaurant();
    res.map(
      success: (data) {
        emit(const RestaurantProfileState.deleted());
      },
      failure: (error) {
        emit(RestaurantProfileState.failure(error.failure.toString()));
      },
    );
  }
}
