import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:qoot/core/common/widgets/snackbar_helper.dart';
import 'package:qoot/core/services/storage/auth_local_storage.dart';

import '../../../../../core/common/widgets/q_custom_button.dart';
import '../../../../../core/helpers/extensions.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/routing/routes.dart';
import '../../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../../core/theme/theme_manager/theme_extensions.dart';
import '../../../../../core/utils/app_icons.dart';
import '../../../../../generated/l10n.dart';
import '../../../auth_choice/presentation/widgets/ellipsed_text.dart';
import '../../../login/presentation/widgets/custom_auth_appbar.dart';
import '../logic/cubit/send_email_confirmation_cubit.dart';

class SendEmailConfirmationScreenImpl extends StatefulWidget {
  const SendEmailConfirmationScreenImpl({super.key, required this.email});
  final String email;

  @override
  State<SendEmailConfirmationScreenImpl> createState() =>
      _SendEmailConfirmationScreenImplState();
}

class _SendEmailConfirmationScreenImplState
    extends State<SendEmailConfirmationScreenImpl> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.customAppColors.background,
      appBar: CustomAuthAppBar(
        title: S.of(context).sendVerificationEmail,
        showBackButton: false,
      ),

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

                verticalSpace(24.h),

                Opacity(
                  opacity: 0.6,
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(horizontal: 32.w),
                    child: Text.rich(
                      textAlign: TextAlign.center,
                      style: AppTextStyles.font14Regular,
                      TextSpan(
                        text: "لقد أرسلنا رسالة تأكيد بالبريد الإلكتروني إلى",
                        children: [
                          TextSpan(
                            style: AppTextStyles.font14Bold,
                            text: "${widget.email} ",
                            children: [
                              TextSpan(
                                style: AppTextStyles.font14Regular,
                                text:
                                    "يرجى التحقق من صندوق الوارد الخاص بك والنقر على الرابط للتحقق من عنوان بريدك الإلكتروني.",
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                verticalSpace(24.h),

                QCustomButton(
                  onTap: () async {
                    await AuthLocalStorage().clearCurrentUserData();
                    context.pushNamed(Routes.loginScreen);
                  },
                  child: EllipsedText(
                    text: S.of(context).backToLogin,
                    textStyle: AppTextStyles.font16SemiBold.copyWith(
                      color: context.customAppColors.white,
                    ),
                  ),
                ),

                verticalSpace(24.h),

                TextButton(
                  onPressed: () async {
                    bool result = await context
                        .read<SendEmailConfirmationCubit>()
                        .sendEmailConfirmation(
                          widget.email,
                        );
                    if (result) {
                      SnackbarHelper.showSuccessSnackbar(
                        context,
                        S.of(context).emailSentSuccessfully,
                      );
                    } else {
                      SnackbarHelper.showErrorSnackbar(
                        context,
                        S.of(context).someErrorHappened,
                      );
                    }
                  },
                  child: Text(S.of(context).resendEmail),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
