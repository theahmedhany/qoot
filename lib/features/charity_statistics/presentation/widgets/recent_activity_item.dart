import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/helpers/extensions.dart';
import '../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../core/theme/theme_manager/theme_extensions.dart';

class RecentActivityItem extends StatelessWidget {
  final String name;
  final String description;
  final String date;
  final IconData statusIcon;
  final Color statusColor;

  const RecentActivityItem({
    super.key,
    required this.name,
    required this.description,
    required this.date,
    required this.statusIcon,
    required this.statusColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: context.customAppColors.grey200, width: .5),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.h),
        child: Row(
          children: [
            CircleAvatar(
              radius: 20.r,
              backgroundColor: statusColor.withValues(alpha: .15),
              child: Icon(
                statusIcon,
                color: statusColor,
                size: 18.sp,
              ),
            ),
            10.w.pw,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyles.font16SemiBold.copyWith(
                      color: context.customAppColors.grey900,
                    ),
                  ),
                  2.h.ph,
                  Text(
                    description,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyles.font14Regular.copyWith(
                      color: context.customAppColors.accent600,
                    ),
                  ),
                  2.h.ph,
                  Text(
                    date,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyles.font12Regular.copyWith(
                      color: context.customAppColors.accent600,
                    ),
                  ),
                ],
              ),
            ),
            10.w.pw,
            Icon(
              statusIcon == Icons.check ? Icons.check_circle : statusIcon,
              color: statusColor,
              size: 18.sp,
            ),
          ],
        ),
      ),
    );
  }
}
