import 'package:dio/dio.dart';
import 'package:qoot/core/network/api_handler.dart';
import 'package:qoot/core/network/api_result.dart';
import 'package:qoot/core/network/api_client.dart';
import '../../../../../core/services/storage/restaurant_local_storage.dart';
import '../../domain/repository/register_restaurant_repository.dart';
import '../models/register_restaurant_response.dart';

class RegisterRestaurantRepositoryImpl implements RegisterRestaurantRepository {
  final ApiClient _apiClient;
  final ApiHandler _apiHandler;

  RegisterRestaurantRepositoryImpl(this._apiClient, this._apiHandler);

  @override
  Future<ApiResult<RegisterRestaurantResponse>> registerRestaurant({
    required String name,
    required String description,
    required String address,
    required double latitude,
    required double longitude,
    required MultipartFile licenseDocument,
    required MultipartFile commercialRegister,
  }) async {
    return _apiHandler.makeRequest(() async {
      final result = await _apiClient.registerRestaurant(
        name: name,
        description: description,
        address: address,
        latitude: latitude,
        longitude: longitude,
        licenseDocument: licenseDocument,
        commercialRegister: commercialRegister,
      );

      //handle restaurant local data storage
      await RestaurantLocalStorage().saveRestaurantLocalData(
        id: result.resultData['id'] ?? 0,
        name: result.resultData['name'] ?? "",
        description: result.resultData['description'] ?? "",
        address: result.resultData['address'] ?? "",
        latitude: result.resultData['latitude'] ?? 0.0,
        longitude: result.resultData['longitude'] ?? 0.0,
        isRegisterCompleted: true,
        isActive: result.resultData['isActive'] ?? false,
        createdAt: DateTime.tryParse(result.resultData['createdAt'] ?? "") ?? DateTime.now(),
        ownerName: result.resultData['ownerName'] ?? "",
        email: result.resultData['email'] ?? "",
        status: result.resultData['status'] ?? 0,
        statusDisplayName: result.resultData['statusDisplayName'] ?? "",
        phoneNumber: result.resultData['phoneNumber'] ?? "",
      );

      return result;
    });
  }
}
