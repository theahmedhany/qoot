import 'package:freezed_annotation/freezed_annotation.dart';
import 'network_failure.dart';

part 'api_result.freezed.dart';

@freezed
abstract class ApiResult<T> with _$ApiResult<T> {
  const factory ApiResult.success(T data) = _Success<T>;
  const factory ApiResult.failure(NetworkFailure failure) = _Failure<T>;
}
