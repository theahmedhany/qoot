import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';

import '../../../../../core/common/buttons/custom_button.dart';
import '../../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../../core/utils/app_icons.dart';
import 'ellipsed_text.dart';

class AppleSignUpButton extends StatelessWidget {
  const AppleSignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return QCustomButton(
      onTap: () {},
      backgroundColor: context.customAppColors.black,
      height: 48.h,
      icon: Image.asset(AppIcons.iconsAppleIcon),

      child: EllipsedText(
        text: "Sign in with Apple",
        textStyle: AppTextStyles.font16SemiBold.copyWith(color: context.customAppColors.white),
      ),
    );
  }
}
