import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qoot/core/di/service_locator.dart';
import 'package:qoot/core/utils/shared_pref_keys.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../data/local_data/current_user.dart';
import 'auth_middleware_state.dart';

class AuthMiddlewareCubit extends Cubit<AuthMiddlewareState> {
  AuthMiddlewareCubit() : super(const AuthMiddlewareState.initial());

  /// Call this in your splash or main screen to check auth state
  Future<void> checkAuthStatus() async {
    try {
      await CurrentUser.init();
      final isLoggedIn = CurrentUser.isLoggedIn();
      final data = CurrentUser.data;

      if (!isLoggedIn) {
        emit(const AuthMiddlewareState.isLoggedOut());
        return;
      }

      final bool isVerified = data.isVerified;
      final bool isVolunteer = data.role.toLowerCase() == 'volunteer';
      final bool isCharity = data.role.toLowerCase() == 'charity';
      final bool isRestaurant = data.role.toLowerCase() == 'restaurant';

      emit(
        AuthMiddlewareState.authenticated(
          isLoggedIn: isLoggedIn,
          isVerified: isVerified,
          isVolunteer: isVolunteer,
          isCharity: isCharity,
          isRestaurant: isRestaurant,
        ),
      );
    } catch (e) {
      emit(AuthMiddlewareState.error(e.toString()));
    }
  }

  Future<void> logout() async {
    // Temp Solution to logout instead of deleting everything in shared pref
    await getIt<SharedPreferences>().setBool(SharedPrefKeys.isLoggedIn, false);
    emit(const AuthMiddlewareState.isLoggedOut());
  }
}
