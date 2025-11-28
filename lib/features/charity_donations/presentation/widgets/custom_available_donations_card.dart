import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qoot/core/common/widgets/api_image.dart';
import 'package:qoot/core/helpers/format_date.dart';
import 'package:qoot/core/routing/routes.dart';
import 'package:qoot/core/utils/dummy_food.dart';
import '../../../../core/common/widgets/custom_build_tag.dart';
import '../../../../core/common/widgets/custom_button.dart';
import '../../../../core/helpers/extensions.dart';
import '../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../core/theme/theme_manager/theme_extensions.dart';
import '../../../../core/utils/app_icons.dart';
import '../../../../generated/l10n.dart';
import '../../data/models/available_donation/donation_item.dart';

class CustomAvailableDonationsCard extends StatelessWidget {
  const CustomAvailableDonationsCard({super.key, required this.donationItem});
  final DonationItem donationItem;

  @override
  Widget build(BuildContext context) {
    final imageUrl =
        (donationItem.images != null && donationItem.images!.isNotEmpty)
        ? donationItem.images!.first.imagePath
        : DummyFood.getRandom();

    return Container(
      height: 160.h,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: context.customAppColors.grey100),
      ),
      child: Row(
        children: [
          ApiImage(
            imageUrl: imageUrl,
            width: 97.w,
            height: double.infinity,
            borderRadius: 8,
          ),
          3.w.pw,
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.h),
              child: Column(
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(
                      donationItem.restaurantName ?? '',
                      style: AppTextStyles.font14SemiBold.copyWith(
                        color: context.customAppColors.grey900,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    subtitle: Text(
                      ' • ${donationItem.foodType}',
                      style: AppTextStyles.font12Regular.copyWith(
                        color: context.customAppColors.accent600,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    trailing: CustomBuildTag(
                      text: donationItem.statusDisplayName ?? '',
                      textColor: context.customAppColors.primary700,
                      backgroundColor: context.customAppColors.primary700
                          .withValues(alpha: .2),
                    ),
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(AppIcons.peopleFilldIcon),
                      5.w.pw,
                      Text(
                        '${donationItem.reservationCount} ${S.of(context).servings}',
                        style: AppTextStyles.font12Regular.copyWith(
                          color: context.customAppColors.accent600,
                        ),
                      ),
                      const Spacer(),
                      SvgPicture.asset(AppIcons.clockIcon),
                      5.w.pw,
                      Text(
                        '${S.of(context).expires}: ${formatExpiryDate(donationItem.expiryDateTime)}',
                        style: AppTextStyles.font12Regular.copyWith(
                          color: context.customAppColors.error500,
                        ),
                      ),
                    ],
                  ),
                  5.h.ph,
                  CustomButton(
                    text: S.of(context).reserveNow,
                    height: 35.h,
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
