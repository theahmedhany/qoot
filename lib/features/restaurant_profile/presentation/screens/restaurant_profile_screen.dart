import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:qoot/core/common/widgets/about_team_bottom_sheet.dart';
import 'package:qoot/core/common/widgets/snackbar_helper.dart';
import 'package:qoot/core/common/widgets/theme_bottom_sheet.dart';
import 'package:qoot/core/helpers/shared_pref_helper.dart';
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
        'onTap': () {
          SnackbarHelper.showSuccessSnackbar(
            context,
            'التبرع الدوري قيد التطوير',
          );
        },
      },
      {
        'icon': AppIcons.iconsNotificationOutline,
        'title': S.of(context).donationReminder,
        'onTap': () {},
        'isSwitcher': true,
      },
      {
        'icon': AppIcons.themeIcon,
        'title': S.of(context).theme,
        'onTap': () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            backgroundColor: Colors.transparent,
            builder: (context) => const ThemeBottomSheet(),
          );
        },
      },
      {
        'icon': AppIcons.iconsFaq,
        'title': S.of(context).FAQChatcentre,
        'onTap': () {
          context.pushNamed(Routes.popularQuestionsScreen);
        },
      },
      {
        'icon': AppIcons.iconsRate,
        'title': S.of(context).givetheRating,
        'onTap': () {
          SnackbarHelper.showSuccessSnackbar(context, 'التقييم قيد التطوير');
        },
      },
      {
        'icon': AppIcons.iconsTermsConditions,
        'title': S.of(context).termsAndCondition,
        'onTap': () {
          context.pushNamed(Routes.termsAndConditionScreen);
        },
      },
      {
        'icon': AppIcons.iconsAbout,
        'title': S.of(context).aboutQootteam,
        'onTap': () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            backgroundColor: Colors.transparent,
            builder: (context) => const AboutTeamBottomSheet(),
          );
        },
      },
      {
        'icon': AppIcons.iconsExit,
        'title': S.of(context).exittheapp,
        'onTap': () async {
          SharedPrefHelper.clearAllData();
          SharedPrefHelper.clearAllSecuredData();

          context.pushNamedAndRemoveUntil(
            Routes.onboardingScreen,
            predicate: (route) => false,
          );

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
