import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qoot/core/common/widgets/snackbar_helper.dart';
import 'package:qoot/core/helpers/extensions.dart';
import 'package:qoot/core/routing/routes.dart';
import 'package:qoot/features/auth/register_charity/presentation/views/register_charity_screen_impl.dart';

import '../../../../../core/common/widgets/custom_loading.dart';
import '../../../../../core/utils/app_animations.dart';
import '../logic/cubit/register_charity_cubit.dart';
import '../logic/cubit/register_charity_state.dart';

class RegisterCharityScreen extends StatefulWidget {
  const RegisterCharityScreen({super.key});

  @override
  State<RegisterCharityScreen> createState() => _RegisterCharityScreenState();
}

class _RegisterCharityScreenState extends State<RegisterCharityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<RegisterCharityCubit, RegisterCharityState>(
        listener: (context, state) {
          state.whenOrNull(
            success: (response) {
              SnackbarHelper.showSuccessSnackbar(context, response.msg);
              context.pushNamedAndRemoveUntil(
                Routes.homeCharityScreen,
                predicate: (route) => false,
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
            orElse: () => const RegisterCharityScreenImpl(),
          );
        },
      ),
    );
  }
}
