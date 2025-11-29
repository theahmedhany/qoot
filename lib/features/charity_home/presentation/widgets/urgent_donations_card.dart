import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/common/widgets/api_image.dart';
import 'package:qoot/core/helpers/format_date.dart';
import 'package:qoot/core/routing/routes.dart';
import 'package:qoot/core/utils/dummy_food.dart';
import 'package:qoot/features/charity_donations/data/models/available_donation/donation_item.dart';

import '../../../../core/common/widgets/custom_build_tag.dart';
import '../../../../core/common/widgets/custom_button.dart';
import '../../../../core/helpers/extensions.dart';
import '../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../core/theme/theme_manager/theme_extensions.dart';
import '../../../../generated/l10n.dart';

class UrgentDonationsCard extends StatelessWidget {
  const UrgentDonationsCard({
    super.key,
    required this.donationItem,
  });

  final DonationItem donationItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: context.customAppColors.grey100),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 14.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ApiImage(
                  imageUrl:
                      (donationItem.images != null &&
                          donationItem.images!.isNotEmpty)
                      ? donationItem.images!.first.imagePath
                      : DummyFood.getRandom(),
                  width: 80.r,
                  height: 80.r,
                  borderRadius: 12.r,
                ),

                12.w.pw,

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        donationItem.restaurantName ?? "",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyles.font16SemiBold.copyWith(
                          color: context.customAppColors.grey900,
                        ),
                      ),

                      6.h.ph,

                      Row(
                        children: [
                          Flexible(
                            child: Text(
                              donationItem.foodType ?? "",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: AppTextStyles.font14Regular.copyWith(
                                color: context.customAppColors.accent600,
                              ),
                            ),
                          ),
                          10.w.pw,
                          Flexible(
                            child: CustomBuildTag(
                              text:
                                  '~${donationItem.reservationCount} ${S.of(context).items}',
                              textColor: context.customAppColors.warning500,
                              backgroundColor: context
                                  .customAppColors
                                  .warning500
                                  .withValues(alpha: .15),
                            ),
                          ),
                        ],
                      ),

                      8.h.ph,

                      CustomBuildTag(
                        text:
                            '${S.of(context).expires}: ${formatDate(donationItem.expiryDateTime)}',
                        textColor: context.customAppColors.error500,
                        backgroundColor: context.customAppColors.error500
                            .withValues(alpha: .15),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            16.h.ph,

            CustomButton(
              text: S.of(context).reserveNow,
              height: 44.h,
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
    );
  }
}
