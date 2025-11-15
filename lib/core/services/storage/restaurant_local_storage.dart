import 'package:qoot/core/utils/shared_pref_keys.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../data/local_data/current_user.dart';
import '../../di/service_locator.dart';

class RestaurantLocalStorage {
  // shared preferences instance
  final SharedPreferences _sharedPreferences = getIt<SharedPreferences>();

  // shared preferences keys
  final String _restaurantIdKey = SharedPrefKeys.restaurantId;
  final String _restaurantNameKey = SharedPrefKeys.restaurantName;
  final String _restaurantDescriptionKey = SharedPrefKeys.restaurantDescription;
  final String _restaurantAddressKey = SharedPrefKeys.restaurantAddress;
  final String _restaurantLatitudeKey = SharedPrefKeys.restaurantLatitude;
  final String _restaurantLongitudeKey = SharedPrefKeys.restaurantLongitude;
  final String _restaurantStatusKey = SharedPrefKeys.restaurantStatus;
  final String _restaurantStatusDisplayNameKey = SharedPrefKeys.restaurantStatusDisplayName;
  final String _restaurantIsActiveKey = SharedPrefKeys.restaurantIsActive;
  final String _restaurantCreatedAtKey = SharedPrefKeys.restaurantCreatedAt;
  final String _restaurantOwnerNameKey = SharedPrefKeys.restaurantOwnerName;
  final String _restaurantEmailKey = SharedPrefKeys.restaurantEmail;
  final String _restaurantPhoneNumberKey = SharedPrefKeys.restaurantPhoneNumber;
  final String _restaurantIsRegisterCompletedKey = SharedPrefKeys.restaurantIsRegisterCompleted;

  /// Save restaurant data

  Future<void> saveRestaurantLocalData({
    required int id,
    required String name,
    required String description,
    required String address,
    required double latitude,
    required double longitude,
    required int status,
    required String statusDisplayName,
    required bool isActive,
    required DateTime createdAt,
    required String ownerName,
    required String email,
    required String phoneNumber,
    required bool isRegisterCompleted,
  }) async {
    await _sharedPreferences.setInt(_restaurantIdKey, id);
    await _sharedPreferences.setString(_restaurantNameKey, name);
    await _sharedPreferences.setString(_restaurantDescriptionKey, description);
    await _sharedPreferences.setString(_restaurantAddressKey, address);
    await _sharedPreferences.setDouble(_restaurantLatitudeKey, latitude);
    await _sharedPreferences.setDouble(_restaurantLongitudeKey, longitude);
    await _sharedPreferences.setInt(_restaurantStatusKey, status);
    await _sharedPreferences.setString(_restaurantStatusDisplayNameKey, statusDisplayName);
    await _sharedPreferences.setBool(_restaurantIsActiveKey, isActive);
    await _sharedPreferences.setString(_restaurantCreatedAtKey, createdAt.toString());
    await _sharedPreferences.setString(_restaurantOwnerNameKey, ownerName);
    await _sharedPreferences.setString(_restaurantEmailKey, email);
    await _sharedPreferences.setString(_restaurantPhoneNumberKey, phoneNumber);
    await _sharedPreferences.setBool(_restaurantIsRegisterCompletedKey, isRegisterCompleted);
    await CurrentUser.init();
  }

  //clear restaurant data
  Future<void> clearRestaurantLocalData() async {
    await _sharedPreferences.remove(_restaurantIdKey);
    await _sharedPreferences.remove(_restaurantNameKey);
    await _sharedPreferences.remove(_restaurantDescriptionKey);
    await _sharedPreferences.remove(_restaurantAddressKey);
    await _sharedPreferences.remove(_restaurantLatitudeKey);
    await _sharedPreferences.remove(_restaurantLongitudeKey);
    await _sharedPreferences.remove(_restaurantStatusKey);
    await _sharedPreferences.remove(_restaurantStatusDisplayNameKey);
    await _sharedPreferences.remove(_restaurantIsActiveKey);
    await _sharedPreferences.remove(_restaurantCreatedAtKey);
    await _sharedPreferences.remove(_restaurantOwnerNameKey);
    await _sharedPreferences.remove(_restaurantEmailKey);
    await _sharedPreferences.remove(_restaurantPhoneNumberKey);
    await _sharedPreferences.remove(_restaurantIsRegisterCompletedKey);
    await CurrentUser.init();
  }

  //set restaurant register to complete
  Future<void> setRestaurantRegisterCompleted() async {
    await _sharedPreferences.setBool(_restaurantIsRegisterCompletedKey, true);
    await CurrentUser.init();
  }

  //set restaurant register to not complete
  Future<void> setRestaurantRegisterNotCompleted() async {
    await _sharedPreferences.setBool(_restaurantIsRegisterCompletedKey, false);
    await CurrentUser.init();
  }

  //reset all restaurant data
  Future<void> resetRestaurantLocalData() async {
    await clearRestaurantLocalData();
    await CurrentUser.init();
  }
}
