import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/extensions.dart';
import '../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../core/theme/theme_manager/theme_extensions.dart';

class CustomCharityInfoCard extends StatelessWidget {
  const CustomCharityInfoCard({
    super.key,
    required this.title,
    required this.desc,
    required this.width,
  });
  final String title;
  final String desc;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        color: context.customAppColors.grey50,
      ),
      child: Padding(
        padding: EdgeInsets.all(16.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: AppTextStyles.font12Regular.copyWith(
                color: context.customAppColors.grey600,
              ),
            ),
            6.h.ph,
            Text(
              desc,
              style: AppTextStyles.font14Regular.copyWith(
                color: context.customAppColors.grey900,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
