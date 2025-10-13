import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qoot/features/charity_donations/presentation/screens/charity_donations_screen.dart';
import 'package:qoot/features/charity_home/presentation/manager/navbar_cubit/navbar_cubit.dart';
import 'package:qoot/features/charity_home/presentation/screens/home_charity_screen.dart';
import 'package:qoot/features/charity_home/presentation/widgets/custom_bottom_nav_bar.dart';

class NavBarCharity extends StatelessWidget {
  const NavBarCharity({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavbarCubit(),
      child: CustomBottomNavBar(
        views: [
          HomeCharityScreen(),
          CharityDonationsScreen(),
          Container(),
          Container(),
        ],
      ),
    );
  }
}
