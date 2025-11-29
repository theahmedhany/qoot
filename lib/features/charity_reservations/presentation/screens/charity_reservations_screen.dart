import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/helpers/extensions.dart';
import '../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../core/theme/theme_manager/theme_extensions.dart';
import '../../../../core/utils/app_icons.dart';
import '../../../../generated/l10n.dart';
import '../widgets/custom_reservations_tap_bar.dart';

class CharityReservationsScreen extends StatelessWidget {
  const CharityReservationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: SafeArea(
        child: Column(
          children: [
            16.h.ph,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  S.of(context).charityReservationsTitle,
                  style: AppTextStyles.font20Bold.copyWith(
                    color: context.customAppColors.grey900,
                  ),
                ),
                SvgPicture.asset(AppIcons.iconsNotificationOutline),
              ],
            ),
            16.h.ph,
            const Expanded(child: ReservationTabsWithList()),
            13.h.ph,
          ],
        ),
      ),
    );
  }
}
