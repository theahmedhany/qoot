import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qoot/core/common/widgets/api_image.dart';
import 'package:qoot/core/constants/api_constants.dart';
import 'package:qoot/core/helpers/format_date.dart';
import 'package:qoot/core/helpers/spacing.dart';
import 'package:qoot/core/routing/routes.dart';
import 'package:qoot/features/charity_donations/data/models/available_donation/available_donations_response.dart';

import '../../../../core/common/widgets/custom_build_tag.dart';
import '../../../../core/common/widgets/custom_button.dart';
import '../../../../core/helpers/extensions.dart';
import '../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../core/theme/theme_manager/theme_extensions.dart';
import '../../../../core/utils/app_icons.dart';
import '../../../../generated/l10n.dart';

class CustomAvailableDonationsCard extends StatelessWidget {
  const CustomAvailableDonationsCard({super.key, required this.donationItem});
  final DonationItem donationItem;

  @override
  Widget build(BuildContext context) {
    final imageUrl = (donationItem.images.isNotEmpty)
        ? '${ApiConstants.imageBaseUrl}${donationItem.images.first.imagePath}'
        : null;

    return Container(
      height: 160.h,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: context.customAppColors.grey100),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12.r),
            child: ApiImage(
              imageUrl: imageUrl,
              width: 110.w,
              height: double.infinity,
              borderRadius: 0,
            ),
          ),

          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          donationItem.restaurantName,
                          style: AppTextStyles.font14SemiBold.copyWith(
                            color: context.customAppColors.grey900,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      horizontalSpace(6),
                      CustomBuildTag(
                        text: donationItem.statusDisplayName,
                        textColor: context.customAppColors.primary700,
                        backgroundColor: context.customAppColors.primary700
                            .withValues(alpha: .2),
                      ),
                    ],
                  ),

                  Row(
                    children: [
                      Flexible(
                        child: Text(
                          donationItem.foodType,
                          style: AppTextStyles.font12Regular.copyWith(
                            color: context.customAppColors.accent600,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),

                  Row(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              AppIcons.peopleFilldIcon,
                              width: 16.w,
                              height: 16.h,
                            ),
                            horizontalSpace(4),
                            Flexible(
                              child: Text(
                                '${donationItem.reservationCount} ${S.of(context).servings}',
                                style: AppTextStyles.font12Regular.copyWith(
                                  color: context.customAppColors.accent600,
                                ),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),
                            ),
                          ],
                        ),
                      ),

                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SvgPicture.asset(
                              AppIcons.clockIcon,
                              width: 16.w,
                              height: 16.h,
                            ),
                            horizontalSpace(4),
                            Flexible(
                              child: Text(
                                'تنتهي: ${formatExpiryDate(donationItem.expiryDateTime)}',
                                style: AppTextStyles.font12Regular.copyWith(
                                  color: context.customAppColors.error500,
                                ),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  CustomButton(
                    text: S.of(context).reserveNow,
                    height: 38.h,
                    onTap: () {
                      context.pushNamed(
                        Routes.donationDetails,
                        arguments: donationItem.id.toString(),
                      );
                    },
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
