import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../../core/theme/theme_manager/theme_extensions.dart';
import '../../../../../core/utils/app_icons.dart';

class RegisterTypeCard extends StatelessWidget {
  const RegisterTypeCard({
    super.key,
    required this.leadingImagePath,
    required this.title,
    this.onTap,
    this.isChecked = false,
  });

  final String leadingImagePath;
  final String title;
  final bool isChecked;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 51.h,
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(
            color: isChecked
                ? context.customAppColors.primary800
                : context.customAppColors.grey100,
            width: 1,
          ),
          color: isChecked
              ? context.customAppColors.primary600.withValues(alpha: 0.25)
              : context.customAppColors.grey50,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //leanding image
            SvgPicture.asset(
              leadingImagePath,
              width: 24.w,
              height: 24.h,
              colorFilter: ColorFilter.mode(
                isChecked
                    ? context.customAppColors.primary800
                    : context.customAppColors.grey900,
                BlendMode.srcIn,
              ),
            ),
            //title (register type)
            horizontalSpace(5.5.w),
            Text(
              title,
              style: AppTextStyles.font16SemiBold.copyWith(
                color: isChecked
                    ? context.customAppColors.primary800
                    : context.customAppColors.grey900,
              ),
            ),
            //spacer
            const Spacer(),
            //check box icon
            isChecked
                ? SvgPicture.asset(
                    AppIcons.iconsRightMark,
                    width: 20.w,
                    height: 20.h,
                  )
                : SvgPicture.asset(
                    AppIcons.iconsMinusCircle,
                    width: 20.w,
                    height: 20.h,
                  ),
          ],
        ),
      ),
    );
  }
}
