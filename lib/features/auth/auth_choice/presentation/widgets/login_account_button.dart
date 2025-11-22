import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/common/widgets/q_custom_button.dart';
import '../../../../../core/helpers/extensions.dart';
import '../../../../../core/routing/routes.dart';
import '../../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../../core/theme/theme_manager/theme_extensions.dart';
import '../../../../../generated/l10n.dart';
import 'ellipsed_text.dart';

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
        text: S.of(context).loginAccount,
        textStyle: AppTextStyles.font16SemiBold.copyWith(
          color: context.customAppColors.grey900,
        ),
      ),
    );
  }
}
