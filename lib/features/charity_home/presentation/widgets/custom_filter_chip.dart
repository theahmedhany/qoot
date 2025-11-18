import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/theme/app_colors/custom_app_colors.dart';
import 'package:qoot/core/theme/app_texts/app_text_styles.dart';

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
    final colors = CustomAppColors.of(context);

    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(right: 10.w),
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
        decoration: BoxDecoration(
          color: isSelected ? colors.primary700 : colors.grey200,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Text(
          text,
          style: AppTextStyles.font12SemiBold.copyWith(
            color: isSelected ? colors.white : colors.grey700,
          ),
        ),
      ),
    );
  }
}
