import 'package:flutter/material.dart';

import '../../features/home/presentation/screens/home_screen.dart';
import '../../features/onboarding/presentation/views/onboarding_view.dart';
import 'routes.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      // Home Screen
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());

      // Onboarding Screen
      case Routes.onboardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingView());

      default:
        return null;
    }
  }
}
