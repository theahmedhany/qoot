import 'package:qoot/core/network/api_client.dart';
import 'package:qoot/core/network/api_handler.dart';
import 'package:qoot/core/network/api_result.dart';
import 'package:qoot/features/donation_details/data/models/create_reservetion/create_reservation_request.dart';
import 'package:qoot/features/donation_details/data/models/create_reservetion/create_reservation_response.dart';

class CreateReservationRepo {
  final ApiClient apiClient;
  final ApiHandler apiHandler;
  CreateReservationRepo(this.apiClient, this.apiHandler);
  Future<ApiResult<CreateReservationResponse>> createReservation(
    CreateReservationRequest request,
  ) async {
    return apiHandler.makeRequest(
      () => apiClient.createReservation(request),
    );
  }
}
