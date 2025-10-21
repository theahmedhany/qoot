import 'package:flutter/material.dart';
import 'package:qoot/core/utils/enums.dart';
import 'package:qoot/features/auth/auth_choice/presentation/views/auth_choice_screen.dart';
import 'package:qoot/features/auth/forget_password/presentation/views/forget_password_email_sent_screen.dart';
import 'package:qoot/features/auth/forget_password/presentation/views/forget_password_screen.dart';
import 'package:qoot/features/auth/forget_password/presentation/views/reset_password_screen.dart';
import 'package:qoot/features/auth/login/presentation/views/login_screen.dart';
import 'package:qoot/features/auth/register_account/presentation/views/signup_account_screen.dart';

import '../../features/auth/register_charity/presentation/views/register_charity_screen.dart';
import '../../features/auth/restaurant_register/presentation/views/register_restaurant_screen.dart';
import '../../features/home/presentation/screens/home_screen.dart';
import '../../features/onboarding/presentation/views/onboarding_view.dart';
import 'routes.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    // handle arguments
    Object? arguments = settings.arguments;

    switch (settings.name) {
      // Home Screen
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());

      // Onboarding Screen
      case Routes.onboardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingView());

      // Auth Choice Screen
      case Routes.authChoiceScreen:
        return MaterialPageRoute(builder: (_) => const AuthChoiceScreen());

      // login screen
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());

      // Signup Account screen
      case Routes.signupAccountScreen:
        return MaterialPageRoute(builder: (_) => SignupAccountScreen(role: arguments as Roles));

      // register charity screen
      case Routes.registerCharityScreen:
        return MaterialPageRoute(builder: (_) => const RegisterCharityScreen());

      // register Restaurant screen
      case Routes.registerRestaurantScreen:
        return MaterialPageRoute(builder: (_) => const RegisterRestaurantScreen());

      //forget password screen
      case Routes.forgetPasswordScreen:
        return MaterialPageRoute(builder: (_) => const ForgetPasswordScreen());

      //forget password email sent screen
      case Routes.forgetPasswordEmailSentScreen:
        return MaterialPageRoute(
          builder: (_) => ForgetPasswordEmailSentScreen(email: arguments as String),
        );

      //reset password screen
      case Routes.resetPasswordScreen:
        return MaterialPageRoute(builder: (_) => const ResetPasswordScreen());

      default:
        return null;
    }
  }
}
