import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/common/widgets/custom_header_container.dart';
import 'package:qoot/core/helpers/extensions.dart';
import 'package:qoot/core/utils/app_images.dart';
import 'package:qoot/features/charity_home/presentation/widgets/charity_stats_section.dart';
import 'package:qoot/features/charity_home/presentation/widgets/donation_flow_Card.dart';
import 'package:qoot/features/charity_home/presentation/widgets/food_safety_tips_card.dart';
import 'package:qoot/features/charity_home/presentation/widgets/urgent_donations_section.dart';
import 'package:qoot/generated/l10n.dart';

class HomeCharityScreen extends StatelessWidget {
  const HomeCharityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomHeaderContainer(
            imagePath: AppImages.imagesOnboarding3,
            title: S.of(context).charityHomewelcome,
            subtitle: S.of(context).charityHeartsAndHandsCharity,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 16.h),
            child: Column(
              children: [
                DonationFlowCard(),
                21.h.ph,
                CharityStatsSection(),
                21.h.ph,
                UrgentDonationsSection(),
                21.h.ph,
                FoodSafetyTipsCard(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
