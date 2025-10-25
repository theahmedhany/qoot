import 'package:flutter/material.dart';
import 'package:qoot/core/helpers/extensions.dart';
import 'package:qoot/core/routing/routes.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';

import '../../../../../core/theme/app_texts/app_text_styles.dart';

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
            style: AppTextStyles.font12Regular.copyWith(color: context.customAppColors.neutral800),
          ),
        ),
      ],
    );
  }
}
