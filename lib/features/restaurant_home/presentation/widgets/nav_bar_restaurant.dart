import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qoot/features/charity_home/presentation/manager/navbar_cubit/navbar_cubit.dart';
import 'package:qoot/features/restaurant_home/presentation/screens/restaurant_home_screen.dart';
import 'package:qoot/features/restaurant_profile/presentation/screens/restaurant_profile_screen.dart';
import 'package:qoot/features/restaurant_home/presentation/widgets/custom_home_bottom_nav_bar.dart';
import 'package:qoot/features/restaurant_notification/presentation/screens/restaurant_notification_screen.dart';

class RestaurantNavBar extends StatelessWidget {
  const RestaurantNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavbarCubit(),
      child: const CustomHomeBottomNavBar(
        views: [
          RestaurantHomeScreen(),
          SizedBox(), // TODO: Restaurant donations
          RestaurantNotificationScreen(),
          RestaurantProfileScreen(),
        ],
      ),
    );
  }
}
