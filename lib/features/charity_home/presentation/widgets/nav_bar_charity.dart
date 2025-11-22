import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qoot/core/di/service_locator.dart';
import 'package:qoot/features/charity_donations/presentation/logic/get_available_donations/get_available_donations_cubit.dart';
import 'package:qoot/features/charity_reservations/presentation/logic/charity_reservations/charity_reservations_cubit.dart';
import 'package:qoot/features/charity_reservations/presentation/logic/donation_images/donation_images_cubit.dart';
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
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => NavbarCubit(),
        ),
        BlocProvider(
          create: (context) => getIt<DonationImagesCubit>(),
        ),
      ],
      child: CustomBottomNavBar(
        views: [
          const HomeCharityScreen(),
          BlocProvider.value(
            value: getIt<GetAvailableDonationsCubit>()
              ..getAvailableDonations(context),
            child: const CharityDonationsScreen(),
          ),

          BlocProvider.value(
            value: getIt<CharityReservationsCubit>()
              ..fetchCharityReservations(context),
            child: const CharityReservationsScreen(),
          ),
          const CharityProfileScreen(),
        ],
      ),
    );
  }
}
