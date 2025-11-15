import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_failure.freezed.dart';

@freezed
class NetworkFailure with _$NetworkFailure {
  const factory NetworkFailure.noInternet() = _NoInternet;
  const factory NetworkFailure.unauthorized() = _Unauthorized;
  const factory NetworkFailure.notFound() = _NotFound;
  const factory NetworkFailure.serverError([String? message]) = _ServerError;
  const factory NetworkFailure.timeout() = _Timeout;
  const factory NetworkFailure.unknown([String? message]) = _Unknown;
}
