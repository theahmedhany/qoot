import 'package:bloc/bloc.dart';
import 'package:qoot/core/di/service_locator.dart';
import 'package:qoot/core/network/api_result.dart';
import 'package:qoot/features/restaurant_donation/data/repos/restaurant_donation_repo_impl.dart';
import 'package:qoot/features/restaurant_donation/presentation/cubit/restaurant_donation_state.dart';

class RestaurantDonationCubit extends Cubit<RestaurantDonationState> {
  final _repo = getIt<RestaurantDonationRepoImpl>();

  RestaurantDonationCubit() : super(const RestaurantDonationState.initial());

  Future<void> getDonationHistory() async {
    emit(const RestaurantDonationState.loading());
    var res = await _repo.getDonationHistory();
    res.when(
      success: (res) {
        var donations = res.data.items;
        emit(RestaurantDonationState.success(donations));
      },
      failure: (error) {
        emit(RestaurantDonationState.error(message: error.toString()));
      },
    );
  }
}
