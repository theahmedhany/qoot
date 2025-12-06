import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';
import 'package:qoot/features/restaurant_home/presentation/cubit/restaurant_home_cubit.dart';
import 'package:qoot/features/restaurant_home/presentation/widgets/restaurant_home_screen_body.dart';

class RestaurantHomeScreen extends StatelessWidget {
  const RestaurantHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RestaurantHomeCubit()..getUrgentDonations(),
      child: Scaffold(
        backgroundColor: context.customAppColors.background,
        body: const RestaurantHomeScreenBody(),
      ),
    );
  }
}
