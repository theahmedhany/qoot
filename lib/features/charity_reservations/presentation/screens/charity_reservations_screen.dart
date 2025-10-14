import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:qoot/core/helpers/extensions.dart';
import 'package:qoot/core/theme/app_texts/app_text_styles.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';
import 'package:qoot/core/utils/app_icons.dart';
import 'package:qoot/features/charity_reservations/presentation/widgets/custom_reservations_tap_bar.dart';
import 'package:qoot/generated/l10n.dart';

class CharityReservationsScreen extends StatelessWidget {
  const CharityReservationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.h),
      child: Column(
        children: [
          48.h.ph,
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
          Expanded(child: ReservationTabsWithList()),
          13.h.ph,
        ],
      ),
    );
  }
}
