import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/common/widgets/custom_text_form_field.dart';
import '../../../../core/helpers/extensions.dart';
import '../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../core/theme/theme_manager/theme_extensions.dart';
import '../../../../generated/l10n.dart';

class CustomAnyCommentsContainer extends StatelessWidget {
  const CustomAnyCommentsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: context.customAppColors.grey100),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              S.of(context).notes,
              style: AppTextStyles.font14Regular.copyWith(
                color: context.customAppColors.grey900,
                fontWeight: FontWeight.w500,
              ),
            ),
            14.h.ph,
            AppTextFormField(
              borderColor: context.customAppColors.primary800,
              backgroundColor: context.customAppColors.primary500.withValues(
                alpha: 0.25,
              ),
              hintText: 'Add any comments about the food.',
              hintStyle: AppTextStyles.font16Regular.copyWith(
                color: context.customAppColors.primary800,
              ),
              inputTextStyle: AppTextStyles.font16Regular.copyWith(
                color: context.customAppColors.primary800,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
