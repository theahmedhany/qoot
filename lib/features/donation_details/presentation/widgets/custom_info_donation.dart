import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/features/donation_details/data/models/donation_details/donation_details_data.dart';
import '../../../../core/helpers/extensions.dart';
import '../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../core/theme/theme_manager/theme_extensions.dart';
import 'custom_pickup_and_instructions_card.dart';
import 'custom_servings_and_expires_card.dart';

class CustomInfoDonation extends StatelessWidget {
  const CustomInfoDonation({super.key, required this.donationDetailsData});
  final DonationDetailsData donationDetailsData;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 450.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: context.customAppColors.grey100),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 12.w),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  donationDetailsData.foodType ?? '',
                  style: AppTextStyles.font20Bold.copyWith(
                    color: context.customAppColors.grey900,
                  ),
                ),
                const Spacer(),
                Icon(
                  Icons.access_alarm,
                  color: const Color(0xffFBBF24),
                  size: 16.sp,
                ),
                8.w.pw,
                Text(
                  donationDetailsData.createdAt ?? '',
                  style: AppTextStyles.font14SemiBold.copyWith(
                    color: const Color(0xffFBBF24),
                  ),
                ),
              ],
            ),
            12.h.ph,
            Text(
              donationDetailsData.description ?? "",
              style: AppTextStyles.font12Regular.copyWith(
                color: context.customAppColors.accent600,
              ),
            ),
            12.h.ph,
            const CustomServingsAndExpiresCard(),
            11.h.ph,
            CustomPickupAndInstructionsCard(
              donationDetailsData: donationDetailsData,
            ),
          ],
        ),
      ),
    );
  }
}
