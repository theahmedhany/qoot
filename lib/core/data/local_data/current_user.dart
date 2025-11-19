import 'package:qoot/core/di/service_locator.dart';
import 'package:qoot/core/utils/secure_storage_keys.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../features/auth/register_account/domain/entities/user_entity.dart';
import '../../helpers/secure_storage_helper.dart';
import '../../utils/shared_pref_keys.dart';

part 'user_local_data_model.dart';
part 'charity_local_data_model.dart';
part 'restaurant_local_data_model.dart';

class CurrentUser {
  CurrentUser._();

  // current user data
  static late _UserLocalData _data;
  static late _CharityLocalData _charityData;
  static late _RestaurantLocalData _restaurantData;

  static bool _isInitialized = false;

  static _UserLocalData get data {
    if (!_isInitialized) {
      throw Exception(
        'CurrentUser not initialized. Call init() at main first.',
      );
    }
    return _data;
  }

  static _CharityLocalData get charityData {
    if (!_isInitialized) {
      throw Exception(
        'CurrentUser not initialized. Call init() at main first.',
      );
    }
    return _charityData;
  }

  static _RestaurantLocalData get restaurantData {
    if (!_isInitialized) {
      throw Exception(
        'CurrentUser not initialized. Call init() at main first.',
      );
    }
    return _restaurantData;
  }

  //init current user
  static Future<void> init() async {
    //init default data
    await _initDefaultData();
    //init charity data
    await _initCharityData();
    //init restaurant data
    await _initRestaurantData();

    //set is initialized
    _isInitialized = true;
  }

  //is user logged in
  static bool isLoggedIn() {
    return data.isLoggedIn;
  }

  //init default data
  static Future<void> _initDefaultData() async {
    UserEntity user = getCurrentUser();
    String? token = await _getToken();
    String? tokenExpiry = await _getTokenExpiry();
    bool isLoggedIn = await _getIsLoggedIn();
    _data = _UserLocalData(
      token: token ?? '',
      tokenExpiry: tokenExpiry ?? '',
      isLoggedIn: isLoggedIn,
      userId: user.id,
      firstName: user.firstName,
      lastName: user.lastName,
      email: user.email,
      role: user.roles.isNotEmpty ? user.roles[0] : '',
      phoneNumber: user.phoneNumber,
      profileImage: user.profileImage,
      isVerified: user.isVerified,
    );
  }

  // _init charity data
  static Future<void> _initCharityData() async {
    _charityData = _CharityLocalData(
      id: getIt<SharedPreferences>().getInt(SharedPrefKeys.charityId) ?? 0,
      name:
          getIt<SharedPreferences>().getString(SharedPrefKeys.charityName) ??
          '',
      address:
          getIt<SharedPreferences>().getString(SharedPrefKeys.charityAddress) ??
          '',
      capacity:
          getIt<SharedPreferences>().getInt(SharedPrefKeys.charityCapacity) ??
          0,
      contactName:
          getIt<SharedPreferences>().getString(
            SharedPrefKeys.charityContactName,
          ) ??
          '',
      //get created at as a DateTime
      createdAt:
          DateTime.tryParse(
            getIt<SharedPreferences>().getString(
                  SharedPrefKeys.charityCreatedAt,
                ) ??
                '',
          ) ??
          DateTime.now(),
      description:
          getIt<SharedPreferences>().getString(
            SharedPrefKeys.charityDescription,
          ) ??
          '',
      email:
          getIt<SharedPreferences>().getString(SharedPrefKeys.charityEmail) ??
          '',
      isActive:
          getIt<SharedPreferences>().getBool(SharedPrefKeys.charityIsActive) ??
          false,
      latitude:
          getIt<SharedPreferences>().getDouble(
            SharedPrefKeys.charityLatitude,
          ) ??
          0.0,
      longitude:
          getIt<SharedPreferences>().getDouble(
            SharedPrefKeys.charityLongitude,
          ) ??
          0.0,
      phoneNumber:
          getIt<SharedPreferences>().getString(
            SharedPrefKeys.charityPhoneNumber,
          ) ??
          '',
      status:
          getIt<SharedPreferences>().getInt(SharedPrefKeys.charityStatus) ?? 0,
      statusDisplayName:
          getIt<SharedPreferences>().getString(
            SharedPrefKeys.charityStatusDisplayName,
          ) ??
          '',
      type: getIt<SharedPreferences>().getInt(SharedPrefKeys.charityType) ?? 0,
      isRegisterCompleted:
          getIt<SharedPreferences>().getBool(
            SharedPrefKeys.charityIsRegisterCompleted,
          ) ??
          false,
    );
  }

