import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/common/widgets/snackbar_helper.dart';

import '../../../../../core/common/widgets/q_custom_button.dart';
import '../../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../../core/theme/theme_manager/theme_extensions.dart';
import '../../../../../core/utils/app_icons.dart';
import '../../../../../generated/l10n.dart';
import 'ellipsed_text.dart';

class AppleSignUpButton extends StatelessWidget {
  const AppleSignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return QCustomButton(
      onTap: () {
        SnackbarHelper.showSuccessSnackbar(
          context,
          "تسجيل الدخول عبر أبل غير متوفر حالياً",
        );
      },
      backgroundColor: context.customAppColors.black,
      height: 56.h,
      icon: Image.asset(AppIcons.iconsAppleIcon),

      child: EllipsedText(
        text: S.of(context).signInWithApple,
        textStyle: AppTextStyles.font16SemiBold.copyWith(
          color: context.customAppColors.white,
        ),
      ),
    );
  }
}
