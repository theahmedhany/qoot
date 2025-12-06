import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qoot/core/common/screens/popular_questions_screen.dart';
import 'package:qoot/core/common/screens/terms_and_condition_screen.dart';
import 'package:qoot/core/di/service_locator.dart';
import 'package:qoot/features/all_charities/data/models/all_charities_model.dart';
import 'package:qoot/features/all_restaurants/presentation/screens/restaurant_donations_page.dart';
import 'package:qoot/features/auth/login/presentation/views/login_screen.dart';
import 'package:qoot/features/auth/register_account/presentation/views/register_account_screen.dart';
import 'package:qoot/features/charity_home/presentation/screens/food_safety_tips_screen.dart';
import 'package:qoot/features/charity_info/data/models/my_charity/charity_response.dart';
import 'package:qoot/features/charity_info/presentation/logic/delete_charity/delete_charity_cubit.dart';
import 'package:qoot/features/charity_info/presentation/logic/get_charity/get_charity_cubit.dart';
import 'package:qoot/features/charity_info/presentation/logic/update_charity/update_charity_cubit.dart';
import 'package:qoot/features/charity_info/presentation/screens/edit_charity_info_screen.dart';
import 'package:qoot/features/charity_reservations/data/models/charity_reservation/charity_reservation_response.dart';
import 'package:qoot/features/donation_details/presentation/logic/create_reservation/create_reservation_cubit.dart';
import 'package:qoot/features/onboarding/presentation/views/onboarding_screen.dart';
import 'package:qoot/features/restaurant_donation/presentation/screens/restaurant_all_donations_screen.dart';
import 'package:qoot/features/restaurant_profile_info/presentation/screens/restaurant_profile_info_screen.dart';

