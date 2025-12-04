import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/generated/l10n.dart';

import '../../../../core/helpers/extensions.dart';
import '../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../core/theme/theme_manager/theme_extensions.dart';

class CustomDocumentCard extends StatelessWidget {
  const CustomDocumentCard({
    super.key,
    required this.icon,
    required this.title,
    required this.status,
  });

  final IconData icon;
  final String title;
  final String status;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.h),
      decoration: BoxDecoration(
        color: context.customAppColors.primary700.withValues(alpha: .1),
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(
          color: context.customAppColors.primary700.withValues(alpha: .2),
        ),
      ),
      child: Row(
        children: [
          Icon(icon, color: context.customAppColors.primary700, size: 22.sp),
          12.w.pw,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppTextStyles.font14SemiBold.copyWith(
                    color: context.customAppColors.grey900,
                  ),
                ),
                Text(
                  status,
                  style: AppTextStyles.font12Regular.copyWith(
                    color: context.customAppColors.primary700,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 6.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              color: context.customAppColors.primary700.withValues(alpha: .15),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.check,
                  color: context.customAppColors.primary700,
                  size: 18.sp,
                ),
                4.w.pw,
                Text(
                  S.of(context).verified,
                  style: AppTextStyles.font12Regular.copyWith(
                    color: context.customAppColors.primary700,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
