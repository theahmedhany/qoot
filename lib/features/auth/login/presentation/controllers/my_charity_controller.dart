import 'package:qoot/core/network/api_result.dart';
import '../../data/model/my_charity_response.dart';
import '../../domain/repositories/my_charity_repository.dart';

class MyCharityController {
  final MyCharityRepository _repository;

  MyCharityController(this._repository);

  Future<MyCharityResponse?> fetchMyCharity() async {
    final result = await _repository.getMyCharity();

    return result.when(
      success: (data) => data,
      failure: (error) {
        return null;
      },
    );
  }
}
