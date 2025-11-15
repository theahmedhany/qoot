import 'dart:io';
import 'package:dio/dio.dart';
import 'package:qoot/core/network/api_handler.dart';
import 'package:qoot/core/network/api_result.dart';
import 'package:qoot/core/network/api_client.dart';

import '../../../../../core/services/storage/charity_local_storage.dart';
import '../../data/model/register_charity_response.dart';

class RegisterCharityRepository {
  final ApiClient apiClient;
  final ApiHandler apiHandler;

  RegisterCharityRepository(this.apiClient, this.apiHandler);

  Future<ApiResult<RegisterCharityResponse>> registerCharity({
    required String name,
    required String description,
    required String address,
    required double latitude,
    required double longitude,
    required int capacity,
    required int type,
    required File licenseDocument,
    required File proofDocument,
  }) async {
    final license = await MultipartFile.fromFile(licenseDocument.path);
    final proof = await MultipartFile.fromFile(proofDocument.path);

    return apiHandler.makeRequest(() async {
      final result = await apiClient.registerCharity(
        name: name,
        description: description,
        address: address,
        latitude: latitude,
        longitude: longitude,
        capacity: capacity,
        type: type,
        licenseDocument: license,
        proofDocument: proof,
      );

      //handle charity local data storage
      await CharityLocalStorage().saveCharityLocalData(
        id: result.resultData['id'] ?? 0,
        name: result.resultData['name'] ?? "",
        description: result.resultData['description'] ?? "",
        address: result.resultData['address'] ?? "",
        latitude: result.resultData['latitude'] ?? 0.0,
        longitude: result.resultData['longitude'] ?? 0.0,
        capacity: result.resultData['capacity'] ?? 0,
        type: result.resultData['type'] ?? 0,
        status: result.resultData['status'] ?? 0,
        statusDisplayName: result.resultData['statusDisplayName'] ?? "",
        isActive: result.resultData['isActive'] ?? false,
        createdAt: DateTime.tryParse(result.resultData['createdAt']) ?? DateTime.now(),
        contactName: result.resultData['contactName'] ?? "",
        email: result.resultData['email'] ?? "",
        phoneNumber: result.resultData['phoneNumber'] ?? "",
        isRegisterCompleted: true,
      );

      return result;
    });
  }
}
