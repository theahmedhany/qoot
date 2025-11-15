import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qoot/features/auth/reset_password/presentation/views/reset_password_screen_impl.dart';
import 'package:qoot/features/auth/reset_password/presentation/widgets/show_reset_password_congrats_dialog.dart';
import 'package:qoot/features/auth/reset_password/presentation/widgets/show_reset_password_faild_dialog.dart';

import '../../../../../core/common/widgets/custom_loading.dart';
import '../../../../../core/utils/app_animations.dart';
import '../logic/cubit/reset_password_cubit.dart';
import '../logic/cubit/reset_password_state.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key, required this.email, required this.token});
  final String email;
  final String token;

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ResetPasswordCubit(),
      child: Scaffold(
        body: BlocConsumer<ResetPasswordCubit, ResetPasswordState>(
          listener: (context, state) {
            state.whenOrNull(
              success: (res) {
                showResetPasswordCongratsDialog(context, res.message);
              },
              failure: (msg) {
                showResetPasswordFaildDialog(context, msg);
              },
            );
          },
          builder: (context, state) {
            return state.when(
              initial: () => ResetPasswordScreenImpl(email: widget.email, token: widget.token),
              loading: () => const Center(
                child: CustomLoading(
                  size: 100,
                  loadingAnimation: AppAnimations.animationsSandyLoading,
                ),
              ),
              success: (response) =>
                  ResetPasswordScreenImpl(email: widget.email, token: widget.token),
              failure: (response) =>
                  ResetPasswordScreenImpl(email: widget.email, token: widget.token),
            );
          },
        ),
      ),
    );
  }
}
