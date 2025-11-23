import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/features/auth/reset_password/presentation/logic/cubit/reset_password_cubit.dart';

import '../../../../../core/common/widgets/q_custom_button.dart';
import '../../../../../core/helpers/app_validators.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../../core/theme/theme_manager/theme_extensions.dart';
import '../../../../../generated/l10n.dart';
import '../../../auth_choice/presentation/widgets/ellipsed_text.dart';
import '../../../login/presentation/widgets/custom_auth_appbar.dart';
import '../../../login/presentation/widgets/custom_text_form_field.dart';
import '../../../login/presentation/widgets/text_field_label_builder.dart';

class ResetPasswordScreenImpl extends StatefulWidget {
  const ResetPasswordScreenImpl({
    super.key,
    required this.email,
    required this.token,
  });
  final String email;
  final String token;

  @override
  State<ResetPasswordScreenImpl> createState() =>
      _ResetPasswordScreenImplState();
}

class _ResetPasswordScreenImplState extends State<ResetPasswordScreenImpl> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  String? _passwordErrorMessage;
  String? _confirmPasswordErrorMessage;

  void _onSubmit() {
    setState(() {
      //set _passwordErrorMessage
      _passwordErrorMessage = AppValidators.validatePassword(
        _passwordController.text,
      );
      //set _confirmPasswordErrorMessage
      _confirmPasswordErrorMessage = AppValidators.validatePassword(
        _confirmPasswordController.text,
      );
    });
    if (_confirmPasswordErrorMessage == null && _passwordErrorMessage == null) {
      //check passwords equalty
      if (_passwordController.text != _confirmPasswordController.text) {
        _confirmPasswordErrorMessage = S.of(context).passwordsNotEqual;
        //show succes dialog
      } else {
        context.read<ResetPasswordCubit>().resetPassword(
          email: widget.email,
          token: widget.token,
          newPassword: _passwordController.text,
          confirmPassword: _confirmPasswordController.text,
        );
      }
    } else {}
  }

  @override
  void dispose() {
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    _formKey.currentState?.dispose();
    _passwordErrorMessage = null;
    _confirmPasswordErrorMessage = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //custom appbar [set title to center , and has back icon to pop()]
      appBar: CustomAuthAppBar(title: S.of(context).resetPassword),

      //body
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          padding: EdgeInsets.only(
            left: 16.w,
            right: 16.w,
            top: 32.h,
            bottom: 34.h,
          ),
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
                    //********[ message to user ]********/
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(horizontal: 30.w),
                      child: Text(
                        S.of(context).pleaseCreateNewPassword,
                        textAlign: TextAlign.center,
                        style: AppTextStyles.font14Regular.copyWith(
                          color: context.customAppColors.black.withValues(
                            alpha: 0.6,
                          ),
                        ),
                      ),
                    ),
                    //vertical space
                    verticalSpace(32.h),

                    //********[ Password TextField ]********/
                    //password label
                    textFieldLabelBuilder(context, S.of(context).newPassword),
                    //vertical space
                    verticalSpace(6.h),
                    //password text field
                    CustomTextFormField(
                      controller: _passwordController,
                      errorMessage: _passwordErrorMessage,
                      hintText: S.of(context).enterNewPassword,
                      isPassword: true,
                    ),
                    //vertical space
                    verticalSpace(8.h),

                    //********[ confirm Password TextField ]********/
                    //confrm password label
                    textFieldLabelBuilder(
                      context,
                      S.of(context).confirmPassword,
                    ),
                    //vertical space
                    verticalSpace(6.h),
                    //password text field
                    CustomTextFormField(
                      controller: _confirmPasswordController,
                      errorMessage: _confirmPasswordErrorMessage,
                      hintText: S.of(context).enterConfirmPassword,
                      isPassword: true,
                    ),
                    //vertical space
                    verticalSpace(32.h),

                    //********[ Login Button ]********/
                    //login button
                    QCustomButton(
                      onTap: () {
                        log("message");
                        _onSubmit();
                      },
                      child: EllipsedText(
                        text: S.of(context).resetPassword,
                        textStyle: AppTextStyles.font16SemiBold.copyWith(
                          color: context.customAppColors.white,
                        ),
                      ),
                    ),
                    //vertical space
                    verticalSpace(24.h),
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
