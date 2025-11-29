import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/common/widgets/q_custom_button.dart';
import '../../../../../core/helpers/app_validators.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../../core/theme/theme_manager/theme_extensions.dart';
import '../../../../../generated/l10n.dart';
import '../../../auth_choice/presentation/widgets/apple_signup_button.dart';
import '../../../auth_choice/presentation/widgets/centered_text_divider.dart';
import '../../../auth_choice/presentation/widgets/ellipsed_text.dart';
import '../../../auth_choice/presentation/widgets/google_signup_button.dart';
import '../../../auth_choice/presentation/widgets/show_register_type_selection_bottomsheet.dart';
import '../logic/cubit/login_cubit.dart';
import '../widgets/custom_auth_appbar.dart';
import '../widgets/custom_text_form_field.dart';
import '../widgets/forget_password_button.dart';
import '../widgets/partial_clickable_text.dart';
import '../widgets/text_field_label_builder.dart';

class LoginScreenImpl extends StatefulWidget {
  const LoginScreenImpl({super.key});

  @override
  State<LoginScreenImpl> createState() => _LoginScreenImplState();
}

class _LoginScreenImplState extends State<LoginScreenImpl> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String? _emailErrorMessage;
  String? _passwordErrorMessage;

  void _onSubmit() async {
    setState(() {
      _emailErrorMessage = AppValidators.validateEmail(_emailController.text);
      _passwordErrorMessage = AppValidators.validatePassword(
        _passwordController.text,
      );
    });
    if (_emailErrorMessage == null && _passwordErrorMessage == null) {
      await context.read<LoginCubit>().login(
        _emailController.text,
        _passwordController.text,
      );
    } else {}
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _formKey.currentState?.dispose();
    _emailErrorMessage = null;
    _passwordErrorMessage = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAuthAppBar(
        title: S.of(context).loginAccount,
        showBackButton: false,
      ),

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
                    textFieldLabelBuilder(context, S.of(context).yourEmail),

                    verticalSpace(6.h),

                    CustomTextFormField(
                      controller: _emailController,
                      errorMessage: _emailErrorMessage,
                      hintText: S.of(context).yourEmail,
                    ),
                    verticalSpace(8.h),

                    textFieldLabelBuilder(context, S.of(context).password),

                    verticalSpace(6.h),

                    CustomTextFormField(
                      controller: _passwordController,
                      errorMessage: _passwordErrorMessage,
                      hintText: S.of(context).yourPassword,
                      isPassword: true,
                    ),

                    verticalSpace(8.h),

                    const ForgetPasswordButton(),

                    verticalSpace(24.h),

                    QCustomButton(
                      onTap: () {
                        _onSubmit();
                      },
                      child: EllipsedText(
                        text: S.of(context).loginAccount,
                        textStyle: AppTextStyles.font16SemiBold.copyWith(
                          color: context.customAppColors.white,
                        ),
                      ),
                    ),

                    verticalSpace(24.h),

                    PartialClickableText(
                      unClickableText: S.of(context).doNotHaveAccount,
                      clickableText: S.of(context).signup,
                      onTap: () {
                        showRegisterTypeSelectionBottomSheet(context);
                      },
                    ),

                    verticalSpace(32.h),

                    CenteredTextDivider(text: S.of(context).signInWith),

                    verticalSpace(28.h),

                    const GoogleSignUpButton(),

                    verticalSpace(12.h),

                    const AppleSignUpButton(),
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
