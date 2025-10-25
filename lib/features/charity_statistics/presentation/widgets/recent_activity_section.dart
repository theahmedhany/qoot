import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/helpers/extensions.dart';
import 'package:qoot/core/theme/app_texts/app_text_styles.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';
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
            padding: EdgeInsets.only(left: 16.h, top: 16.h),
            child: Text(
              "Recent Activity",
              style: AppTextStyles.font18SemiBold.copyWith(
                color: context.customAppColors.grey900,
              ),
            ),
          ),
          16.h.ph,
          RecentActivityItem(
            name: "Al-Amal Restaurant",
            description: "Chicken & Rice • 50 meals",
            date: "Oct 5 • Received",
            statusIcon: Icons.check,
            statusColor: context.customAppColors.primary700,
          ),

          RecentActivityItem(
            name: "Nour Restaurant",
            description: "Pizza • 20 meals",
            date: "Oct 4 • Received",
            statusIcon: Icons.access_time_filled_outlined,
            statusColor: context.customAppColors.info700,
          ),

          RecentActivityItem(
            name: "Barakah Kitchen",
            description: "Mixed Vegetables • 30 meals",
            date: "Oct 3 • Received",
            statusIcon: Icons.check,
            statusColor: context.customAppColors.primary700,
          ),
        ],
      ),
    );
  }
}