  // _init restaurant data
  static Future<void> _initRestaurantData() async {
    _restaurantData = _RestaurantLocalData(
      id: getIt<SharedPreferences>().getInt(SharedPrefKeys.restaurantId) ?? 0,
      name:
          getIt<SharedPreferences>().getString(SharedPrefKeys.restaurantName) ??
          '',
      description:
          getIt<SharedPreferences>().getString(
            SharedPrefKeys.restaurantDescription,
          ) ??
          '',
      address:
          getIt<SharedPreferences>().getString(
            SharedPrefKeys.restaurantAddress,
          ) ??
          '',
      createdAt:
          DateTime.tryParse(
            getIt<SharedPreferences>().getString(
                  SharedPrefKeys.restaurantCreatedAt,
                ) ??
                '',
          ) ??
          DateTime.now(),
      email:
          getIt<SharedPreferences>().getString(
            SharedPrefKeys.restaurantEmail,
          ) ??
          '',
      isActive:
          getIt<SharedPreferences>().getBool(
            SharedPrefKeys.restaurantIsActive,
          ) ??
          false,
      latitude:
          getIt<SharedPreferences>().getDouble(
            SharedPrefKeys.restaurantLatitude,
          ) ??
          0.0,
      longitude:
          getIt<SharedPreferences>().getDouble(
            SharedPrefKeys.restaurantLongitude,
          ) ??
          0.0,
      ownerName:
          getIt<SharedPreferences>().getString(
            SharedPrefKeys.restaurantOwnerName,
          ) ??
          '',
      phoneNumber:
          getIt<SharedPreferences>().getString(
            SharedPrefKeys.restaurantPhoneNumber,
          ) ??
          '',
      status:
          getIt<SharedPreferences>().getInt(SharedPrefKeys.restaurantStatus) ??
          0,
      statusDisplayName:
          getIt<SharedPreferences>().getString(
            SharedPrefKeys.restaurantStatusDisplayName,
          ) ??
          '',
      isRegisterCompleted:
          getIt<SharedPreferences>().getBool(
            SharedPrefKeys.restaurantIsRegisterCompleted,
          ) ??
          false,
    );
  }

  /// Get token
  static Future<String?> _getToken() async {
    return await getIt<SecureStorageHelper>().readData(SecureStorageKeys.token);
  }

  // get token expiry
  static Future<String?> _getTokenExpiry() async {
    return getIt<SharedPreferences>().getString(SharedPrefKeys.tokenExpiry);
  }

  //get is logged loggin (isloggedin == true && token not expired)
  static Future<bool> _getIsLoggedIn() async {
    final isLoggedIn =
        getIt<SharedPreferences>().getBool(SharedPrefKeys.isLoggedIn) ?? false;
    final tokenExpiry = await _getTokenExpiry();
    if (isLoggedIn && tokenExpiry != null) {
      final expiryDate = DateTime.tryParse(tokenExpiry);
      if (expiryDate != null) {
        return expiryDate.isAfter(DateTime.now());
      }
    }
    return false;
  }

  //get all user data as UserEntity
  static UserEntity getCurrentUser() {
    return UserEntity(
      id:
          getIt<SharedPreferences>()
              .getString(SharedPrefKeys.userId)
              ?.toString() ??
          '',
      firstName:
          getIt<SharedPreferences>().getString(SharedPrefKeys.firstName) ?? '',
      lastName:
          getIt<SharedPreferences>().getString(SharedPrefKeys.lastName) ?? '',
      email: getIt<SharedPreferences>().getString(SharedPrefKeys.email) ?? '',
      phoneNumber:
          getIt<SharedPreferences>().getString(SharedPrefKeys.phoneNumber) ??
          '',
      profileImage: getIt<SharedPreferences>().getString(
        SharedPrefKeys.profileImage,
      ),
      roles: getIt<SharedPreferences>().getString(SharedPrefKeys.role) != null
          ? [getIt<SharedPreferences>().getString(SharedPrefKeys.role)!]
          : [],
      isVerified:
          getIt<SharedPreferences>().getBool(SharedPrefKeys.isVerified) ??
          false,
    );
  }
}
