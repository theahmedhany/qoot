import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';
import 'package:qoot/features/restaurant_profile_info/presentation/cubit/cubit/restaurant_profile_cubit.dart';
import 'package:qoot/features/restaurant_profile_info/presentation/widgets/restaurant_profile_info_screen_body.dart';

class RestaurantProfileInfoScreen extends StatelessWidget {
  const RestaurantProfileInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RestaurantProfileCubit(),
      child: Scaffold(
        backgroundColor: context.customAppColors.background,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.h),
          child: const SingleChildScrollView(
            child: SafeArea(
              child: RestaurantProfileInfoScreenBody(),
            ),
          ),
        ),
      ),
    );
  }
}
