import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:qoot/core/middlewares/cubit/auth_middleware_cubit.dart';
import 'package:qoot/core/routing/routes.dart';

import '../../../../core/common/widgets/custom_profile_list_tile.dart';
import '../../../../core/helpers/extensions.dart';
import '../../../../core/utils/app_icons.dart';
import '../../../../generated/l10n.dart';
import '../widgets/custom_restaurant_profile_header.dart';

class RestaurantProfileScreen extends StatelessWidget {
  const RestaurantProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      {
        'icon': AppIcons.iconsCharityOutline,
        'title': S.of(context).allRestaurantInformation,
        'onTap': () {
          context.pushNamed(Routes.restaurantProfileInfoScreen);
        },
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
        'onTap': () async {
          await context.read<AuthMiddlewareCubit>().logout();
        },
      },
    ];

    return SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
              12.h.ph,
            ],
          ),
        ),
      ),
    );
  }
}
