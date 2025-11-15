import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qoot/core/helpers/extensions.dart';
import 'package:qoot/core/routing/routes.dart';
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
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(message)),
            );
            // context.read<AuthMiddlewareCubit>().checkAuthStatus();
            //navigate and remove all
            context.pushNamedAndRemoveUntil(
              Routes.onboardingScreen,
              predicate: (route) => false,
            );
          },
          failure: (message) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(message)),
            );
          },
        );
      },
      builder: (context, state) {
        return state.when(
          initial: () => const LoginScreenImpl(),
          loading: () => const Scaffold(
            body: Center(
              child: CustomLoading(
                size: 100,
                loadingAnimation: AppAnimations.animationsSandyLoading,
              ),
            ),
          ),
          success: (message, _) => const Scaffold(
            body: SizedBox.shrink(),
          ),
          failure: (message) => const LoginScreenImpl(),
        );
      },
    );
  }
}
