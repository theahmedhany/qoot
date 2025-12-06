import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';

import '../../../../core/common/widgets/custom_app_bar.dart';
import '../../../../core/helpers/extensions.dart';
import '../../../../generated/l10n.dart';
import '../widgets/food_categories_chart.dart';
import '../widgets/monthly_donations_trend_chart.dart';
import '../widgets/recent_activity_section.dart';
import '../widgets/stats_section.dart';
import '../widgets/top_partners_section.dart';

class CharityStatisticsScreen extends StatelessWidget {
  const CharityStatisticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.customAppColors.background,
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: Column(
              children: [
                CustomAppBar(text: S.of(context).charityStatistics),
                14.h.ph,
                const StatsSection(),
                18.h.ph,
                const MonthlyDonationsChart(),
                18.h.ph,
                const FoodCategoriesChart(),
                18.h.ph,
                const RecentActivitySection(),
                18.h.ph,
                const TopPartnersSection(),
                32.h.ph,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
