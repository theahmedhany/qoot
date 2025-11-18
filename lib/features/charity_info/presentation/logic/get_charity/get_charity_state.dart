import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qoot/core/network/network_failure.dart';
import 'package:qoot/features/charity_info/data/models/my_charity/charity_response.dart';
part 'get_charity_state.freezed.dart';

@freezed
class GetCharityState with _$GetCharityState {
  const factory GetCharityState.initial() = _Initial;
  const factory GetCharityState.loading() = Loading;
  const factory GetCharityState.success(CharityResponse data) = Success;
  const factory GetCharityState.failure(NetworkFailure message) = Failure;
}
