import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qoot/core/common/widgets/snackbar_helper.dart';
import 'package:qoot/core/helpers/extensions.dart';
import 'package:qoot/features/auth/register_restaurant/data/models/register_restaurant_response.dart';
import 'package:qoot/features/auth/register_restaurant/presentation/views/register_restaurant_screen_impl.dart';

import '../../../../../core/common/widgets/custom_loading.dart';
import '../../../../../core/routing/routes.dart';
import '../../../../../core/utils/app_animations.dart';
import '../logic/cubit/register_restaurant_cubit.dart';
import '../logic/cubit/register_restaurant_state.dart';

class RegisterRestaurantScreen extends StatelessWidget {
  const RegisterRestaurantScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<RegisterRestaurantCubit, RegisterRestaurantState>(
        listener: (context, state) {
          state.whenOrNull(
            success: (response) {
              SnackbarHelper.showSuccessSnackbar(
                context,
                response.displayMessage,
              );

              context.pushNamed(
                Routes.restaurantHomeScreen,
              );
            },
            failure: (message) {
              SnackbarHelper.showErrorSnackbar(context, message);
            },
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => const Scaffold(
              body: Center(
                child: CustomLoading(
                  size: 100,
                  loadingAnimation: AppAnimations.animationsSandyLoading,
                ),
              ),
            ),
            success: (response) => const Scaffold(body: SizedBox.shrink()),
            orElse: () => const RegisterRestaurantScreenImpl(),
          );
        },
      ),
    );
  }
}
