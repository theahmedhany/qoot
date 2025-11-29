import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/extensions.dart';
import '../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../core/theme/theme_manager/theme_extensions.dart';
import 'recent_activity_item.dart';

class RecentActivitySection extends StatelessWidget {
  const RecentActivitySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: context.customAppColors.grey100),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 16.h, top: 16.h),
            child: Text(
              "النشاط الأخير",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: AppTextStyles.font18SemiBold.copyWith(
                color: context.customAppColors.grey900,
              ),
            ),
          ),
          16.h.ph,
          RecentActivityItem(
            name: "مطعم الأمل",
            description: "دجاج وأرز • 50 وجبة",
            date: "5 أكتوبر • تم الاستلام",
            statusIcon: Icons.check,
            statusColor: context.customAppColors.primary700,
          ),

          RecentActivityItem(
            name: "مطعم نور",
            description: "بيتزا • 20 وجبة",
            date: "4 أكتوبر • تم الاستلام",
            statusIcon: Icons.access_time_filled_outlined,
            statusColor: context.customAppColors.info700,
          ),

          RecentActivityItem(
            name: "مطعم باراكن",
            description: "خضروات مشكلة • 30 وجبة",
            date: "4 أكتوبر • تم الاستلام",
            statusIcon: Icons.check,
            statusColor: context.customAppColors.primary700,
          ),
        ],
      ),
    );
  }
}
