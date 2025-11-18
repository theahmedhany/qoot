import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qoot/core/network/network_failure.dart';
import 'package:qoot/features/charity_info/data/models/my_charity/charity_response.dart';
part 'update_charity_state.freezed.dart';

@freezed
class UpdateCharityState with _$UpdateCharityState {
  const factory UpdateCharityState.initial() = _Initial;
  const factory UpdateCharityState.loading() = Loading;
  const factory UpdateCharityState.success(CharityResponse data) = Success;
  const factory UpdateCharityState.failure(NetworkFailure message) = Failure;
}
