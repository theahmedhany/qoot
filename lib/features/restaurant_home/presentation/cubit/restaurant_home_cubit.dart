import 'package:bloc/bloc.dart';
import 'package:qoot/core/di/service_locator.dart';
import 'package:qoot/core/network/api_result.dart';
import 'package:qoot/features/restaurant_home/data/repos/restaurant_home_repo_impl.dart';
import 'package:qoot/features/restaurant_home/presentation/cubit/restaurant_home_state.dart';

class RestaurantHomeCubit extends Cubit<RestaurantHomeState> {
  final _repo = getIt<RestaurantHomeRepoImpl>();

  RestaurantHomeCubit() : super(const RestaurantHomeState.initial());

  Future<void> getUrgentDonations() async {
    emit(const RestaurantHomeState.loading());
    var res = await _repo.getNearbyCharities();
    res.when(
      success: (res) {
        var donations = res.data.items;

        if (isClosed) {
          return;
        }
        emit(RestaurantHomeState.success(donations));
      },
      failure: (error) {
        if (isClosed) {
          return;
        }
        emit(RestaurantHomeState.error(message: error.toString()));
      },
    );
  }
}
