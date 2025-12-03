import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:qoot/features/charity_reservations/data/models/charity_reservation/charity_reservation_response.dart';

import '../../../../core/common/widgets/custom_build_tag.dart';
import '../../../../core/helpers/extensions.dart';
import '../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../core/theme/theme_manager/theme_extensions.dart';
import '../../../../generated/l10n.dart';

class CustomConfirmPickupInfoCard extends StatelessWidget {
  const CustomConfirmPickupInfoCard({
    super.key,
    required this.charityReservationItem,
  });

  final CharityReservationItem charityReservationItem;

  Widget buildCustomRow(
    String text1,
    String text2,
    BuildContext context, {
    bool isLast = false,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 2,
          child: Text(
            text1,
            style: AppTextStyles.font14Regular.copyWith(
              color: context.customAppColors.accent600,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        SizedBox(width: 8.w),
        Expanded(
          flex: 3,
          child: Text(
            text2,
            style: AppTextStyles.font14Regular.copyWith(
              color: isLast
                  ? context.customAppColors.error700
                  : context.customAppColors.grey900,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.end,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }

  String formatArabicDateTime(String dateTimeStr) {
    DateTime dateTime = DateTime.parse(dateTimeStr);

    const arabicMonths = [
      'يناير',
      'فبراير',
      'مارس',
      'أبريل',
      'مايو',
      'يونيو',
      'يوليو',
      'أغسطس',
      'سبتمبر',
      'أكتوبر',
      'نوفمبر',
      'ديسمبر',
    ];

    int day = dateTime.day;
    String month = arabicMonths[dateTime.month - 1];

    String hourStr = DateFormat('hh:mm a', 'en_US').format(dateTime);
    hourStr = hourStr.replaceAll('AM', 'صباحاً').replaceAll('PM', 'مساءً');

    return '$day $month • $hourStr';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: context.customAppColors.grey100),
      ),
      child: Padding(
        padding: EdgeInsets.all(12.h),
        child: Column(
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                charityReservationItem.restaurantName,
                style: AppTextStyles.font18SemiBold.copyWith(
                  color: context.customAppColors.grey900,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: Text(
                S.of(context).foodDonationPickup,
                style: AppTextStyles.font14Regular.copyWith(
                  color: context.customAppColors.grey700,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              trailing: CustomBuildTag(
                text: S.of(context).reserveNow,
                textColor: context.customAppColors.info900,
                backgroundColor: context.customAppColors.info900.withValues(
                  alpha: .15,
                ),
              ),
            ),
            16.h.ph,
            buildCustomRow(
              S.of(context).foodType,
              charityReservationItem.donationFoodType,
              context,
            ),
            6.h.ph,
            buildCustomRow(
              S.of(context).servings,
              charityReservationItem.pickupPersonName ?? '',
              context,
            ),
            6.h.ph,
            buildCustomRow(
              S.of(context).expiryDate,
              formatArabicDateTime(charityReservationItem.reservationTime),
              context,
              isLast: true,
            ),
          ],
        ),
      ),
    );
  }
}
