import 'dart:io';

import 'package:dio/dio.dart';
import 'package:qoot/core/network/api_result.dart';
import '../../data/models/register_restaurant_response.dart';
import '../repository/register_restaurant_repository.dart';

class RegisterRestaurantUseCase {
  final RegisterRestaurantRepository repository;

  RegisterRestaurantUseCase(this.repository);

  Future<ApiResult<RegisterRestaurantResponse>> call({
    required String name,
    required String description,
    required String address,
    required double latitude,
    required double longitude,
    required File licenseDocument,
    required File commercialRegister,
  }) async {
    final license = await MultipartFile.fromFile(licenseDocument.path);
    final commercial = await MultipartFile.fromFile(commercialRegister.path);
    return repository.registerRestaurant(
      name: name,
      description: description,
      address: address,
      latitude: latitude,
      longitude: longitude,
      licenseDocument: license,
      commercialRegister: commercial,
    );
  }
}
