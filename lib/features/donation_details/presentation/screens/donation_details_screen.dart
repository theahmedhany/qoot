import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/common/widgets/custom_app_bar.dart';
import 'package:qoot/core/common/widgets/custom_button.dart';
import 'package:qoot/core/helpers/extensions.dart';
import 'package:qoot/core/utils/app_placeholder.dart';
import 'package:qoot/features/donation_details/presentation/widgets/custom_info_donation.dart';
import 'package:qoot/features/donation_details/presentation/widgets/custom_restaurant_impact_card.dart';
import 'package:qoot/features/donation_details/presentation/widgets/custom_restaurant_information_card.dart';
import 'package:qoot/generated/l10n.dart';

class DonationDetailsScreen extends StatelessWidget {
  const DonationDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              14.h.ph,
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
              36.h.ph,
              CustomInfoDonation(),
              12.h.ph,
              CustomRestaurantInformationCard(),
              12.h.ph,
              CustomRestaurantImpactCard(),
              38.h.ph,
              CustomButton(text: S.of(context).reserveNow, height: 52.h),
              20.h.ph,
            ],
          ),
        ),
      ),
    );
  }
}
