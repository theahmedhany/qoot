import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/helpers/extensions.dart';
import 'package:qoot/core/theme/app_colors/custom_app_colors.dart';
import 'package:qoot/core/theme/app_texts/app_text_styles.dart';

class TipsCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;

  const TipsCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final colors = CustomAppColors.of(context);

    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        gradient: LinearGradient(
          colors: colors.greenYellowGradient,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        boxShadow: [
          BoxShadow(
            color: colors.grey300.withValues(alpha: .4),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            height: 40.w,
            width: 40.w,
            decoration: BoxDecoration(
              color: colors.white.withValues(alpha: 0.35),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: colors.primary700, size: 20.sp),
          ),
          14.w.pw,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppTextStyles.font14SemiBold.copyWith(
                    color: colors.primary900,
                  ),
                ),
                4.h.ph,
                Text(
                  subtitle,
                  style: AppTextStyles.font12Regular.copyWith(
                    color: colors.grey700,
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
