import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/common/widgets/custom_header_container.dart';
import '../../../../core/helpers/extensions.dart';
import '../../../../core/utils/app_images.dart';
import '../../../../generated/l10n.dart';
import '../widgets/charity_stats_section.dart';
import '../widgets/donation_flow_Card.dart';
import '../widgets/food_safety_tips_card.dart';
import '../widgets/urgent_donations_section.dart';

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
                const DonationFlowCard(),
                21.h.ph,
                const CharityStatsSection(),
                21.h.ph,
                const UrgentDonationsSection(),
                21.h.ph,
                const FoodSafetyTipsCard(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
