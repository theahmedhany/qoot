import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qoot/core/common/widgets/custom_build_tag.dart';
import 'package:qoot/core/common/widgets/custom_button.dart';
import 'package:qoot/core/helpers/extensions.dart';
import 'package:qoot/core/theme/app_texts/app_text_styles.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';
import 'package:qoot/core/utils/app_icons.dart';
import 'package:qoot/generated/l10n.dart';

class CustomAvailableDonationsCard extends StatelessWidget {
  const CustomAvailableDonationsCard({super.key, required this.imageUrl});
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.h,
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
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 6.h),
            child: SizedBox(
              height: 150.h,
              width: 220.w,
              child: Column(
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(
                      'Mario\'s Pizza Palace',
                      style: AppTextStyles.font14SemiBold.copyWith(
                        color: context.customAppColors.grey900,
                      ),
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
                      30.w.pw,
                      SvgPicture.asset(AppIcons.clockIcon),
                      5.w.pw,
                      Text(
                        '25 servings',
                        style: AppTextStyles.font12Regular.copyWith(
                          color: context.customAppColors.error500,
                        ),
                      ),
                    ],
                  ),
                  5.w.ph,
                  CustomButton(
                    text: S.of(context).reserveNow,
                    hight: 35.h,
                    width: 210.w,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
