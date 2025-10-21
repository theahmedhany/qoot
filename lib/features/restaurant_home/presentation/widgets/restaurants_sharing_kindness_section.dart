import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/common/widgets/custom_circular_icon.dart';
import 'package:qoot/core/helpers/extensions.dart';
import 'package:qoot/core/theme/app_texts/app_text_styles.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';
import 'package:qoot/core/utils/app_icons.dart';
import 'package:qoot/generated/l10n.dart';

class RestaurantSharingKindnessSection extends StatelessWidget {
  const RestaurantSharingKindnessSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              S.of(context).restaurantSharingKindness,
              style: AppTextStyles.font18SemiBold.copyWith(
                color: context.customAppColors.grey900,
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Text(
                S.of(context).viewAll,
                style: AppTextStyles.font12Regular.copyWith(
                  color: context.customAppColors.primary800,
                ),
              ),
            ),
          ],
        ),
        16.h.ph,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CustomCircularIcon(
                    icon: AppIcons.iconsDonationsHand,
                  ),
                  8.h.ph,
                  Text(
                    S.of(context).donations,
                    style: AppTextStyles.font13Medium.copyWith(
                      color: context.customAppColors.neutral700,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CustomCircularIcon(
                    icon: AppIcons.iconsCharityHand,
                  ),
                  8.h.ph,
                  Text(
                    S.of(context).charity,
                    style: AppTextStyles.font13Medium.copyWith(
                      color: context.customAppColors.neutral700,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CustomCircularIcon(icon: AppIcons.iconsCampaignHand),
                  8.h.ph,
                  Text(
                    S.of(context).campaign,
                    style: AppTextStyles.font13Medium.copyWith(
                      color: context.customAppColors.neutral700,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CustomCircularIcon(icon: AppIcons.iconsMoreItems),
                  8.h.ph,
                  Text(
                    S.of(context).more,
                    style: AppTextStyles.font13Medium.copyWith(
                      color: context.customAppColors.neutral700,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
