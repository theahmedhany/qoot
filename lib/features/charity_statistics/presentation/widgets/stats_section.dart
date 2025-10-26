import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theme/theme_manager/theme_extensions.dart';

import 'stat_card.dart';

class StatsSection extends StatelessWidget {
  const StatsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: context.customAppColors.grey100),
      ),
      padding: const EdgeInsets.all(12),
      child: Wrap(
        spacing: 12.h,
        runSpacing: 12.h,
        children: [
          StatCard(
            title: "Total Donations",
            value: "120",
            valueColor: context.customAppColors.primary700,
            icon: Icons.volunteer_activism,
            iconColor: context.customAppColors.primary700,
          ),
          StatCard(
            title: "Total Meals",
            value: "3,500",
            valueColor: context.customAppColors.accent700,
            icon: Icons.restaurant,
            iconColor: context.customAppColors.accent700,
          ),
          StatCard(
            title: "Active",
            value: "5",
            valueColor: context.customAppColors.info700,
            icon: Icons.access_time_filled_outlined,
            iconColor: context.customAppColors.info700,
          ),
          StatCard(
            title: "Expired",
            value: "2",
            valueColor: context.customAppColors.error500,
            icon: Icons.warning_rounded,
            iconColor: context.customAppColors.error500,
          ),
        ],
      ),
    );
  }
}
