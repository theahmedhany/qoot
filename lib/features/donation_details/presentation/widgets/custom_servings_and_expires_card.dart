import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/generated/l10n.dart';

import '../../../../core/helpers/extensions.dart';
import '../../../../core/utils/app_icons.dart';
import 'custom_info_box.dart';

class CustomServingsAndExpiresCard extends StatelessWidget {
  const CustomServingsAndExpiresCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomInfoBox(
            iconPath: AppIcons.servingsIcon,
            title: S.of(context).servings,
            value: '50 ${S.of(context).meals}',
          ),
        ),
        15.w.pw,
        Expanded(
          child: CustomInfoBox(
            iconPath: AppIcons.calendarIcon,
            title: S.of(context).expires,
            value: 'Today 10 PM',
          ),
        ),
      ],
    );
  }
}
