import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/common/widgets/snackbar_helper.dart';

import '../../../../../core/common/widgets/q_custom_button.dart';
import '../../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../../core/theme/theme_manager/theme_extensions.dart';
import '../../../../../core/utils/app_icons.dart';
import '../../../../../generated/l10n.dart';
import 'ellipsed_text.dart';

class GoogleSignUpButton extends StatelessWidget {
  const GoogleSignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return QCustomButton(
      onTap: () {
        SnackbarHelper.showSuccessSnackbar(
          context,
          "تسجيل الدخول عبر جوجل غير متوفر حالياً",
        );
      },
      backgroundColor: Colors.transparent,
      border: Border.all(color: context.customAppColors.grey100),
      height: 56.h,
      icon: Image.asset(AppIcons.iconsGoogleIcon),
      child: EllipsedText(
        text: S.of(context).signInWithGoogle,
        textStyle: AppTextStyles.font16SemiBold.copyWith(
          color: context.customAppColors.grey900,
        ),
      ),
    );
  }
}
