import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/extensions.dart';
import '../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../core/theme/theme_manager/theme_extensions.dart';
import '../../../../core/utils/app_icons.dart';
import '../../../../generated/l10n.dart';
import 'custom_location_card.dart';
import 'custom_restaurant_information_list_tile.dart';

class CustomRestaurantInformationCard extends StatelessWidget {
  const CustomRestaurantInformationCard({super.key});

  @override
  Widget build(BuildContext context) {
    final infoItems = [
      {
        'imageUrl': AppIcons.resturantIcon,
        'title': 'Al-Amal Restaurant',
        'subTitle': 'Traditional Middle Eastern Cuisine',
        'bgColor': context.customAppColors.primary700.withValues(alpha: .1),
      },
      {
        'imageUrl': AppIcons.peopleFilldIconGrey,
        'title': 'Ahmed Ahmed',
        'subTitle': 'Contact Person.',
      },
      {
        'imageUrl': AppIcons.phoneIcon,
        'title': '+20 111 222 333',
        'subTitle': 'Tap to call.',
      },
    ];

    return Container(
      width: double.infinity,
      height: 530.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: context.customAppColors.grey100),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 12.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              S.of(context).donationDetailsRestaurantInformation,
              style: AppTextStyles.font20Bold.copyWith(
                color: context.customAppColors.grey900,
              ),
            ),
            11.h.ph,
            ...infoItems.map(
              (item) => CustomRestaurantInformationListTile(
                imageUrl: item['imageUrl'] as String,
                title: item['title'] as String,
                subTitle: item['subTitle'] as String,
                bgColor: item['bgColor'] as Color?,
              ),
            ),
            20.h.ph,
            const CustomLocationCard(),
          ],
        ),
      ),
    );
  }
}
