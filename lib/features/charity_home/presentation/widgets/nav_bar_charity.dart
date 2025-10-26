import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../charity_donations/presentation/screens/charity_donations_screen.dart';
import '../../../charity_profile/presentation/screens/charity_profile_screen.dart';
import '../../../charity_reservations/presentation/screens/charity_reservations_screen.dart';
import '../manager/navbar_cubit/navbar_cubit.dart';
import '../screens/home_charity_screen.dart';
import 'custom_bottom_nav_bar.dart';

class NavBarCharity extends StatelessWidget {
  const NavBarCharity({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavbarCubit(),
      child: const CustomBottomNavBar(
        views: [
          HomeCharityScreen(),
          CharityDonationsScreen(),
          CharityReservationsScreen(),
          CharityProfileScreen(),
        ],
      ),
    );
  }
}
