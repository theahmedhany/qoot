import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/common/widgets/custom_build_tag.dart';
import 'package:qoot/core/common/widgets/custom_button.dart';
import 'package:qoot/core/helpers/extensions.dart';
import 'package:qoot/core/theme/app_texts/app_text_styles.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';
import 'package:qoot/generated/l10n.dart';

class UrgentDonationsCard extends StatelessWidget {
  const UrgentDonationsCard({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 175.h,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: context.customAppColors.grey100),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 14.h),
        child: Column(
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.r),
                  child: Image.asset(
                    imageUrl,
                    height: 70.h,
                    width: 70.h,
                    fit: BoxFit.cover,
                  ),
                ),
                12.w.pw,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Daily Bread Bakery',
                      style: AppTextStyles.font16SemiBold.copyWith(
                        color: context.customAppColors.grey900,
                      ),
                    ),
                    Text(
                      'Daily Bread Bakery',
                      style: AppTextStyles.font14Regular.copyWith(
                        color: context.customAppColors.accent600,
                      ),
                    ),

                    5.h.ph,
                    Row(
                      children: [
                        CustomBuildTag(
                          text: '~30 items',
                          textColor: context.customAppColors.warning500,
                          backgroundColor: context.customAppColors.warning500
                              .withValues(alpha: .15),
                        ),
                        8.pw,
                        CustomBuildTag(
                          text: 'Expires: 8:00 PM',
                          textColor: context.customAppColors.error500,
                          backgroundColor: context.customAppColors.error500
                              .withValues(alpha: .15),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            13.h.ph,
            CustomButton(text: S.of(context).reserveNow, hight: 40.h),
          ],
        ),
      ),
    );
  }
}
