import 'package:qoot/core/di/service_locator.dart';
import 'package:qoot/core/helpers/secure_storage_helper.dart';
import 'package:qoot/core/utils/shared_pref_keys.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../data/local_data/current_user.dart';
import '../../utils/secure_storage_keys.dart';

class AuthLocalStorage {
  final SecureStorageHelper _secureStorage = getIt<SecureStorageHelper>();

  final SharedPreferences _sharedPreferences = getIt<SharedPreferences>();

  final String _tokenKey = SecureStorageKeys.token;

  final String _tokenExpiryKey = SharedPrefKeys.tokenExpiry;
  final String _userIdKey = SharedPrefKeys.userId;
  final String _firstNameKey = SharedPrefKeys.firstName;
  final String _lastNameKey = SharedPrefKeys.lastName;
  final String _emailKey = SharedPrefKeys.email;
  final String _roleKey = SharedPrefKeys.role;
  final String _isLoggedInKey = SharedPrefKeys.isLoggedIn;
  final String _phoneNumberKey = SharedPrefKeys.phoneNumber;
  final String _profileImageKey = SharedPrefKeys.profileImage;
  final String _isVerifiedKey = SharedPrefKeys.isVerified;

  Future<void> saveCurrentUserData({
    required String token,
    required String userId,
    required String firstName,
    required String lastName,
    required String email,
    required String role,
    required DateTime tokenExpiry,
    required bool isVerified,
    required String phoneNumber,
    String? profileImage,
    required bool isLoggedIn,
  }) async {
    await _secureStorage.writeData(_tokenKey, token);

    await _sharedPreferences.setString(_tokenExpiryKey, tokenExpiry.toString());
    await _sharedPreferences.setString(_userIdKey, userId);
    await _sharedPreferences.setString(_firstNameKey, firstName);
    await _sharedPreferences.setString(_lastNameKey, lastName);
    await _sharedPreferences.setString(_emailKey, email);
    await _sharedPreferences.setString(_roleKey, role);
    await _sharedPreferences.setBool(_isLoggedInKey, true).then((v) {});

    await _sharedPreferences.setString(_phoneNumberKey, phoneNumber);
    await _sharedPreferences.setString(_profileImageKey, profileImage ?? '');
    await _sharedPreferences.setBool(_isVerifiedKey, isVerified);
    await CurrentUser.init();
  }

  Future<void> clearCurrentUserData() async {
    await _secureStorage.deleteData(_tokenKey);
    await _sharedPreferences.remove(_userIdKey);
    await _sharedPreferences.remove(_firstNameKey);
    await _sharedPreferences.remove(_lastNameKey);
    await _sharedPreferences.remove(_emailKey);
    await _sharedPreferences.remove(_roleKey);
    await _sharedPreferences.remove(_isLoggedInKey);
    await _sharedPreferences.remove(_phoneNumberKey);
    await _sharedPreferences.remove(_profileImageKey);
    await _sharedPreferences.remove(_isVerifiedKey);
    await _sharedPreferences.remove(_tokenExpiryKey);
    await CurrentUser.init();
  }

  Future<void> setCurrentUserVerified() async {
    await _sharedPreferences.setBool(_isVerifiedKey, true);
    await CurrentUser.init();
  }

  Future<void> resetCurrentUserData() async {
    await clearCurrentUserData();
    await CurrentUser.init();
  }
}
