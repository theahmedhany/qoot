import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/helpers/format_date.dart';
import 'package:qoot/features/donation_details/data/models/donation_details/donation_details_data.dart';
import 'package:qoot/generated/l10n.dart';

import '../../../../core/helpers/extensions.dart';
import '../../../../core/utils/app_icons.dart';
import 'custom_info_box.dart';

class CustomServingsAndExpiresCard extends StatelessWidget {
  const CustomServingsAndExpiresCard({
    super.key,
    required this.donationDetailsData,
  });
  final DonationDetailsData donationDetailsData;
  @override
  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: [
          Expanded(
            child: CustomInfoBox(
              iconPath: AppIcons.servingsIcon,
              title: S.of(context).servings,
              value:
                  '${donationDetailsData.estimatedServings} ${S.of(context).meals}',
            ),
          ),
          15.w.pw,
          Expanded(
            child: CustomInfoBox(
              iconPath: AppIcons.calendarIcon,
              title: S.of(context).expires,
              value: formatRelativeDate(
                donationDetailsData.expiryDateTime,
                context,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
