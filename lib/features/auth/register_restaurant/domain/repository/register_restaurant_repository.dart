import 'package:dio/dio.dart';
import 'package:qoot/core/network/api_result.dart';
import '../../data/models/register_restaurant_response.dart';

abstract class RegisterRestaurantRepository {
  Future<ApiResult<RegisterRestaurantResponse>> registerRestaurant({
    required String name,
    required String description,
    required String address,
    required double latitude,
    required double longitude,
    required MultipartFile licenseDocument,
    required MultipartFile commercialRegister,
  });
}
