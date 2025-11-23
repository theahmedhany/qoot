import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qoot/features/all_charities/data/models/all_charities_model.dart';

part 'all_charities_state.freezed.dart';

@freezed
class AllCharitiesState with _$AllCharitiesState {
  const factory AllCharitiesState.initial() = _Initial;
  const factory AllCharitiesState.loading() = Loading;
  const factory AllCharitiesState.success({
    required List<CharityItem> charities,
    required bool hasMore,
    required int currentPage,
  }) = Success;
  const factory AllCharitiesState.loadingMore({
    required List<CharityItem> charities,
  }) = LoadingMore;
  const factory AllCharitiesState.error({required String message}) = Error;
}
