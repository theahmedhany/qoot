import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qoot/core/network/network_failure.dart';
import 'package:qoot/features/charity_info/data/models/my_charity/charity_response.dart';
part 'delete_charity_state.freezed.dart';

@freezed
class DeleteCharityState with _$DeleteCharityState {
  const factory DeleteCharityState.initial() = _Initial;
  const factory DeleteCharityState.loading() = Loading;
  const factory DeleteCharityState.success(CharityResponse data) = Success;
  const factory DeleteCharityState.failure(NetworkFailure message) = Failure;
}
