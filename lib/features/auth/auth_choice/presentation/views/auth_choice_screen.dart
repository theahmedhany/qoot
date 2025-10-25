import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/helpers/spacing.dart';
import 'package:qoot/core/utils/app_images.dart';
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
              //logo image
              Image.asset(AppImages.imagesMasterDarkLogo, width: 152.w, height: 187.h),

              //vertical space
              verticalSpace(18.h),

              //create account button
              CreateAccountButton(),

              //vertical space
              verticalSpace(18.h),

              //login account button
              LoginAccountButton(),

              //vertical space
              verticalSpace(50.h),

              //centered text divider
              CenteredTextDivider(text: "Continue with"),

              //vertical space
              verticalSpace(28.h),

              //sign up with apple button
              AppleSignUpButton(),

              //vertical space
              verticalSpace(12.h),

              //sign in with google button
              GoogleSignUpButton(),
            ],
          ),
        ),
      ),
    );
  }
}
