import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qoot/features/auth/send_email_reset_password/presentation/views/send_email_forget_password_impl.dart';

import '../../../../../core/common/widgets/custom_loading.dart';
import '../../../../../core/utils/app_animations.dart';
import '../logic/cubit/forget_password_cubit.dart';
import '../logic/cubit/forget_password_state.dart';

class SendEmailForgetPassword extends StatefulWidget {
  const SendEmailForgetPassword({super.key, required this.email});
  final String email;

  @override
  State<SendEmailForgetPassword> createState() => _SendEmailForgetPasswordState();
}

class _SendEmailForgetPasswordState extends State<SendEmailForgetPassword> {
  @override
  void initState() {
    super.initState();
    context.read<ForgetPasswordCubit>().forgetPassword(widget.email);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<ForgetPasswordCubit, ForgetPasswordState>(
        listener: (context, state) {
          state.when(
            initial: () {},
            loading: () {},
            success: (resp) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(resp.message)),
              );
            },
            failure: (msg) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(msg)),
              );
            },
          );
        },
        builder: (context, state) {
          return state.when(
            initial: () => const Scaffold(
              body: Center(
                child: CustomLoading(
                  size: 100,
                  loadingAnimation: AppAnimations.animationsSandyLoading,
                ),
              ),
            ),
            loading: () => const Scaffold(
              body: Center(
                child: CustomLoading(
                  size: 100,
                  loadingAnimation: AppAnimations.animationsSandyLoading,
                ),
              ),
            ),
            success: (response) => SendEmailForgetPasswordImpl(email: widget.email),
            failure: (message) => Scaffold(body: Center(child: Text('Error: $message'))),
          );
        },
      ),
    );
  }
}
