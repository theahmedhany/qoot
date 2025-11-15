import 'package:qoot/core/services/storage/auth_local_storage.dart';
import 'package:qoot/features/auth/register_account/domain/entities/user_entity.dart';

import '../../../../../core/data/local_data/current_user.dart';

abstract class RegisterLocalDataSource {
  Future<void> saveUserData({
    required String token,
    required String tokenExpiry,
    required UserEntity user,
  });

  Future<void> clearUserData();
}

class RegisterLocalDataSourceImpl implements RegisterLocalDataSource {
  final AuthLocalStorage _authLocalStorage;

  RegisterLocalDataSourceImpl(this._authLocalStorage);

  @override
  Future<void> saveUserData({
    required String token,
    required String tokenExpiry,
    required UserEntity user,
  }) async {
    await _authLocalStorage.saveCurrentUserData(
      token: token,
      // tokenExpiry , convirted to DateTime string
      tokenExpiry: DateTime.parse(tokenExpiry),
      email: user.email,
      firstName: user.firstName,
      lastName: user.lastName,
      phoneNumber: user.phoneNumber,
      profileImage: user.profileImage,
      role: user.roles.isNotEmpty ? user.roles[0] : '',
      isVerified: user.isVerified,
      userId: user.id,
      isLoggedIn: true,
    );

    await CurrentUser.init();
  }

  @override
  Future<void> clearUserData() async {
    await _authLocalStorage.clearCurrentUserData();
  }
}
