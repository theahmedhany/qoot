import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:qoot/core/common/buttons/custom_button.dart';
import 'package:qoot/core/helpers/extensions.dart';
import 'package:qoot/core/helpers/spacing.dart';
import 'package:qoot/core/routing/routes.dart';
import 'package:qoot/core/theme/app_texts/app_text_styles.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';
import 'package:qoot/core/utils/app_icons.dart';
import 'package:qoot/features/auth/auth_choice/presentation/widgets/ellipsed_text.dart';
import '../../../login/presentation/widgets/custom_auth_appbar.dart';

class ForgetPasswordEmailSentScreen extends StatefulWidget {
  const ForgetPasswordEmailSentScreen({super.key, required this.email});
  final String email;

  @override
  State<ForgetPasswordEmailSentScreen> createState() => _ForgetPasswordEmailSentScreenState();
}

class _ForgetPasswordEmailSentScreenState extends State<ForgetPasswordEmailSentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //custom appbar [set title to center , and has back icon to pop()]
      appBar: CustomAuthAppBar(title: "Forget Password"),

      //body
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 76.h, bottom: 34.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //********[ Image ]********/
                //message to user
                Container(
                  alignment: Alignment.center,
                  width: 292.w,
                  height: 292.h,
                  padding: EdgeInsets.symmetric(horizontal: 18.w),
                  child: SvgPicture.asset(AppIcons.iconsForgetPassword, fit: BoxFit.fill),
                ),
                //vertical space
                verticalSpace(24.h),

                //********[ message to user ]********/
                Opacity(
                  opacity: 0.6,
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(horizontal: 32.w),
                    child: Text.rich(
                      textAlign: TextAlign.center,
                      style: AppTextStyles.font14Regular,
                      TextSpan(
                        text: "We will send an ",
                        children: [
                          TextSpan(
                            style: AppTextStyles.font14Bold,
                            text: "email to ${widget.email} ",
                            children: [
                              TextSpan(
                                style: AppTextStyles.font14Regular,
                                text: "with instructions to reset your password",
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                //vertical space
                verticalSpace(24.h),

                //********[ back to login Button ]********/
                //login button
                QCustomButton(
                  onTap: () {
                    context.pushNamed(Routes.resetPasswordScreen);
                  },
                  child: EllipsedText(
                    text: "Back to Login",
                    textStyle: AppTextStyles.font16SemiBold.copyWith(
                      color: context.customAppColors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
