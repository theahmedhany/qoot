import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/theme/app_texts/app_text_styles.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';

class CharityStatCard extends StatelessWidget {
  final LinearGradient gradient;
  final String number;
  final String description;

  const CharityStatCard({
    super.key,
    required this.gradient,
    required this.number,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 107.w,
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: BorderRadius.circular(12.r),
      ),
      padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 12.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            number,
            style: AppTextStyles.font18Bold.copyWith(
              color: context.customAppColors.white,
            ),
          ),
          Text(
            description,
            style: AppTextStyles.font12Regular.copyWith(
              color: context.customAppColors.white,
            ),
          ),
        ],
      ),
    );
  }
}
