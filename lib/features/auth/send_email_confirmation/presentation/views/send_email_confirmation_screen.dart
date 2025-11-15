import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/common/widgets/custom_loading.dart';
import '../../../../../core/utils/app_animations.dart';
import '../logic/cubit/send_email_confirmation_cubit.dart';
import '../logic/cubit/send_email_confirmation_state.dart';
import 'send_email_confirmation_screen_impl.dart';

class SendEmailConfirmationScreen extends StatefulWidget {
  final String email;
  const SendEmailConfirmationScreen({super.key, required this.email});

  @override
  State<SendEmailConfirmationScreen> createState() => _SendEmailConfirmationScreenState();
}

class _SendEmailConfirmationScreenState extends State<SendEmailConfirmationScreen> {
  @override
  void initState() {
    super.initState();
    context.read<SendEmailConfirmationCubit>().sendEmailConfirmation(widget.email);
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SendEmailConfirmationCubit, SendEmailConfirmationState>(
      listener: (context, state) {
        state.whenOrNull(
          failure: (message) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
          },
          success: (data) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(data.message)));
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
          success: (response) => SendEmailConfirmationScreenImpl(email: widget.email),
          failure: (message) => Scaffold(body: Center(child: Text('Error: $message'))),
        );
      },
    );
  }
}
