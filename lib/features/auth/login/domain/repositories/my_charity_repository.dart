import 'package:qoot/core/network/api_result.dart';

import '../../data/model/my_charity_response.dart';

abstract class MyCharityRepository {
  Future<ApiResult<MyCharityResponse>> getMyCharity();
}
