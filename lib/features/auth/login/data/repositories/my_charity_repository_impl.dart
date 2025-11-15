import 'package:qoot/core/network/api_result.dart';

import '../../domain/repositories/my_charity_repository.dart';
import '../model/my_charity_response.dart';
import '../sources/my_charity_remote_data_source.dart';

class MyCharityRepositoryImpl implements MyCharityRepository {
  final MyCharityRemoteDataSource _remoteDataSource;

  MyCharityRepositoryImpl(this._remoteDataSource);

  @override
  Future<ApiResult<MyCharityResponse>> getMyCharity() {
    return _remoteDataSource.getMyCharity();
  }
}
