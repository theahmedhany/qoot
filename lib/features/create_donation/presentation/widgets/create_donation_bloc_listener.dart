import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/common/widgets/custom_alert_dialog.dart';
import '../../../../core/common/widgets/custom_loading.dart';
import '../../../../core/helpers/extensions.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theme/theme_manager/theme_extensions.dart';
import '../manager/create_donation_cubit.dart';
import '../manager/create_donation_state.dart';

class CreateDonationBlocListener extends StatelessWidget {
  const CreateDonationBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<CreateDonationCubit, CreateDonationState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      listener: (context, state) {
        state.whenOrNull(
          loading: () => _showLoadingDialog(context),
          success: (donationResponse) {
            context.pop();
            _showSuccessDialog(context);
          },
          error: (error) {
            context.pop();
            _showErrorDialog(context, error);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void _showErrorDialog(BuildContext context, String error) {
    showDialog(
      context: context,
      builder: (context) => CustomAlertDialog(
        dialogHeader: 'حدث خطأ أثناء إنشاء التبرع',
        dialogBody: error,
        dialogIcon: Icons.error_outline,
        dialogColor: context.customAppColors.error700,
        press: () => context.pop(),
      ),
    );
  }

  void _showLoadingDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      barrierColor: context.customAppColors.primary700.withValues(alpha: 0.2),
      builder: (context) => const Center(child: CustomLoading(size: 100)),
    );
  }

  void _showSuccessDialog(BuildContext context) {
    context.pop();

    showDialog(
      context: context,
      builder: (context) => CustomAlertDialog(
        dialogHeader: 'تم إنشاء التبرع بنجاح',
        dialogBody: 'سيتم مراجعة التبرع الخاص بك وإخطارك قريباً',
        dialogIcon: Icons.check_circle_outline,
        dialogColor: context.customAppColors.primary800,
        press: () {
          context.pushNamedAndRemoveUntil(
            Routes.navbarRestaurant,
            predicate: (route) => false,
          );
        },
      ),
    );
  }
}
