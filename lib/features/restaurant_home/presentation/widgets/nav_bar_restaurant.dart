import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../charity_home/presentation/manager/navbar_cubit/navbar_cubit.dart';
import '../../../restaurant_donation/presentation/screens/restaurant_donation_screen.dart';
import '../screens/restaurant_home_screen.dart';
import 'custom_home_bottom_nav_bar.dart';
import '../../../restaurant_notification/presentation/screens/restaurant_notification_screen.dart';
import '../../../restaurant_profile/presentation/screens/restaurant_profile_screen.dart';

class RestaurantNavBar extends StatelessWidget {
  const RestaurantNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavbarCubit(),
      child: const CustomHomeBottomNavBar(
        views: [
          RestaurantHomeScreen(),
          RestaurantDonationScreen(),
          RestaurantNotificationScreen(),
          RestaurantProfileScreen(),
        ],
      ),
    );
  }
}
