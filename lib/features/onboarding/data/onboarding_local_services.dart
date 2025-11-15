import 'package:qoot/core/di/service_locator.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/utils/shared_pref_keys.dart';

class OnboardingLocalServices {
  OnboardingLocalServices._();

  static Future<void> completeOnboarding() async {
    final prefs = getIt<SharedPreferences>();
    await prefs.setBool(SharedPrefKeys.onboardingCompleted, true);
  }

  static Future<bool> isOnboardingCompleted() async {
    final prefs = getIt<SharedPreferences>();
    return prefs.getBool(SharedPrefKeys.onboardingCompleted) ?? false;
  }

  static Future<void> completeLogin() async {
    final prefs = getIt<SharedPreferences>();
    await prefs.setBool(SharedPrefKeys.isLoggedIn, true);
  }

  static Future<bool> isLoggedIn() async {
    final prefs = getIt<SharedPreferences>();
    return prefs.getBool(SharedPrefKeys.isLoggedIn) ?? false;
  }

  static Future<void> completeLogout() async {
    final prefs = getIt<SharedPreferences>();
    await prefs.setBool(SharedPrefKeys.isLoggedIn, false);
  }
}
