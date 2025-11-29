import 'package:qoot/features/auth/register_account/data/data_source/register_remote_data_source.dart';
import 'package:qoot/features/auth/register_account/data/models/register_request_model.dart';

import '../../domain/entities/register_entity.dart';
import '../../domain/entities/user_entity.dart';
import '../../domain/repositories/register_repository.dart';
import '../data_source/register_local_data_source.dart';

class RegisterRepositoryImpl implements RegisterRepository {
  final RegisterRemoteDataSource remoteDataSource;
  final RegisterLocalDataSource localDataSource;

  RegisterRepositoryImpl(this.remoteDataSource, this.localDataSource);

  @override
  Future<RegisterEntity> register(RegisterRequestModel request) async {
    final res = await remoteDataSource.register(request);

    await localDataSource.saveUserData(
      token: res.data!.token,
      tokenExpiry: res.data!.tokenExpiry,
      user: UserEntity(
        id: res.data!.user.id,
        firstName: res.data!.user.firstName,
        lastName: res.data!.user.lastName,
        email: res.data!.user.email,
        phoneNumber: res.data!.user.phoneNumber,
        profileImage: res.data!.user.profileImage,
        roles: List<String>.from(res.data!.user.roles),
        isVerified: res.data!.user.isVerified,
      ),
    );

    final data = res.data!;
    final userModel = data.user;
    final userEntity = UserEntity(
      id: userModel.id,
      firstName: userModel.firstName,
      lastName: userModel.lastName,
      email: userModel.email,
      phoneNumber: userModel.phoneNumber,
      profileImage: userModel.profileImage,
      roles: List<String>.from(userModel.roles),
      isVerified: userModel.isVerified,
    );

    return RegisterEntity(
      token: data.token,
      tokenExpiry: data.tokenExpiry,
      user: userEntity,
      message: res.message,
      isSuccess: res.isSuccess,
    );
  }
}
