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
      //set _emailErrorMessage
      _emailErrorMessage = AppValidators.validateEmail(_emailController.text);
      //set _passwordErrorMessage
      _passwordErrorMessage = AppValidators.validatePassword(
        _passwordController.text,
      );
    });
    if (_emailErrorMessage == null && _passwordErrorMessage == null) {
      //login user logic here
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
      //custom appbar [set title to center , and has back icon to pop()]
      appBar: CustomAuthAppBar(
        title: S.of(context).loginAccount,
        showBackButton: false,
      ),

      //body
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
                    //********[ Email TextField ]********/
                    //email label
                    textFieldLabelBuilder(context, S.of(context).yourEmail),
                    //vertical space
                    verticalSpace(6.h),
                    //email text field
                    CustomTextFormField(
                      controller: _emailController,
                      errorMessage: _emailErrorMessage,
                      hintText: S.of(context).yourEmail,
                    ),
                    //vertical space
                    verticalSpace(8.h),

                    //********[ Password TextField ]********/
                    //password label
                    textFieldLabelBuilder(context, S.of(context).password),
                    //vertical space
                    verticalSpace(6.h),
                    //password text field
                    CustomTextFormField(
                      controller: _passwordController,
                      errorMessage: _passwordErrorMessage,
                      hintText: S.of(context).yourPassword,
                      isPassword: true,
                    ),
                    //vertical space
                    verticalSpace(8.h),

                    //********[ Forget Password button ]********/
                    //forgot password button
                    const ForgetPasswordButton(),
                    //vertical space
                    verticalSpace(24.h),

                    //********[ Login Button ]********/
                    //login button
                    QCustomButton(
                      onTap: () {
                        _onSubmit();
                        //
                      },
                      child: EllipsedText(
                        text: S.of(context).loginAccount,
                        textStyle: AppTextStyles.font16SemiBold.copyWith(
                          color: context.customAppColors.white,
                        ),
                      ),
                    ),
                    //vertical space
                    verticalSpace(24.h),

                    //********[ Signup Option ]********/
                    //signup option
                    PartialClickableText(
                      unClickableText: S.of(context).doNotHaveAccount,
                      clickableText: S.of(context).signup,
                      onTap: () {
                        showRegisterTypeSelectionBottomSheet(context);
                      },
                    ),
                    //vertical space
                    verticalSpace(32.h),

                    //********[ Divider ]********/
                    //centered text divider
                    CenteredTextDivider(text: S.of(context).signInWith),
                    //vertical space
                    verticalSpace(28.h),

                    //********[ Google Signup  ]********/
                    //sign up with google button
                    const GoogleSignUpButton(),
                    //vertical space
                    verticalSpace(12.h),

                    //********[ Apple Signup  ]********/
                    //sign up with apple button
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
