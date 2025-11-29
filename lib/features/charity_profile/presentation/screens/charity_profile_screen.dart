import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/common/widgets/custom_profile_list_tile.dart';
import '../../../../core/helpers/extensions.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/utils/app_icons.dart';
import '../../../../generated/l10n.dart';
import '../widgets/custom_charity_profile_header.dart';

class CharityProfileScreen extends StatelessWidget {
  const CharityProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      {
        'icon': AppIcons.iconsCharityOutline,
        'title': S.of(context).allcharityinformation,
        'onTap': () {
          context.pushNamed(Routes.charityInfoScreen);
        },
      },
      {
        'icon': AppIcons.statisticsIcon,
        'title': S.of(context).charityStatistics,
        'onTap': () {},
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

    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomCharityProfileHeader(),
            12.h.ph,
            ...items.map((item) {
              return Padding(
                padding: EdgeInsets.only(bottom: 12.h),
                child: CustomProfileListTile(
                  iconUrl: item['icon'] as String,
                  title: item['title'] as String,
                  onPressed: item['onTap'] as VoidCallback,
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
