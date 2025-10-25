import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/common/widgets/custom_build_tag.dart';
import 'package:qoot/core/helpers/extensions.dart';
import 'package:qoot/core/theme/app_texts/app_text_styles.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';
import 'package:qoot/generated/l10n.dart';

class CustomConfirmPickupInfoCard extends StatelessWidget {
  const CustomConfirmPickupInfoCard({super.key});

  Widget buildCustomRow(
    String text1,
    String text2,
    BuildContext context, {
    bool isLast = false,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text1,
          style: AppTextStyles.font14Regular.copyWith(
            color: context.customAppColors.accent600,
          ),
        ),
        Text(
          text2,
          style: AppTextStyles.font14Regular.copyWith(
            color: isLast
                ? context.customAppColors.error700
                : context.customAppColors.grey900,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: context.customAppColors.grey100),
      ),
      child: Padding(
        padding: EdgeInsets.all(12.h),
        child: Column(
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                'Al-Amal Restaurant',
                style: AppTextStyles.font18SemiBold.copyWith(
                  color: context.customAppColors.grey900,
                ),
              ),
              subtitle: Text(
                S.of(context).foodDonationPickup,
                style: AppTextStyles.font14Regular.copyWith(
                  color: context.customAppColors.grey700,
                ),
              ),
              trailing: CustomBuildTag(
                text: S.of(context).reserveNow,
                textColor: context.customAppColors.info900,
                backgroundColor: context.customAppColors.info900.withValues(
                  alpha: .15,
                ),
              ),
            ),
            16.h.ph,
            buildCustomRow(S.of(context).foodType, 'Chicken & Rice', context),
            6.h.ph,
            buildCustomRow(S.of(context).servings, 'Ahmed Ali', context),
            6.h.ph,
            buildCustomRow(
              S.of(context).expiryDate,
              'Oct 5, 10:00 PM',
              context,
              isLast: true,
            ),
          ],
        ),
      ),
    );
  }
}
