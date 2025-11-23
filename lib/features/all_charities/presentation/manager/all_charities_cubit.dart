import 'package:bloc/bloc.dart';
import 'package:qoot/core/di/service_locator.dart';
import 'package:qoot/core/network/api_result.dart';
import 'package:qoot/features/all_charities/data/models/all_charities_model.dart';
import 'package:qoot/features/all_charities/data/repos/all_charities_repo.dart';
import 'package:qoot/features/all_charities/presentation/manager/all_charities_state.dart';

class AllCharitiesCubit extends Cubit<AllCharitiesState> {
  final _repo = getIt<AllCharitiesRepo>();

  AllCharitiesCubit() : super(const AllCharitiesState.initial());

  List<CharityItem> _allCharities = [];
  int _currentPage = 1;
  bool _hasMore = true;
  bool _isLoadingMore = false;

  Future<void> getAllCharities({bool isRefresh = false}) async {
    if (isRefresh) {
      _currentPage = 1;
      _allCharities = [];
      _hasMore = true;
    }

    emit(const AllCharitiesState.loading());

    final res = await _repo.getAllCharities(pageNumber: _currentPage);

    res.map(
      success: (data) {
        _allCharities = data.data.data.items;
        _hasMore = data.data.data.hasNextPage;
        _currentPage = data.data.data.pageNumber;

        emit(
          AllCharitiesState.success(
            charities: _allCharities,
            hasMore: _hasMore,
            currentPage: _currentPage,
          ),
        );
      },
      failure: (error) {
        emit(AllCharitiesState.error(message: error.failure.toString()));
      },
    );
  }

  Future<void> loadMoreCharities() async {
    if (_isLoadingMore || !_hasMore) return;

    _isLoadingMore = true;
    emit(AllCharitiesState.loadingMore(charities: _allCharities));

    final nextPage = _currentPage + 1;
    final res = await _repo.getAllCharities(pageNumber: nextPage);

    res.map(
      success: (data) {
        _allCharities.addAll(data.data.data.items);
        _hasMore = data.data.data.hasNextPage;
        _currentPage = data.data.data.pageNumber;
        _isLoadingMore = false;

        emit(
          AllCharitiesState.success(
            charities: _allCharities,
            hasMore: _hasMore,
            currentPage: _currentPage,
          ),
        );
      },
      failure: (error) {
        _isLoadingMore = false;
        // Keep the current state with existing charities
        emit(
          AllCharitiesState.success(
            charities: _allCharities,
            hasMore: _hasMore,
            currentPage: _currentPage,
          ),
        );
      },
    );
  }
}
