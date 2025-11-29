import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qoot/core/common/widgets/snackbar_helper.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';
import 'package:qoot/core/utils/enums.dart';
import 'package:qoot/features/auth/register_account/presentation/views/register_account_screen_impl.dart';

import '../../../../../core/common/widgets/custom_loading.dart';
import '../../../../../core/data/local_data/current_user.dart';
import '../../../../../core/utils/app_animations.dart';
import '../../../send_email_confirmation/presentation/views/send_email_confirmation_screen.dart';
import '../logic/cubit/register_cubit.dart';
import '../logic/cubit/register_state.dart';

class RegisterAccountScreen extends StatelessWidget {
  const RegisterAccountScreen({super.key, required this.role});
  final Roles role;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterCubit, RegisterState>(
      listener: (context, state) {
        state.maybeWhen(
          success: (data) {
            Navigator.pop(context);
          },
          failure: (message) {
            Navigator.pop(context);

            SnackbarHelper.showErrorSnackbar(context, message);
          },
          loading: () async {
            await showDialog(
              context: context,
              builder: (context) {
                return Dialog.fullscreen(
                  backgroundColor: context.customAppColors.primary300
                      .withValues(alpha: 0.4),
                  child: const Center(
                    child: CustomLoading(
                      size: 100,
                      loadingAnimation: AppAnimations.animationsSandyLoading,
                    ),
                  ),
                );
              },
            );
          },
          orElse: () {},
        );
      },
      builder: (context, state) {
        return state.when(
          initial: () => RegisterAccountScreenImpl(role: role),
          loading: () => RegisterAccountScreenImpl(role: role),
          success: (data) =>
              SendEmailConfirmationScreen(email: CurrentUser.data.email),
          failure: (message) => RegisterAccountScreenImpl(role: role),
        );
      },
    );
  }
}
