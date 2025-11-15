import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/di/service_locator.dart';
import 'package:qoot/core/helpers/helper_functions.dart';
import 'package:qoot/core/middlewares/cubit/auth_middleware_cubit.dart';
import 'package:qoot/features/auth/register_account/presentation/logic/cubit/register_cubit.dart';

import '../../../../../core/common/buttons/custom_button.dart';
import '../../../../../core/helpers/app_validators.dart';
import '../../../../../core/helpers/extensions.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/routing/routes.dart';
import '../../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../../core/theme/theme_manager/theme_extensions.dart';
import '../../../../../core/utils/enums.dart';
import '../../../auth_choice/presentation/widgets/apple_signup_button.dart';
import '../../../auth_choice/presentation/widgets/centered_text_divider.dart';
import '../../../auth_choice/presentation/widgets/ellipsed_text.dart';
import '../../../auth_choice/presentation/widgets/google_signup_button.dart';
import '../../../login/presentation/widgets/custom_auth_appbar.dart';
import '../../../login/presentation/widgets/custom_text_form_field.dart';
import '../../../login/presentation/widgets/partial_clickable_text.dart';
import '../../../login/presentation/widgets/text_field_label_builder.dart';

class RegisterAccountScreenImpl extends StatefulWidget {
  const RegisterAccountScreenImpl({super.key, required this.role});
  final Roles role;

  @override
  State<RegisterAccountScreenImpl> createState() => _RegisterAccountScreenImplState();
}

class _RegisterAccountScreenImplState extends State<RegisterAccountScreenImpl> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();

  String? _emailErrorMessage;
  String? _passwordErrorMessage;
  String? _nameErrorMessage;
  String? _phoneNumberErrorMessage;

  void _onSubmit() async {
    setState(() {
      //set _emailErrorMessage
      _emailErrorMessage = AppValidators.validateEmail(_emailController.text);
      //set _passwordErrorMessage
      _passwordErrorMessage = AppValidators.validatePassword(
        _passwordController.text,
      );
      //set _nameErrorMessage
      _nameErrorMessage = AppValidators.validateFullName(_nameController.text);
      //set _phoneNumberErrorMessage
      _phoneNumberErrorMessage = AppValidators.validatePhoneNumber(
        _phoneNumberController.text,
      );
    });
    if (_emailErrorMessage == null &&
        _passwordErrorMessage == null &&
        _nameErrorMessage == null &&
        _phoneNumberErrorMessage == null) {
      //split fullname
      final nameParts = HelperFunctions.splitFullName(_nameController.text);
      final firstName = nameParts['firstName'] ?? '';
      final lastName = nameParts['lastName'] ?? '';
      final email = _emailController.text;
      final phoneNumber = _phoneNumberController.text;
      final password = _passwordController.text;

      //register user logic here
      await getIt<RegisterCubit>().register(
        firstName: firstName,
        lastName: lastName,
        email: email,
        phoneNumber: phoneNumber,
        password: password,
        role: widget.role.name,
      );

      await getIt<AuthMiddlewareCubit>().checkAuthStatus();
    } else {}
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
      appBar: const CustomAuthAppBar(
        title: "Signup Account",
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
                      errorMessage: _phoneNumberErrorMessage,
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
                    const CenteredTextDivider(text: "Sign in with"),
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
