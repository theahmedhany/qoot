import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/common/buttons/custom_button.dart';
import '../../../../../core/helpers/extensions.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/routing/routes.dart';
import '../../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../../core/theme/theme_manager/theme_extensions.dart';
import '../../../../../core/utils/app_icons.dart';
import '../../../auth_choice/presentation/widgets/ellipsed_text.dart';
import '../../../login/presentation/widgets/custom_auth_appbar.dart';

class SendEmailForgetPasswordImpl extends StatefulWidget {
  const SendEmailForgetPasswordImpl({
    super.key,
    required this.email,
  });
  final String email;

  @override
  State<SendEmailForgetPasswordImpl> createState() => _SendEmailForgetPasswordImplState();
}

class _SendEmailForgetPasswordImplState extends State<SendEmailForgetPasswordImpl> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //custom appbar [set title to center , and has back icon to pop()]
      appBar: const CustomAuthAppBar(title: "Forget Password"),

      //body
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          left: 16.w,
          right: 16.w,
          top: 76.h,
          bottom: 34.h,
        ),
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
                  child: SvgPicture.asset(
                    AppIcons.iconsForgetPassword,
                    fit: BoxFit.fill,
                  ),
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
