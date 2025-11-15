import 'package:dio/dio.dart';
import 'package:qoot/core/di/service_locator.dart';
import 'package:qoot/core/network/api_result.dart';
import 'package:qoot/core/network/network_failure.dart';
import 'package:qoot/core/network/network_manager.dart';

class ApiHandler {
  ApiHandler();

  Future<ApiResult<T>> makeRequest<T>(
    Future<T> Function() request,
  ) async {
    final connected = await getIt<NetworkManager>().isNetworkConnected();
    if (!connected) {
      return const ApiResult.failure(NetworkFailure.noInternet());
    }

    try {
      final result = await request();
      return ApiResult.success(result);
    } on DioException catch (e) {
      return ApiResult.failure(_mapError(e));
    } catch (e) {
      return ApiResult.failure(NetworkFailure.unknown(e.toString()));
    }
  }

  NetworkFailure _mapError(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.receiveTimeout:
        return const NetworkFailure.timeout();
      case DioExceptionType.badResponse:
        final code = e.response?.statusCode;
        if (code == 401) return const NetworkFailure.unauthorized();
        if (code == 404) return const NetworkFailure.notFound();
        return NetworkFailure.serverError(e.response?.statusMessage);
      default:
        return NetworkFailure.unknown(e.message);
    }
  }
}
