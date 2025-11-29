import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../../../generated/l10n.dart';
import '../widgets/apple_signup_button.dart';
import '../widgets/centered_text_divider.dart';
import '../widgets/create_account_button.dart';
import '../widgets/google_signup_button.dart';
import '../widgets/login_account_button.dart';

class AuthChoiceScreen extends StatefulWidget {
  const AuthChoiceScreen({super.key});

  @override
  State<AuthChoiceScreen> createState() => _AuthChoiceScreenState();
}

class _AuthChoiceScreenState extends State<AuthChoiceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                AppImages.imagesMasterDarkLogo,
                width: 152.w,
                height: 187.h,
              ),

              verticalSpace(18.h),

              const CreateAccountButton(),

              verticalSpace(18.h),

              const LoginAccountButton(),

              verticalSpace(50.h),

              CenteredTextDivider(text: S.of(context).continueWith),

              verticalSpace(28.h),

              const AppleSignUpButton(),

              verticalSpace(12.h),

              const GoogleSignUpButton(),
            ],
          ),
        ),
      ),
    );
  }
}
