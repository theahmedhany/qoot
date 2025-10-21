import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/common/buttons/custom_button.dart';
import 'package:qoot/core/helpers/app_logger.dart';
import 'package:qoot/core/helpers/app_validators.dart';
import 'package:qoot/core/helpers/extensions.dart';
import 'package:qoot/core/helpers/spacing.dart';
import 'package:qoot/core/routing/routes.dart';
import 'package:qoot/core/theme/app_texts/app_text_styles.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';
import 'package:qoot/core/utils/enums.dart';
import 'package:qoot/features/auth/auth_choice/presentation/widgets/centered_text_divider.dart';
import 'package:qoot/features/auth/auth_choice/presentation/widgets/ellipsed_text.dart';
import 'package:qoot/features/auth/auth_choice/presentation/widgets/google_signup_button.dart';
import '../../../auth_choice/presentation/widgets/apple_signup_button.dart';
import '../../../login/presentation/widgets/custom_auth_appbar.dart';
import '../../../login/presentation/widgets/custom_text_form_field.dart';
import '../../../login/presentation/widgets/partial_clickable_text.dart';
import '../../../login/presentation/widgets/text_field_label_builder.dart';

class SignupAccountScreen extends StatefulWidget {
  const SignupAccountScreen({super.key, required this.role});
  final Roles role;

  @override
  State<SignupAccountScreen> createState() => _SignupAccountScreenState();
}

class _SignupAccountScreenState extends State<SignupAccountScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();

  String? _emailErrorMessage;
  String? _passwordErrorMessage;
  String? _nameErrorMessage;
  String? _phoneNumberErrorMessage;

  void _onSubmit() {
    setState(() {
      //set _emailErrorMessage
      _emailErrorMessage = AppValidators.validateEmail(_emailController.text);
      //set _passwordErrorMessage
      _passwordErrorMessage = AppValidators.validatePassword(_passwordController.text);
      //set _nameErrorMessage
      _nameErrorMessage = AppValidators.validateName(_nameController.text);
      //set _phoneNumberErrorMessage
      _phoneNumberErrorMessage = AppValidators.validatePhoneNumber(_phoneNumberController.text);
    });
    if (_emailErrorMessage == null &&
        _passwordErrorMessage == null &&
        _nameErrorMessage == null &&
        _phoneNumberErrorMessage == null) {
      AppLogger.log("validated and submited", name: "Success");
    } else {
      AppLogger.log("not validated", name: "Error");
    }
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _nameController.dispose();
    _phoneNumberController.dispose();
    _formKey.currentState?.dispose();
    _nameErrorMessage = null;
    _phoneNumberErrorMessage = null;
    _emailErrorMessage = null;
    _passwordErrorMessage = null;

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //custom appbar [set title to center , and has back icon to implement pop()]
      appBar: CustomAuthAppBar(title: "Signup Account"),
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

                    //********[ Name TextField ]********/
                    //name label
                    textFieldLabelBuilder(context, "Name"),
                    //vertical space
                    verticalSpace(6.h),
                    //name text field
                    CustomTextFormField(
                      controller: _nameController,
                      errorMessage: _nameErrorMessage,
                      hintText: "Your full name",
                    ),
                    //vertical space
                    verticalSpace(8.h),

                    //********[ PhoneNumber TextField ]********/
                    //phone number label
                    textFieldLabelBuilder(context, "Phone Number"),
                    //vertical space
                    verticalSpace(6.h),
                    //phone number text field
                    CustomTextFormField(
                      controller: _phoneNumberController,
                      errorMessage: _passwordErrorMessage,
                      hintText: "Your phone number",
                    ),
                    //vertical space
                    verticalSpace(24.h),

                    //********[ Login Button ]********/
                    //login button
                    QCustomButton(
                      onTap: () {
                        _onSubmit();
                        //navigate according to role
                        switch (widget.role) {
                          case Roles.restaurant:
                            context.pushNamed(Routes.registerRestaurantScreen);
                            break;
                          case Roles.charity:
                            context.pushNamed(Routes.registerCharityScreen);
                            break;
                          case Roles.volunteer:
                            context.pushNamed(Routes.homeScreen);
                            break;
                        }
                      },
                      child: EllipsedText(
                        text: "Signup Account",
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
                      unClickableText: "Already have an account?",
                      clickableText: "Login",
                      onTap: () {
                        context.pushNamed(Routes.loginScreen);
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
