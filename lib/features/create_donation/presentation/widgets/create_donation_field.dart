import 'package:flutter/material.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../core/theme/theme_manager/theme_extensions.dart';

class CreateDonationField extends StatelessWidget {
  const CreateDonationField({
    super.key,
    required this.label,
    required this.child,
  });

  final String label;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: AppTextStyles.font14SemiBold.copyWith(
            color: context.customAppColors.grey900,
          ),
        ),
        verticalSpace(8),
        child,
      ],
    );
  }
}
