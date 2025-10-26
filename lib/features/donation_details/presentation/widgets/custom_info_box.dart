import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/helpers/extensions.dart';
import '../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../core/theme/theme_manager/theme_extensions.dart';

class CustomInfoBox extends StatelessWidget {
  const CustomInfoBox({
    super.key,
    required this.iconPath,
    required this.title,
    required this.value,
  });

  final String iconPath;
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        color: context.customAppColors.grey50,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SvgPicture.asset(iconPath, height: 18.h, width: 18.w),
              6.w.pw,
              Text(
                title,
                style: AppTextStyles.font12Regular.copyWith(
                  color: context.customAppColors.grey700,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
          4.h.ph,
          Text(
            value,
            style: AppTextStyles.font18Bold.copyWith(
              color: context.customAppColors.grey900,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