import '../../features/all_charities/presentation/screens/all_charities_screen.dart';
import '../../features/all_restaurants/presentation/logic/restaurants_with_donations/restaurants_with_donations_cubit.dart';
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
import '../../features/donation_details/presentation/logic/donation_details/donation_details_cubit.dart';
import '../../features/donation_details/presentation/screens/donation_details_screen.dart';
import '../../features/home/presentation/screens/home_screen.dart';
import '../../features/restaurant_home/presentation/screens/restaurant_home_screen.dart';
import '../../features/restaurant_home/presentation/widgets/nav_bar_restaurant.dart';
import '../utils/enums.dart';
import 'routes.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    // Handle Arguments
    Object? arguments = settings.arguments;

    switch (settings.name) {
      // Initial Screen
      case Routes.onboardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());

      // Home Screen
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());

      // Navbar Charity
      case Routes.navbarCharity:
        return MaterialPageRoute(
          builder: (_) => const NavBarCharity(),
        );

      // Donation Details
      case Routes.donationDetails:
        final id = arguments as String;
        return MaterialPageRoute(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) =>
                    getIt<DonationDetailsCubit>()..getDonationDetails(id),
              ),
              BlocProvider(
                create: (_) => getIt<CreateReservationCubit>(),
              ),
            ],
            child: DonationDetailsScreen(
              donationId: id,
            ),
          ),
        );

      // Charity Info Screen
      case Routes.charityInfoScreen:
        return MaterialPageRoute(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) =>
                    getIt<GetCharityCubit>()..fetchCharityInfo(),
              ),
              BlocProvider(
                create: (context) => getIt<DeleteCharityCubit>(),
              ),
              BlocProvider(
                create: (context) => getIt<UpdateCharityCubit>(),
              ),
            ],
            child: const CharityInfoScreen(),
          ),
        );

      // Edit Charity Info Screen
      case Routes.editCharityInfoScreen:
        final data = arguments as Map;
        final charity = data["charity"] as CharityData;
        final updateCubit = data["cubit"] as UpdateCharityCubit;
        final getCubit = data["getCubit"] as GetCharityCubit;

        return MaterialPageRoute(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider.value(value: updateCubit),
              BlocProvider.value(value: getCubit),
            ],
            child: EditCharityInfoScreen(charity: charity),
          ),
        );

      // Charity Confirm Pickup
      case Routes.charityConfirmPickup:
        final charityReservationItem = arguments as CharityReservationItem;
        return MaterialPageRoute(
          builder: (_) => CharityConfirmPickupScreen(
            charityReservationItem: charityReservationItem,
          ),
        );

      // All Restaurants
      case Routes.allRestaurants:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) =>
                getIt<RestaurantsWithDonationsCubit>()
                  ..getRestaurantsWithDonations(context),
            child: const AllRestaurantsScreen(),
          ),
        );

      // Auth Choice Screen
      case Routes.authChoiceScreen:
        return MaterialPageRoute(builder: (_) => const AuthChoiceScreen());

      // Login Screen
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());

      // Signup Initial
      case Routes.registerAccountScreen:
        return MaterialPageRoute(
          builder: (_) => RegisterAccountScreen(role: arguments as Roles),
        );

      // Email Confirm
      case Routes.confirmEmailScreen:
        if (arguments is Map<String, String>) {
          final email = arguments['email']!;
          final token = arguments['token']!;
          return MaterialPageRoute(
            builder: (_) => ConfirmEmailScreen(email: email, token: token),
          );
        }

      // Reset Password Screen
      case Routes.resetPasswordScreen:
        if (arguments is Map<String, String>) {
          final email = arguments['email']!;
          final token = arguments['token']!;
          return MaterialPageRoute(
            builder: (_) => ResetPasswordScreen(email: email, token: token),
          );
        }

      // Forget Password Email Sent Screen
      case Routes.sendEmailForgetPassword:
        if (arguments is Map<String, String>) {
          final email = arguments['email']!;
          return MaterialPageRoute(
            builder: (_) => SendEmailForgetPassword(email: email),
          );
        }

      // Register Charity Screen
      case Routes.registerCharityScreen:
        return MaterialPageRoute(builder: (_) => const RegisterCharityScreen());

      // Register Restaurant Screen
      case Routes.registerRestaurantScreen:
        return MaterialPageRoute(
          builder: (_) => const RegisterRestaurantScreen(),
        );

      // Forget Password Screen
      case Routes.forgetPasswordScreen:
        return MaterialPageRoute(builder: (_) => const ForgetPasswordScreen());

      // Home Charity Screen
      case Routes.homeCharityScreen:
        return MaterialPageRoute(builder: (_) => const HomeCharityScreen());

      // Restaurant Home Screen
      case Routes.restaurantHomeScreen:
        return MaterialPageRoute(builder: (_) => const RestaurantHomeScreen());

      // Restaurant All Donations History
      case Routes.allRestaurantDonationScreen:
        return MaterialPageRoute(
          builder: (_) => const RestaurantAllDonationsScreen(),
        );

      // Restaurant Profile Info Screen
      case Routes.restaurantProfileInfoScreen:
        return MaterialPageRoute(
          builder: (_) => const RestaurantProfileInfoScreen(),
        );

      // All Charities Screen
      case Routes.allCharitiesScreen:
        return MaterialPageRoute(builder: (_) => const AllCharitiesScreen());

      // Create Donation Screen
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

      // Food Safety Tips Screen
      case Routes.foodSafetyTipsScreen:
        return MaterialPageRoute(builder: (_) => const TipsScreen());

      // Terms and Condition Screen
      case Routes.termsAndConditionScreen:
        return MaterialPageRoute(
          builder: (_) => const TermsAndConditionScreen(),
        );

      // Popular Questions Screen
      case Routes.popularQuestionsScreen:
        return MaterialPageRoute(
          builder: (_) => const PopularQuestionsScreen(),
        );

      // restaurant Donations Page
      case Routes.restaurantDonationsPage:
        final restaurantId = arguments as String;
        return MaterialPageRoute(
          builder: (_) => RestaurantDonationsPage(restaurantId: restaurantId),
        );

      default:
        return null;
    }
    return null;
  }
}
