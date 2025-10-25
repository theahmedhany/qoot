import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:qoot/core/helpers/extensions.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';

import '../../../../../core/common/buttons/custom_button.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/routing/routes.dart';
import '../../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../../core/utils/app_icons.dart';
import '../../../auth_choice/presentation/widgets/ellipsed_text.dart';

void showResetPasswordFaildDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        contentPadding: EdgeInsets.zero,

        content: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(top: 18.5.h, bottom: 10.5.h),
            width: 306.w,
            height: 419.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24.r),
              color: context.customAppColors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(AppIcons.iconsErrorCheck, width: 185.w, height: 180.h),
                verticalSpace(31.5.h),
                Text("There was an error.", style: AppTextStyles.font20SemiBold),
                verticalSpace(12.h),
                SizedBox(
                  width: 242.w,
                  child: Text(
                    "Un Knowen Error is occured, try again later.",
                    textAlign: TextAlign.center,
                    style: AppTextStyles.font16Regular.copyWith(
                      color: context.customAppColors.grey400,
                    ),
                  ),
                ),
                verticalSpace(32.h),
                //okey button
                QCustomButton(
                  backgroundColor: context.customAppColors.error900,
                  onTap: () {
                    Navigator.of(context).pop();
                    //navigate to login screen
                    context.pushNamed(Routes.loginScreen);
                  },
                  height: 52.h,
                  width: 280.w,
                  child: EllipsedText(
                    text: "Okey",
                    textStyle: AppTextStyles.font16SemiBold.copyWith(
                      color: context.customAppColors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
