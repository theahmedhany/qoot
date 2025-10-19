import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/helpers/extensions.dart';
import 'package:qoot/core/theme/app_texts/app_text_styles.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';

class CustomStatCard extends StatelessWidget {
  const CustomStatCard({
    super.key,
    required this.value,
    required this.label,
    required this.color,
  });

  final String value;
  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 16.h),
        decoration: BoxDecoration(
          color: color.withValues(alpha: .15),
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(color: context.customAppColors.grey100),
        ),
        child: Column(
          children: [
            Text(value, style: AppTextStyles.font18Bold.copyWith(color: color)),
            4.h.ph,
            Text(
              label,
              style: AppTextStyles.font12Regular.copyWith(
                color: context.customAppColors.grey600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
