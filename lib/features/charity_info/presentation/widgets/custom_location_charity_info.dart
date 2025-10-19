import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/common/widgets/custom_button.dart';
import 'package:qoot/core/helpers/extensions.dart';
import 'package:qoot/core/theme/app_texts/app_text_styles.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';
import 'package:qoot/core/utils/app_images.dart';
import 'package:qoot/generated/l10n.dart';

class CustomLocationCharityInfo extends StatelessWidget {
  const CustomLocationCharityInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: context.customAppColors.grey0,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: context.customAppColors.grey100),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              S.of(context).location,
              style: AppTextStyles.font18SemiBold.copyWith(
                color: context.customAppColors.grey900,
              ),
            ),
            11.h.ph,
            Image.asset(
              AppImages.imagesMap,
              height: 96.h,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            3.h.ph,
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                'Downtown Location',
                style: AppTextStyles.font14Regular.copyWith(
                  color: context.customAppColors.grey900,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: Text(
                'Coordinates: 40.7128, -74.0060',
                style: AppTextStyles.font12Regular.copyWith(
                  color: context.customAppColors.accent600,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              trailing: CustomButton(
                text: 'Directions',
                width: 105.w,
                height: 32.h,
                isIcon: true,
                icon: Icons.directions,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
