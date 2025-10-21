import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/common/buttons/custom_button.dart';
import 'package:qoot/core/helpers/app_logger.dart';
import 'package:qoot/core/helpers/app_validators.dart';
import 'package:qoot/core/helpers/spacing.dart';
import 'package:qoot/core/theme/app_texts/app_text_styles.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';
import 'package:qoot/features/auth/auth_choice/presentation/widgets/centered_text_divider.dart';
import 'package:qoot/features/auth/auth_choice/presentation/widgets/ellipsed_text.dart';
import 'package:qoot/features/auth/auth_choice/presentation/widgets/google_signup_button.dart';
import 'package:qoot/features/auth/auth_choice/presentation/widgets/show_register_type_selection_bottomsheet.dart';
import '../../../auth_choice/presentation/widgets/apple_signup_button.dart';
import '../widgets/custom_auth_appbar.dart';
import '../widgets/custom_text_form_field.dart';
import '../widgets/forget_password_button.dart';
import '../widgets/partial_clickable_text.dart';
import '../widgets/text_field_label_builder.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String? _emailErrorMessage;
  String? _passwordErrorMessage;

  void _onSubmit() {
    setState(() {
      //set _emailErrorMessage
      _emailErrorMessage = AppValidators.validateEmail(_emailController.text);
      //set _passwordErrorMessage
      _passwordErrorMessage = AppValidators.validatePassword(_passwordController.text);
    });
    if (_emailErrorMessage == null && _passwordErrorMessage == null) {
      AppLogger.log("validated and submited", name: "Success");
    } else {
      AppLogger.log("not validated", name: "Error");
    }
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
      appBar: CustomAuthAppBar(title: "Login Account"),

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
                    textFieldLabelBuilder(context, "Email"),
                    //vertical space
                    verticalSpace(6.h),
                    //email text field
                    CustomTextFormField(
                      controller: _emailController,
                      errorMessage: _emailErrorMessage,
                      hintText: "Your email",
                    ),
                    //vertical space
                    verticalSpace(8.h),

                    //********[ Password TextField ]********/
                    //password label
                    textFieldLabelBuilder(context, "Password"),
                    //vertical space
                    verticalSpace(6.h),
                    //password text field
                    CustomTextFormField(
                      controller: _passwordController,
                      errorMessage: _passwordErrorMessage,
                      hintText: "Your password",
                      isPassword: true,
                    ),
                    //vertical space
                    verticalSpace(8.h),

                    //********[ Forget Password button ]********/
                    //forgot password button
                    ForgetPasswordButton(),
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
                        text: "Login Account",
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
                      unClickableText: "Do not have an account?",
                      clickableText: "Signup",
                      onTap: () {
                        showRegisterTypeSelectionBottomSheet(context);
                      },
                    ),
                    //vertical space
                    verticalSpace(32.h),

                    //********[ Divider ]********/
                    //centered text divider
                    CenteredTextDivider(text: "Sign in with"),
                    //vertical space
                    verticalSpace(28.h),

                    //********[ Google Signup  ]********/
                    //sign up with google button
                    GoogleSignUpButton(),
                    //vertical space
                    verticalSpace(12.h),

                    //********[ Apple Signup  ]********/
                    //sign up with apple button
                    AppleSignUpButton(),
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
