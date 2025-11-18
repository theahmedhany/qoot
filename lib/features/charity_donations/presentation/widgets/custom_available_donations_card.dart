import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/common/widgets/custom_build_tag.dart';
import '../../../../core/common/widgets/custom_button.dart';
import '../../../../core/helpers/extensions.dart';
import '../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../core/theme/theme_manager/theme_extensions.dart';
import '../../../../core/utils/app_icons.dart';
import '../../../../generated/l10n.dart';

class CustomAvailableDonationsCard extends StatelessWidget {
  const CustomAvailableDonationsCard({super.key, required this.imageUrl});
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160.h,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: context.customAppColors.grey100),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.r),
            child: Image.asset(
              imageUrl,
              height: double.infinity,
              width: 97.w,
              fit: BoxFit.cover,
            ),
          ),
          3.w.pw,
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.h),
              child: Column(
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(
                      'Mario\'s Pizza Palace',
                      style: AppTextStyles.font14SemiBold.copyWith(
                        color: context.customAppColors.grey900,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    subtitle: Text(
                      'Italian • Pizza',
                      style: AppTextStyles.font12Regular.copyWith(
                        color: context.customAppColors.accent600,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    trailing: CustomBuildTag(
                      text: 'Available',
                      textColor: context.customAppColors.primary700,
                      backgroundColor: context.customAppColors.primary700
                          .withValues(alpha: .2),
                    ),
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(AppIcons.peopleFilldIcon),
                      5.w.pw,
                      Text(
                        '25 servings',
                        style: AppTextStyles.font12Regular.copyWith(
                          color: context.customAppColors.accent600,
                        ),
                      ),
                      const Spacer(),
                      SvgPicture.asset(AppIcons.clockIcon),
                      5.w.pw,
                      Text(
                        'Expires: 9 PM',
                        style: AppTextStyles.font12Regular.copyWith(
                          color: context.customAppColors.error500,
                        ),
                      ),
                    ],
                  ),
                  5.h.ph,
                  CustomButton(text: S.of(context).reserveNow, height: 35.h),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
