import 'package:flutter/material.dart';
import 'package:qoot/features/charity_home/presentation/widgets/nav_bar_charity.dart';
import '../../features/home/presentation/screens/home_screen.dart';
import 'routes.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      // Home Screen
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      // Navbar Charity
      case Routes.navbarCharity:
        return MaterialPageRoute(builder: (_) => const NavBarCharity());

      default:
        return null;
    }
  }
}
