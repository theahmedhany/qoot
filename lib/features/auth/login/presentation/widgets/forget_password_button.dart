import 'package:flutter/material.dart';

import '../../../../../core/helpers/extensions.dart';
import '../../../../../core/routing/routes.dart';
import '../../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../../core/theme/theme_manager/theme_extensions.dart';

class ForgetPasswordButton extends StatelessWidget {
  const ForgetPasswordButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            //navigate to forget password screen
            context.pushNamed(Routes.forgetPasswordScreen);
          },
          child: Text(
            "Forgot Password?",
            style: AppTextStyles.font12Regular.copyWith(
              color: context.customAppColors.neutral800,
            ),
          ),
        ),
      ],
    );
  }
}
