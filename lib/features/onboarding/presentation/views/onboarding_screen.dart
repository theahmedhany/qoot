import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qoot/core/common/widgets/custom_loading.dart';
import 'package:qoot/core/utils/app_animations.dart';
import '../../../../core/middlewares/cubit/auth_middleware_cubit.dart';
import '../../../auth/register_account/presentation/views/auth_initialize.dart';
import '../logic/cubit/onboarding_cubit.dart';

import '../logic/cubit/onboarding_state.dart';
import 'onboarding_view.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingCubit, OnboardingState>(
      builder: (context, state) {
        return state.when(
          initial: () => const CustomLoading(
            size: 100,
            loadingAnimation: AppAnimations.animationsSandyLoading,
          ),
          onboardingCompleted: () => const AuthInitialize(),
          onboardingUnCompleted: () => const OnboardingView(),
        );
      },
    );
  }
}
