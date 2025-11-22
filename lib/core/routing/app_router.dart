import 'package:flutter/material.dart';
<<<<<<< Updated upstream
import 'package:qoot/core/utils/enums.dart';
import 'package:qoot/features/auth/auth_choice/presentation/views/auth_choice_screen.dart';
import 'package:qoot/features/auth/forget_password/presentation/views/forget_password_email_sent_screen.dart';
import 'package:qoot/features/auth/forget_password/presentation/views/forget_password_screen.dart';
import 'package:qoot/features/auth/forget_password/presentation/views/reset_password_screen.dart';
=======
import 'package:qoot/features/all_charities/data/models/all_charities_model.dart';
>>>>>>> Stashed changes
import 'package:qoot/features/auth/login/presentation/views/login_screen.dart';
import 'package:qoot/features/auth/register_account/presentation/views/signup_account_screen.dart';
import 'package:qoot/features/all_charities/presentation/screens/all_charities_screen.dart';
import 'package:qoot/features/all_restaurants/presentation/screens/all_restaurants_screen.dart';
import 'package:qoot/features/charity_confirm_pickup/presentation/screens/charity_confirm_pickup_screen.dart';
import 'package:qoot/features/charity_details/presentation/screens/charity_details_screen.dart';
import 'package:qoot/features/charity_home/presentation/widgets/nav_bar_charity.dart';
import 'package:qoot/features/charity_info/presentation/screens/charity_info_screen.dart';
import 'package:qoot/features/charity_statistics/presentation/screens/charity_statistics_screen.dart';
import 'package:qoot/features/create_donation/presentation/screens/create_donation_screen.dart';
import 'package:qoot/features/donation_details/presentation/screens/donation_details_screen.dart';
import 'package:qoot/features/restaurant_home/presentation/widgets/nav_bar_restaurant.dart';

<<<<<<< Updated upstream
import '../../features/auth/register_charity/presentation/views/register_charity_screen.dart';
import '../../features/auth/restaurant_register/presentation/views/register_restaurant_screen.dart';
=======
import '../../features/all_charities/presentation/screens/all_charities_screen.dart';
import '../../features/all_restaurants/presentation/screens/all_restaurants_screen.dart';
import '../../features/auth/auth_choice/presentation/views/auth_choice_screen.dart';
import '../../features/auth/confirm_email/presentation/views/confirm_email_screen.dart';
import '../../features/auth/forget_password/presentation/views/forget_password_screen.dart';
import '../../features/auth/register_charity/presentation/views/register_charity_screen.dart';
import '../../features/auth/register_restaurant/presentation/views/register_restaurant_screen.dart';
import '../../features/auth/reset_password/presentation/views/reset_password_screen.dart';
import '../../features/auth/send_email_reset_password/presentation/views/send_email_forget_password.dart';
import '../../features/charity_confirm_pickup/presentation/screens/charity_confirm_pickup_screen.dart';
import '../../features/charity_details/presentation/screens/charity_details_screen.dart';
import '../../features/charity_home/presentation/screens/home_charity_screen.dart';
import '../../features/charity_home/presentation/widgets/nav_bar_charity.dart';
import '../../features/charity_info/presentation/screens/charity_info_screen.dart';
import '../../features/charity_statistics/presentation/screens/charity_statistics_screen.dart';
import '../../features/create_donation/presentation/screens/create_donation_screen.dart';
import '../../features/donation_details/presentation/screens/donation_details_screen.dart';
>>>>>>> Stashed changes
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
        return MaterialPageRoute(
          builder: (_) => SignupAccountScreen(role: arguments as Roles),
        );

      // register charity screen
      case Routes.registerCharityScreen:
        return MaterialPageRoute(builder: (_) => const RegisterCharityScreen());

      // register Restaurant screen
      case Routes.registerRestaurantScreen:
        return MaterialPageRoute(
          builder: (_) => const RegisterRestaurantScreen(),
        );

      //forget password screen
      case Routes.forgetPasswordScreen:
        return MaterialPageRoute(builder: (_) => const ForgetPasswordScreen());

      //forget password email sent screen
      case Routes.forgetPasswordEmailSentScreen:
        return MaterialPageRoute(
          builder: (_) =>
              ForgetPasswordEmailSentScreen(email: arguments as String),
        );

      //reset password screen
      case Routes.resetPasswordScreen:
        return MaterialPageRoute(builder: (_) => const ResetPasswordScreen());

      // All Charities
      case Routes.allCharitiesScreen:
        return MaterialPageRoute(builder: (_) => const AllCharitiesScreen());

      // Create Donation
      case Routes.createDonationScreen:
        return MaterialPageRoute(builder: (_) => const CreateDonationScreen());

      // Charity Details
      case Routes.charityDetailsScreen:
        final charity = arguments as CharityItem;
        return MaterialPageRoute(
          builder: (_) => CharityDetailsScreen(charity: charity),
        );

      // Navbar Restaurant
      case Routes.navbarRestaurant:
        return MaterialPageRoute(builder: (_) => const RestaurantNavBar());

      // Charity Statistics
      case Routes.charityStatisticsScreen:
        return MaterialPageRoute(
          builder: (_) => const CharityStatisticsScreen(),
        );

      default:
        return null;
    }
  }
}
