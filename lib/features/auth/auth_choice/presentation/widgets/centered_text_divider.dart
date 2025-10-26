import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../../core/theme/theme_manager/theme_extensions.dart';

class CenteredTextDivider extends StatelessWidget {
  const CenteredTextDivider({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Divider(color: context.customAppColors.neutral800, height: 1),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: AppTextStyles.font14Regular.copyWith(
              color: context.customAppColors.neutral800,
            ),
          ),
        ),
        Expanded(
          child: Divider(color: context.customAppColors.neutral800, height: 1),
        ),
      ],
    );
  }
}
