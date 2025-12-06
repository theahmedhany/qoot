import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';
import 'package:qoot/features/auth/register_restaurant/presentation/views/register_restaurant_screen.dart';
import 'package:qoot/features/auth/send_email_confirmation/presentation/views/send_email_confirmation_screen.dart';
import 'package:qoot/features/charity_home/presentation/widgets/nav_bar_charity.dart';
import 'package:qoot/features/restaurant_home/presentation/widgets/nav_bar_restaurant.dart';

import '../../../../../core/common/widgets/custom_loading.dart';
import '../../../../../core/data/local_data/current_user.dart';
import '../../../../../core/di/service_locator.dart';
import '../../../../../core/middlewares/cubit/auth_middleware_cubit.dart';
import '../../../../../core/middlewares/cubit/auth_middleware_state.dart';
import '../../../../../core/services/storage/Auth_local_storage.dart';
import '../../../../../core/utils/app_animations.dart';
import '../../../../home/presentation/screens/home_screen.dart';
import '../../../auth_choice/presentation/views/auth_choice_screen.dart';
import '../../../register_charity/presentation/views/register_charity_screen.dart';

class AuthInitialize extends StatefulWidget {
  const AuthInitialize({super.key});

  @override
  State<AuthInitialize> createState() => _AuthInitializeState();
}

class _AuthInitializeState extends State<AuthInitialize> {
  @override
  void initState() {
    context.read<AuthMiddlewareCubit>().checkAuthStatus();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.customAppColors.background,
      body: BlocBuilder<AuthMiddlewareCubit, AuthMiddlewareState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Center(
              child: CustomLoading(
                size: 100,
                loadingAnimation: AppAnimations.animationsSandyLoading,
              ),
            ),
            isLoggedOut: () => const AuthChoiceScreen(),
            authenticated:
                (isLoggedIn, isVerified, isVolunteer, isCharity, isRestaurant) {
                  if (isLoggedIn) {
                    if (isVerified) {
                      if (isVolunteer) {
                        return const HomeScreen();
                      } else if (isCharity) {
                        if (CurrentUser.charityData.isRegisterCompleted) {
                          return const NavBarCharity();
                        } else {
                          return const RegisterCharityScreen();
                        }
                      } else if (isRestaurant) {
                        if (CurrentUser.restaurantData.isRegisterCompleted) {
                          return const RestaurantNavBar();
                        } else {
                          return const RegisterRestaurantScreen();
                        }
                      } else {
                        getIt<AuthLocalStorage>().resetCurrentUserData();
                        return const AuthChoiceScreen();
                      }
                    } else {
                      return SendEmailConfirmationScreen(
                        email: CurrentUser.data.email,
                      );
                    }
                  } else {
                    return const AuthChoiceScreen();
                  }
                },
            error: (msg) => Text('Error: $msg'),
          );
        },
      ),
    );
  }
}
