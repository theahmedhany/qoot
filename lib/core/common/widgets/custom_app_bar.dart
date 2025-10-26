import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../helpers/extensions.dart';
import '../../theme/app_texts/app_text_styles.dart';
import '../../theme/theme_manager/theme_extensions.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: context.customAppColors.grey900,
          ),
        ),
        const Spacer(),
        Text(
          text,
          style: AppTextStyles.font20SemiBold.copyWith(
            color: context.customAppColors.grey900,
          ),
        ),
        10.w.pw,
        const Spacer(),
      ],
    );
  }
}
