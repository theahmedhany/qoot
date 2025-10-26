import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/extensions.dart';
import '../../../../core/utils/app_icons.dart';
import 'custom_info_box.dart';

class CustomServingsAndExpiresCard extends StatelessWidget {
  const CustomServingsAndExpiresCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: CustomInfoBox(
            iconPath: AppIcons.servingsIcon,
            title: 'Servings',
            value: '50 meals',
          ),
        ),
        15.w.pw,
        const Expanded(
          child: CustomInfoBox(
            iconPath: AppIcons.calendarIcon,
            title: 'Expires',
            value: 'Today 10 PM',
          ),
        ),
      ],
    );
  }
}
