import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/features/donation_details/data/models/donation_details/donation_details_data.dart';
import 'package:qoot/generated/l10n.dart';

import '../../../../core/helpers/extensions.dart';
import '../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../core/theme/theme_manager/theme_extensions.dart';

class CustomRestaurantImpactCard extends StatelessWidget {
  const CustomRestaurantImpactCard({
    super.key,
    required this.donationDetailsData,
  });
  final DonationDetailsData donationDetailsData;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 120.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: context.customAppColors.grey100),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      S.of(context).restaurantImpact,
                      style: AppTextStyles.font16SemiBold.copyWith(
                        color: context.customAppColors.grey900,
                      ),
                    ),
                    4.h.ph,
                    Text(
                      '${S.of(context).totaldonationsfrom} ${donationDetailsData.restaurantLongitude}',
                      style: AppTextStyles.font14Regular.copyWith(
                        color: context.customAppColors.grey500,
                      ),
                    ),
                  ],
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '${donationDetailsData.reservationCount}',
                      style: AppTextStyles.font20Bold.copyWith(
                        color: context.customAppColors.primary700,
                      ),
                    ),
                    Text(
                      S.of(context).mealsDonated,
                      style: AppTextStyles.font12Regular.copyWith(
                        color: context.customAppColors.grey500,
                      ),
                    ),
                  ],
                ),
              ],
            ),

            12.h.ph,
            ClipRRect(
              borderRadius: BorderRadius.circular(6.r),
              child: LinearProgressIndicator(
                value: 0.7,
                minHeight: 8.h,
                color: context.customAppColors.primary700,
                backgroundColor: context.customAppColors.grey100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
