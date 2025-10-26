import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/extensions.dart';
import '../../../../core/theme/theme_manager/theme_extensions.dart';
import '../../../../core/utils/app_icons.dart';
import 'custom_description_tile.dart';

class CustomPickupAndInstructionsCard extends StatelessWidget {
  const CustomPickupAndInstructionsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomDescriptionTile(
          color: context.customAppColors.primary700.withValues(alpha: .1),
          iconPath: AppIcons.truckIcon,
          title: 'Requires Pickup',
          description: 'Collection needed from restaurant',
        ),
        12.h.ph,
        CustomDescriptionTile(
          color: const Color(0xffFBBF24).withValues(alpha: .1),
          iconPath: AppIcons.infoIcon,
          title: 'Special Instructions',
          description:
              'Please bring your own containers. Food is kept in warming trays until pickup.',
        ),
      ],
    );
  }
}
