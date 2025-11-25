import 'package:shared_preferences/shared_preferences.dart';

import '../../data/local_data/current_user.dart';
import '../../di/service_locator.dart';
import '../../utils/shared_pref_keys.dart';

class CharityLocalStorage {
  // shared preferences instance
  final SharedPreferences _sharedPreferences = getIt<SharedPreferences>();

  // shared preferences keys
  final String _charityIdKey = SharedPrefKeys.charityId;
  final String _charityNameKey = SharedPrefKeys.charityName;
  final String _charityDescriptionKey = SharedPrefKeys.charityDescription;
  final String _charityAddressKey = SharedPrefKeys.charityAddress;
  final String _charityLatitudeKey = SharedPrefKeys.charityLatitude;
  final String _charityLongitudeKey = SharedPrefKeys.charityLongitude;
  final String _charityCapacityKey = SharedPrefKeys.charityCapacity;
  final String _charityTypeKey = SharedPrefKeys.charityType;
  final String _charityStatusKey = SharedPrefKeys.charityStatus;
  final String _charityStatusDisplayNameKey =
      SharedPrefKeys.charityStatusDisplayName;
  final String _charityIsActiveKey = SharedPrefKeys.charityIsActive;
  final String _charityCreatedAtKey = SharedPrefKeys.charityCreatedAt;
  final String _charityContactNameKey = SharedPrefKeys.charityContactName;
  final String _charityEmailKey = SharedPrefKeys.charityEmail;
  final String _charityPhoneNumberKey = SharedPrefKeys.charityPhoneNumber;
  final String _charityIsRegisterCompletedKey =
      SharedPrefKeys.charityIsRegisterCompleted;

  /// Save charity data
  Future<void> saveCharityLocalData({
    required int id,
    required String name,
    required String description,
    required String address,
    required double latitude,
    required double longitude,
    required int capacity,
    required int type,
    required int status,
    required String statusDisplayName,
    required bool isActive,
    required DateTime createdAt,
    required String contactName,
    required String email,
    required String phoneNumber,
    required bool isRegisterCompleted,
  }) async {
    await _sharedPreferences.setInt(_charityIdKey, id);
    await _sharedPreferences.setString(_charityNameKey, name);
    await _sharedPreferences.setString(_charityDescriptionKey, description);
    await _sharedPreferences.setString(_charityAddressKey, address);
    await _sharedPreferences.setDouble(_charityLatitudeKey, latitude);
    await _sharedPreferences.setDouble(_charityLongitudeKey, longitude);
    await _sharedPreferences.setInt(_charityCapacityKey, capacity);
    await _sharedPreferences.setInt(_charityTypeKey, type);
    await _sharedPreferences.setInt(_charityStatusKey, status);
    await _sharedPreferences.setString(
      _charityStatusDisplayNameKey,
      statusDisplayName,
    );
    await _sharedPreferences.setBool(_charityIsActiveKey, isActive);
    await _sharedPreferences.setString(
      _charityCreatedAtKey,
      createdAt.toString(),
    );
    await _sharedPreferences.setString(_charityContactNameKey, contactName);
    await _sharedPreferences.setString(_charityEmailKey, email);
    await _sharedPreferences.setString(_charityPhoneNumberKey, phoneNumber);
    await _sharedPreferences.setBool(
      _charityIsRegisterCompletedKey,
      isRegisterCompleted,
    );
    await CurrentUser.init();
  }

  //clear charity
  Future<void> clearCharityLocalData() async {
    await _sharedPreferences.remove(_charityIdKey);
    await _sharedPreferences.remove(_charityNameKey);
    await _sharedPreferences.remove(_charityDescriptionKey);
    await _sharedPreferences.remove(_charityAddressKey);
    await _sharedPreferences.remove(_charityLatitudeKey);
    await _sharedPreferences.remove(_charityLongitudeKey);
    await _sharedPreferences.remove(_charityCapacityKey);
    await _sharedPreferences.remove(_charityTypeKey);
    await _sharedPreferences.remove(_charityStatusKey);
    await _sharedPreferences.remove(_charityStatusDisplayNameKey);
    await _sharedPreferences.remove(_charityIsActiveKey);
    await _sharedPreferences.remove(_charityCreatedAtKey);
    await _sharedPreferences.remove(_charityContactNameKey);
    await _sharedPreferences.remove(_charityEmailKey);
    await _sharedPreferences.remove(_charityPhoneNumberKey);
    await _sharedPreferences.remove(_charityIsRegisterCompletedKey);
    await CurrentUser.init();
  }

  //set charity register to completed
  Future<void> setCharityRegisterCompleted() async {
    await _sharedPreferences.setBool(_charityIsRegisterCompletedKey, true);
    await CurrentUser.init();
  }

  //set charity register not complated
  Future<void> setCharityRegisterNotCompleted() async {
    await _sharedPreferences.setBool(_charityIsRegisterCompletedKey, false);
    await CurrentUser.init();
  }

  //reset all charity data
  Future<void> resetCharityLocalData() async {
    await clearCharityLocalData();
    await CurrentUser.init();
  }

  int? get charityId => _sharedPreferences.getInt(_charityIdKey);
  String? get charityName => _sharedPreferences.getString(_charityNameKey);
  String? get charityDescription =>
      _sharedPreferences.getString(_charityDescriptionKey);
  String? get charityAddress =>
      _sharedPreferences.getString(_charityAddressKey);
  double? get charityLatitude =>
      _sharedPreferences.getDouble(_charityLatitudeKey);
  double? get charityLongitude =>
      _sharedPreferences.getDouble(_charityLongitudeKey);
  int? get charityCapacity => _sharedPreferences.getInt(_charityCapacityKey);
  int? get charityType => _sharedPreferences.getInt(_charityTypeKey);
  int? get charityStatus => _sharedPreferences.getInt(_charityStatusKey);
  String? get charityStatusDisplayName =>
      _sharedPreferences.getString(_charityStatusDisplayNameKey);
  bool? get charityIsActive => _sharedPreferences.getBool(_charityIsActiveKey);
  String? get charityCreatedAt =>
      _sharedPreferences.getString(_charityCreatedAtKey);
  String? get charityContactName =>
      _sharedPreferences.getString(_charityContactNameKey);
  String? get charityEmail => _sharedPreferences.getString(_charityEmailKey);
  String? get charityPhone =>
      _sharedPreferences.getString(_charityPhoneNumberKey);
  bool? get charityIsRegisterCompleted =>
      _sharedPreferences.getBool(_charityIsRegisterCompletedKey);
}
