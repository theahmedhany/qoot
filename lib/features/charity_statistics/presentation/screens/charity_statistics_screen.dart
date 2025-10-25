import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/common/widgets/custom_app_bar.dart';
import 'package:qoot/core/helpers/extensions.dart';
import 'package:qoot/features/charity_statistics/presentation/widgets/food_categories_chart.dart';
import 'package:qoot/features/charity_statistics/presentation/widgets/monthly_donations_trend_chart.dart';
import 'package:qoot/features/charity_statistics/presentation/widgets/recent_activity_section.dart';
import 'package:qoot/features/charity_statistics/presentation/widgets/stats_section.dart';
import 'package:qoot/features/charity_statistics/presentation/widgets/top_partners_section.dart';
import 'package:qoot/generated/l10n.dart';

class CharityStatisticsScreen extends StatelessWidget {
  const CharityStatisticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.h),
          child: Column(
            children: [
              CustomAppBar(text: S.of(context).charityStatistics),
              14.h.ph,
              StatsSection(),
              18.h.ph,
              MonthlyDonationsChart(),
              18.h.ph,
              FoodCategoriesChart(),
              18.h.ph,
              RecentActivitySection(),
              18.h.ph,
              TopPartnersSection(),
              18.h.ph,
            ],
          ),
        ),
      ),
    );
  }
}
