import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';
import 'package:qoot/features/auth/auth_choice/presentation/widgets/ellipsed_text.dart';

import '../../../../../core/common/buttons/custom_button.dart';
import '../../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../../core/utils/app_icons.dart';

class GoogleSignUpButton extends StatelessWidget {
  const GoogleSignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return QCustomButton(
      onTap: () {},
      backgroundColor: context.customAppColors.white,
      border: Border.all(color: context.customAppColors.grey100),
      height: 48.h,
      icon: Image.asset(AppIcons.iconsGoogleIcon),
      child: EllipsedText(
        text: "Sign in with Google",
        textStyle: AppTextStyles.font16SemiBold.copyWith(color: context.customAppColors.grey900),
      ),
    );
  }
}
