import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/theme/app_texts/app_text_styles.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';

class StatCard extends StatelessWidget {
  final String title;
  final String value;
  final Color valueColor;
  final IconData icon;
  final Color iconColor;

  const StatCard({
    super.key,
    required this.title,
    required this.value,
    required this.valueColor,
    required this.icon,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 147.w,
      height: 120.h,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(color: context.customAppColors.grey100),
        ),
        child: ListTile(
          contentPadding: EdgeInsets.symmetric(
            horizontal: 12.w,
            vertical: 12.h,
          ),
          title: Text(
            title,
            style: AppTextStyles.font14Regular.copyWith(
              color: context.customAppColors.grey900,
            ),
          ),
          subtitle: Text(
            value,
            style: AppTextStyles.font24Bold.copyWith(color: valueColor),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          trailing: CircleAvatar(
            radius: 20.r,
            backgroundColor: iconColor.withValues(alpha: .1),
            child: Icon(icon, color: iconColor, size: 20.sp),
          ),
        ),
      ),
    );
  }
}
