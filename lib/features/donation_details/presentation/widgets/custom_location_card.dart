import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/helpers/extensions.dart';
import 'package:qoot/core/theme/app_texts/app_text_styles.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';
import 'package:qoot/core/utils/app_images.dart';
import 'package:qoot/generated/l10n.dart';

class CustomLocationCard extends StatelessWidget {
  const CustomLocationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: context.customAppColors.grey50,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: context.customAppColors.grey100),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  S.of(context).location,
                  style: AppTextStyles.font14Regular.copyWith(
                    color: context.customAppColors.grey900,
                  ),
                ),
                Text(
                  S.of(context).viewonMap,
                  style: AppTextStyles.font14Regular.copyWith(
                    color: context.customAppColors.primary800,
                  ),
                ),
              ],
            ),
            11.h.ph,
            Image.asset(
              AppImages.imagesMap,
              height: 96.h,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            3.h.ph,
            Text(
              '123 Main Street, Downtown Cairo',
              style: AppTextStyles.font12Regular.copyWith(
                color: context.customAppColors.grey700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
