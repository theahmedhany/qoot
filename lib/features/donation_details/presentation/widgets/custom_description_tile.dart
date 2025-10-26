import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/helpers/extensions.dart';
import '../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../core/theme/theme_manager/theme_extensions.dart';

class CustomDescriptionTile extends StatelessWidget {
  const CustomDescriptionTile({
    super.key,
    required this.iconPath,
    required this.title,
    required this.description,
    required this.color,
  });

  final String iconPath;
  final String title;
  final String description;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 32.h,
          width: 32.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            color: color,
          ),
          child: Center(
            child: SvgPicture.asset(iconPath, height: 20.h, width: 20.w),
          ),
        ),
        12.w.pw,
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: AppTextStyles.font14Regular.copyWith(
                  color: context.customAppColors.grey900,
                ),
              ),
              Text(
                description,
                style: AppTextStyles.font12Regular.copyWith(
                  color: context.customAppColors.accent600,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
