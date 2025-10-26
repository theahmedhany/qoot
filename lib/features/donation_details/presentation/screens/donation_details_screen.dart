import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/common/widgets/custom_app_bar.dart';
import '../../../../core/common/widgets/custom_button.dart';
import '../../../../core/helpers/extensions.dart';
import '../../../../core/utils/app_placeholder.dart';
import '../../../../generated/l10n.dart';
import '../widgets/custom_info_donation.dart';
import '../widgets/custom_restaurant_impact_card.dart';
import '../widgets/custom_restaurant_information_card.dart';

class DonationDetailsScreen extends StatelessWidget {
  const DonationDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                CustomAppBar(text: S.of(context).donationDetails),
                12.h.ph,
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.r),
                  child: Image.asset(
                    AppPlaceholder.placeholderFood3,
                    height: 260.h,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                22.h.ph,
                const CustomInfoDonation(),
                12.h.ph,
                const CustomRestaurantInformationCard(),
                12.h.ph,
                const CustomRestaurantImpactCard(),
                38.h.ph,
                CustomButton(text: S.of(context).reserveNow, height: 52.h),
                32.h.ph,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
