import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/helpers/extensions.dart';
import 'package:qoot/core/routing/routes.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';
import 'package:qoot/features/auth/auth_choice/presentation/widgets/ellipsed_text.dart';

import '../../../../../core/common/buttons/custom_button.dart';
import '../../../../../core/theme/app_texts/app_text_styles.dart';

class LoginAccountButton extends StatelessWidget {
  const LoginAccountButton({super.key});

  @override
  Widget build(BuildContext context) {
    return QCustomButton(
      onTap: () {
        context.pushNamed(Routes.loginScreen);
      },
      backgroundColor: context.customAppColors.white,
      border: Border.all(color: context.customAppColors.grey100),
      height: 48.h,
      child: EllipsedText(
        text: "Login Account",
        textStyle: AppTextStyles.font16SemiBold.copyWith(color: context.customAppColors.grey900),
      ),
    );
  }
}
