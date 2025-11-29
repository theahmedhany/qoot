import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/theme/app_texts/app_text_styles.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';

class CustomFilterChip extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  const CustomFilterChip({
    super.key,
    required this.text,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(right: 10.w),
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
        decoration: BoxDecoration(
          color: isSelected
              ? context.customAppColors.primary700
              : context.customAppColors.grey200,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Text(
          text,
          style: AppTextStyles.font12SemiBold.copyWith(
            color: isSelected
                ? context.customAppColors.white
                : context.customAppColors.grey700,
          ),
        ),
      ),
    );
  }
}
