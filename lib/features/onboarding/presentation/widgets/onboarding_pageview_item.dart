import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../core/theme/theme_manager/theme_extensions.dart';

class OnBardingPageViewItem extends StatelessWidget {
  const OnBardingPageViewItem({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
    this.subtitle2,
  });

  final String title;
  final String subtitle;
  final String? subtitle2;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 150.h),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
          colorFilter: const ColorFilter.mode(
            Color.fromRGBO(18, 18, 18, 0.6), // same rgba color from Figma
            BlendMode.darken, // darkens the image
          ),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //title
          Text(
            title,
            textAlign: TextAlign.center,
            style: AppTextStyles.font24Bold.copyWith(
              color: context.customAppColors.white,
            ),
          ),

          //vertical space
          verticalSpace(16.h),

          //subtitle
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: AppTextStyles.font12SemiBold.copyWith(
              color: context.customAppColors.white,
            ),
          ),

          //optional vertical space
          if (subtitle2 != null) verticalSpace(20.h),

          //optional second subtitle
          if (subtitle2 != null)
            Text(
              subtitle2!,
              textAlign: TextAlign.center,
              style: AppTextStyles.font12SemiBold.copyWith(
                color: context.customAppColors.white,
              ),
            ),

          //vertical space
          verticalSpace(16.h),
        ],
      ),
    );
  }
}
