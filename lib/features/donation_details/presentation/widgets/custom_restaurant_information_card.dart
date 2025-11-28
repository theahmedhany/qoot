import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/features/donation_details/data/models/donation_details/donation_details_data.dart';

import '../../../../core/helpers/extensions.dart';
import '../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../core/theme/theme_manager/theme_extensions.dart';
import '../../../../core/utils/app_icons.dart';
import '../../../../generated/l10n.dart';
import 'custom_location_card.dart';
import 'custom_restaurant_information_list_tile.dart';

class CustomRestaurantInformationCard extends StatelessWidget {
  const CustomRestaurantInformationCard({
    super.key,
    required this.donationDetailsData,
  });
  final DonationDetailsData donationDetailsData;
  @override
  Widget build(BuildContext context) {
    final infoItems = [
      {
        'imageUrl': AppIcons.resturantIcon,
        'title': donationDetailsData.restaurantName,
        'subTitle': donationDetailsData.restaurantAddress,
        'bgColor': context.customAppColors.primary700.withValues(alpha: .1),
      },
      {
        'imageUrl': AppIcons.peopleFilldIconGrey,
        'title': donationDetailsData.contactPerson,
        'subTitle': S.of(context).contactPerson,
      },
      {
        'imageUrl': AppIcons.phoneIcon,
        'title': donationDetailsData.contactPhone,
        'subTitle': S.of(context).taptocall,
      },
    ];

    return Container(
      width: double.infinity,
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
            CustomLocationCard(
              donationDetailsData: donationDetailsData,
            ),
          ],
        ),
      ),
    );
  }
}
