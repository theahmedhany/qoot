import 'package:flutter/material.dart';
import 'package:qoot/features/all_charities/presentation/screens/all_charities_screen.dart';
import 'package:qoot/features/all_restaurants/presentation/screens/all_restaurants_screen.dart';
import 'package:qoot/features/charity_confirm_pickup/presentation/screens/charity_confirm_pickup_screen.dart';
import 'package:qoot/features/charity_details/presentation/screens/charity_details_screen.dart';
import 'package:qoot/features/charity_home/presentation/widgets/nav_bar_charity.dart';
import 'package:qoot/features/charity_info/presentation/screens/charity_info_screen.dart';
import 'package:qoot/features/create_donation/presentation/screens/create_donation_screen.dart';
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
      // Charity Info Screen
      case Routes.charityInfoScreen:
        return MaterialPageRoute(builder: (_) => const CharityInfoScreen());
      // Charity Confirm Pickup
      case Routes.charityConfirmPickup:
        return MaterialPageRoute(
          builder: (_) => const CharityConfirmPickupScreen(),
        );
      // All Restaurants
      case Routes.allRestaurants:
        return MaterialPageRoute(builder: (_) => const AllRestaurantsScreen());
      case Routes.restaurantDetails:
        return MaterialPageRoute(
          builder: (_) => const RestaurantDetailsBottomSheet(),
        );

      // All Charities
      case Routes.allCharitiesScreen:
        return MaterialPageRoute(builder: (_) => const AllCharitiesScreen());

      // Create Donation
      case Routes.createDonationScreen:
        return MaterialPageRoute(builder: (_) => const CreateDonationScreen());

      // Charity Details
      case Routes.charityDetailsScreen:
        return MaterialPageRoute(builder: (_) => CharityDetailsScreen());
      default:
        return null;
    }
  }
}
