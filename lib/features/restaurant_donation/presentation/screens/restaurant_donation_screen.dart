import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';
import 'package:qoot/features/restaurant_donation/presentation/cubit/restaurant_donation_cubit.dart';
import 'package:qoot/features/restaurant_donation/presentation/widgets/restaurant_donation_screen_body.dart';

class RestaurantDonationScreen extends StatelessWidget {
  const RestaurantDonationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RestaurantDonationCubit()..getDonationHistory(),
      child: Scaffold(
        backgroundColor: context.customAppColors.background,
        body: const RestaurantDonationScreenBody(),
      ),
    );
  }
}
