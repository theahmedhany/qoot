import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../theme/app_texts/app_text_styles.dart';
import '../../theme/theme_manager/theme_extensions.dart';

class CustomHeaderContainer extends StatelessWidget {
  const CustomHeaderContainer({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
  });
  final String imagePath;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.customAppColors.primary800,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(16.r),
          bottomRight: Radius.circular(16.r),
        ),
      ),
      child: SafeArea(
        child: Align(
          alignment: Alignment.bottomLeft,
          child: ListTile(
            contentPadding: EdgeInsets.symmetric(
              vertical: 9.h,
            ),
            leading: Container(
              width: 96.w,
              height: 96.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            title: Text(
              title,
              style: AppTextStyles.font16Bold.copyWith(
                color: context.customAppColors.white,
              ),
            ),
            subtitle: Text(
              subtitle,
              style: AppTextStyles.font13Regular.copyWith(
                color: context.customAppColors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
