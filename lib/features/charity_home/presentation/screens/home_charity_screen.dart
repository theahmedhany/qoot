import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/constants/api_constants.dart';
import 'package:qoot/core/data/local_data/current_user.dart';
import 'package:qoot/core/di/service_locator.dart';
import 'package:qoot/core/services/storage/charity_local_storage.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';

import '../../../../core/common/widgets/custom_header_container.dart';
import '../../../../core/helpers/extensions.dart';
import '../../../../generated/l10n.dart';
import '../widgets/charity_stats_section.dart';
import '../widgets/donation_flow_Card.dart';
import '../widgets/food_safety_tips_card.dart';
import '../widgets/urgent_donations_section.dart';

class HomeCharityScreen extends StatelessWidget {
  const HomeCharityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final charity = getIt<CharityLocalStorage>();
    final charityData = CurrentUser.charityData;
    final primaryImage = charityData.images.isNotEmpty
        ? charityData.images.firstWhere(
            (img) => img.isPrimary,
            orElse: () => charityData.images.first,
          )
        : null;
    final imageUrl =
        '${ApiConstants.imageBaseUrl}${primaryImage?.imagePath ?? ''}';

    return Scaffold(
      backgroundColor: context.customAppColors.background,
      body: Column(
        children: [
          CustomHeaderContainer(
            imagePath: imageUrl,
            title: S.of(context).charityHomewelcome,
            subtitle:
                charity.charityName ??
                S.of(context).charityHeartsAndHandsCharity,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.h,
                      vertical: 16.h,
                    ),
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
            ),
          ),
        ],
      ),
    );
  }
}
