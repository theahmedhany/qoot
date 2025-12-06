import 'package:qoot/core/network/api_client.dart';
import 'package:qoot/core/network/api_handler.dart';
import 'package:qoot/core/network/api_result.dart';
import 'package:qoot/features/charity_reservations/data/models/charity_reservation/charity_reservation_response.dart';

class CharityReservationsRepo {
  final ApiClient apiClient;
  final ApiHandler apiHandler;

  CharityReservationsRepo(this.apiHandler, this.apiClient);

  Future<ApiResult<CharityReservationResponse>> getCharityReservations({
    required int pageNumber,
    int pageSize = 10,
  }) async {
    return await apiHandler.makeRequest<CharityReservationResponse>(() async {
      return await apiClient.getCharityReservations(
        pageNumber: pageNumber,
        pageSize: pageSize,
      );
    });
  }
}
