import 'package:flutter/material.dart';
import 'package:qoot/features/charity_home/presentation/widgets/nav_bar_charity.dart';
import 'package:qoot/features/donation_details/presentation/screens/donation_details_screen.dart';
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
      // Donation Details
      case Routes.donationDetails:
        return MaterialPageRoute(builder: (_) => const DonationDetailsScreen());
      default:
        return null;
    }
  }
}
