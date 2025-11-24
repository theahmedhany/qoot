import 'package:bloc/bloc.dart';
import 'package:qoot/core/di/service_locator.dart';
import 'package:qoot/core/network/api_result.dart';
import 'package:qoot/features/restaurant_donation/data/repos/restaurant_donation_repo_impl.dart';
import 'package:qoot/features/restaurant_donation/presentation/cubit/restaurant_donation_state.dart';

class RestaurantDonationCubit extends Cubit<RestaurantDonationState> {
  final _repo = getIt<RestaurantDonationRepoImpl>();

  int _page = 1;
  bool _isLoadingMore = false;
  bool _hasMore = true;

  final List<dynamic> _donations = [];

  RestaurantDonationCubit() : super(const RestaurantDonationState.initial());

  Future<void> getDonationHistory({bool loadMore = false}) async {
    if (loadMore) {
      if (_isLoadingMore || !_hasMore) return;
      _isLoadingMore = true;
    } else {
      emit(const RestaurantDonationState.loading());
      _page = 1;
      _donations.clear();
      _hasMore = true;
    }

    final res = await _repo.getDonationHistory(pageNumber: _page);

    res.when(
      success: (res) {
        final newItems = res.data.items;
        if (newItems.isEmpty) {
          _hasMore = false;
        } else {
          _page++;
          _donations.addAll(newItems);
        }
        _isLoadingMore = false;
        emit(RestaurantDonationState.success(List.from(_donations)));
      },
      failure: (error) {
        _isLoadingMore = false;
        _hasMore = false;
        emit(RestaurantDonationState.error(message: error.toString()));
      },
    );
  }
}
