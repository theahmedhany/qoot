import 'package:qoot/core/network/api_client.dart';
import 'package:qoot/core/network/api_handler.dart';
import '../../../../core/network/api_result.dart';
import '../models/donation_images/donation_images_response.dart';

class DonationImagesRepo {
  final ApiClient apiClient;
  final ApiHandler apiHandler;
  DonationImagesRepo(this.apiHandler, this.apiClient);
  Future<ApiResult<DonationImagesResponse>> getDonationImages(
    String donationId,
  ) async {
    return await apiHandler.makeRequest<DonationImagesResponse>(() async {
      return await apiClient.getDonationImages(donationId);
    });
  }
}
