import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qoot/core/common/widgets/snackbar_helper.dart';
import 'package:qoot/core/helpers/extensions.dart';
import 'package:qoot/core/routing/routes.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';
import 'package:qoot/features/auth/login/presentation/views/login_screen_impl.dart';

import '../../../../../core/common/widgets/custom_loading.dart';
import '../../../../../core/utils/app_animations.dart';
import '../logic/cubit/login_cubit.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        state.whenOrNull(
          success: (message, data) {
            SnackbarHelper.showSuccessSnackbar(context, message);

            context.pushNamed(
              Routes.onboardingScreen,
            );
          },
          failure: (message) {
            SnackbarHelper.showErrorSnackbar(context, message);
          },
        );
      },
      builder: (context, state) {
        return state.maybeMap(
          loading: (v) => Scaffold(
            backgroundColor: context.customAppColors.background,
            body: const Center(
              child: CustomLoading(
                size: 100,
                loadingAnimation: AppAnimations.animationsSandyLoading,
              ),
            ),
          ),
          orElse: () => const LoginScreenImpl(),
        );
      },
    );
  }
}
