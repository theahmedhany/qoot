import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/features/donation_details/data/models/donation_details/donation_details_data.dart';
import 'package:qoot/generated/l10n.dart';

import '../../../../core/helpers/extensions.dart';
import '../../../../core/theme/theme_manager/theme_extensions.dart';
import '../../../../core/utils/app_icons.dart';
import 'custom_description_tile.dart';

class CustomPickupAndInstructionsCard extends StatelessWidget {
  const CustomPickupAndInstructionsCard({
    super.key,
    required this.donationDetailsData,
  });
  final DonationDetailsData donationDetailsData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomDescriptionTile(
          color: context.customAppColors.primary700.withValues(alpha: .1),
          iconPath: AppIcons.truckIcon,
          title: S.of(context).requiresPickup,
          description: (donationDetailsData.requiresPickup ?? false)
              ? S.of(context).yesPickupRequired
              : S.of(context).noPickupRequired,
        ),
        12.h.ph,
        CustomDescriptionTile(
          color: const Color(0xffFBBF24).withValues(alpha: .1),
          iconPath: AppIcons.infoIcon,
          title: S.of(context).specialInstructions,
          description: donationDetailsData.specialInstructions ?? '',
        ),
      ],
    );
  }
}
