import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';
import 'package:qoot/features/restaurant_donation/presentation/cubit/restaurant_donation_cubit.dart';
import 'package:qoot/features/restaurant_donation/presentation/widgets/all_donations_section/restaurant_all_donation_screen_body.dart';
import 'package:qoot/generated/l10n.dart';

class RestaurantAllDonationsScreen extends StatelessWidget {
  const RestaurantAllDonationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RestaurantDonationCubit()..getDonationHistory(),
      child: Scaffold(
        backgroundColor: context.customAppColors.background,
        appBar: AppBar(
          title: Text(S.of(context).donationHistory),
          centerTitle: true,
          backgroundColor: context.customAppColors.background,
        ),
        body: const RestaurantAllDonationsScreenBody(),
      ),
    );
  }
}
