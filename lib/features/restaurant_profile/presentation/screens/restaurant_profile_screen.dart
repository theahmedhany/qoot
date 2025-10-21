import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/common/widgets/custom_profile_list_tile.dart';
import 'package:qoot/core/helpers/extensions.dart';
import 'package:qoot/core/utils/app_icons.dart';
import 'package:qoot/features/restaurant_profile/presentation/widgets/custom_restaurant_profile_header.dart';
import 'package:qoot/generated/l10n.dart';

class RestaurantProfileScreen extends StatelessWidget {
  const RestaurantProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      {
        'icon': AppIcons.iconsCharityOutline,
        'title': S.of(context).allRestaurantInformation,
        'onTap': () {},
      },
      {
        'icon': AppIcons.statisticsIcon,
        'isNew': true,
        'title': S.of(context).regularDonation,
        'subTitle': S.of(context).forDonationEveryDayWithoutForget,
        'onTap': () {},
      },
      {
        'icon': AppIcons.iconsNotificationOutline,
        'title': S.of(context).donationReminder,
        'onTap': () {},
        'isSwitcher': true,
      },
      {
        'icon': AppIcons.iconsNotificationOutline,
        'title': S.of(context).turnOnNotification,
        'onTap': () {},
      },
      {
        'icon': AppIcons.iconsSettings,
        'title': S.of(context).Settings,
        'onTap': () {},
      },
      {
        'icon': AppIcons.iconsFaq,
        'title': S.of(context).FAQChatcentre,
        'onTap': () {},
      },
      {
        'icon': AppIcons.iconsRate,
        'title': S.of(context).givetheRating,
        'onTap': () {},
      },
      {
        'icon': AppIcons.iconsTermsConditions,
        'title': S.of(context).termsAndCondition,
        'onTap': () {},
      },
      {
        'icon': AppIcons.iconsAbout,
        'title': S.of(context).aboutQootteam,
        'onTap': () {},
      },
      {
        'icon': AppIcons.iconsExit,
        'title': S.of(context).exittheapp,
        'onTap': () {},
      },
    ];

    return Padding(
      padding: EdgeInsets.all(16.h),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            40.h.ph,
            const CustomRestaurantProfileHeader(),
            12.h.ph,
            ...items.map((item) {
              return Padding(
                padding: EdgeInsets.only(bottom: 12.h),
                child: CustomProfileListTile(
                  iconUrl: item['icon'] as String,
                  title: item['title'] as String,
                  subTitle: item['subTitle'] as String?,
                  onPressed: item['onTap'] as VoidCallback,
                  isSwitcher: item['isSwitcher'] as bool? ?? false,
                  isNew: item['isNew'] as bool? ?? false,
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
