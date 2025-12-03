import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/common/widgets/custom_button.dart';
import '../../../../core/helpers/extensions.dart';
import '../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../core/theme/theme_manager/theme_extensions.dart';
import '../../../../core/utils/app_images.dart';
import '../../../../generated/l10n.dart';

class CustomLocationCharityInfo extends StatelessWidget {
  const CustomLocationCharityInfo({
    super.key,
    required this.lat,
    required this.long,
  });

  final double lat, long;

  @override
  Widget build(BuildContext context) {
    final formattedLat = lat.toStringAsFixed(3);
    final formattedLong = long.toStringAsFixed(3);

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
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                AppImages.imagesMap,
                fit: BoxFit.cover,
                height: 117.h,
                width: double.infinity,
              ),
            ),
            3.h.ph,
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                'الموقع الرئيسي للمؤسسة',
                style: AppTextStyles.font14Regular.copyWith(
                  fontWeight: FontWeight.w500,
                  color: context.customAppColors.grey900,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: Text(
                'الاتجاهات : $formattedLat  •  $formattedLong',
                style: AppTextStyles.font12Regular.copyWith(
                  color: context.customAppColors.accent600,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              trailing: CustomButton(
                text: S.of(context).directions,
                width: 105.w,
                height: 38.h,
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
