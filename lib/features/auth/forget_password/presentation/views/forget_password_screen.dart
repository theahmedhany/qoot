import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/common/widgets/q_custom_button.dart';
import '../../../../../core/helpers/app_validators.dart';
import '../../../../../core/helpers/extensions.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/routing/routes.dart';
import '../../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../../core/theme/theme_manager/theme_extensions.dart';
import '../../../../../generated/l10n.dart';
import '../../../auth_choice/presentation/widgets/ellipsed_text.dart';
import '../../../login/presentation/widgets/custom_auth_appbar.dart';
import '../../../login/presentation/widgets/custom_text_form_field.dart';
import '../../../login/presentation/widgets/text_field_label_builder.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  String? _emailErrorMessage;

  void _onSubmit() {
    setState(() {
      _emailErrorMessage = AppValidators.validateEmail(_emailController.text);
    });
    if (_emailErrorMessage == null) {
      context.pushNamed(
        Routes.sendEmailForgetPassword,
        arguments: {"email": _emailController.text},
      );
    } else {}
  }

  @override
  void dispose() {
    _emailController.dispose();
    _formKey.currentState?.dispose();
    _emailErrorMessage = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAuthAppBar(title: S.of(context).forgetPassword),

      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 32.h),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(horizontal: 30.w),
                      child: Text(
                        S.of(context).pleaseEnterEmailToReset,
                        textAlign: TextAlign.center,
                        style: AppTextStyles.font14Regular.copyWith(
                          color: context.customAppColors.black.withValues(
                            alpha: 0.6,
                          ),
                        ),
                      ),
                    ),

                    verticalSpace(24.h),

                    textFieldLabelBuilder(context, S.of(context).yourEmail),

                    verticalSpace(6.h),

                    CustomTextFormField(
                      controller: _emailController,
                      errorMessage: _emailErrorMessage,
                      hintText: S.of(context).yourEmail,
                    ),

                    verticalSpace(24.h),

                    QCustomButton(
                      onTap: () {
                        _onSubmit();
                      },
                      child: EllipsedText(
                        text: S.of(context).forgetPassword,
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
        ),
      ),
    );
  }
}
