import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qoot/features/restaurant_home/presentation/cubit/restaurant_home_cubit.dart';
import 'package:qoot/features/restaurant_home/presentation/widgets/restaurant_home_screen_body.dart';

class RestaurantHomeScreen extends StatelessWidget {
  const RestaurantHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RestaurantHomeCubit(),
      child: Builder(
        builder: (context) {
          // Trigger after first frame
          WidgetsBinding.instance.addPostFrameCallback((_) async {
            await context.read<RestaurantHomeCubit>().getUrgentDonations();
          });
          return const Scaffold(
            body: RestaurantHomeScreenBody(),
          );
        },
      ),
    );
  }
}
