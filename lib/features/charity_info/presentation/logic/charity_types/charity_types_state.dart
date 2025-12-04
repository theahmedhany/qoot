import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qoot/features/charity_info/data/models/charity_types/charity_types_model.dart';

part 'charity_types_state.freezed.dart';

@freezed
class CharityTypesState with _$CharityTypesState {
  const factory CharityTypesState.initial() = _Initial;
  const factory CharityTypesState.loading() = Loading;
  const factory CharityTypesState.success(CharityTypesResponse data) = Success;
  const factory CharityTypesState.failure(String message) = Failure;
}
