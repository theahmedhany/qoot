import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/di/service_locator.dart';
import 'package:qoot/core/helpers/helper_functions.dart';
import 'package:qoot/core/middlewares/cubit/auth_middleware_cubit.dart';
import 'package:qoot/features/auth/register_account/presentation/logic/cubit/register_cubit.dart';

import '../../../../../core/common/widgets/q_custom_button.dart';
import '../../../../../core/helpers/app_validators.dart';
import '../../../../../core/helpers/extensions.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/routing/routes.dart';
import '../../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../../core/theme/theme_manager/theme_extensions.dart';
import '../../../../../core/utils/enums.dart';
import '../../../../../generated/l10n.dart';
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
  State<RegisterAccountScreenImpl> createState() =>
      _RegisterAccountScreenImplState();
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
      _emailErrorMessage = AppValidators.validateEmail(_emailController.text);

      _passwordErrorMessage = AppValidators.validatePassword(
        _passwordController.text,
      );
      _nameErrorMessage = AppValidators.validateFullName(_nameController.text);
      _phoneNumberErrorMessage = AppValidators.validatePhoneNumber(
        _phoneNumberController.text,
      );
    });
    if (_emailErrorMessage == null &&
        _passwordErrorMessage == null &&
        _nameErrorMessage == null &&
        _phoneNumberErrorMessage == null) {
      final nameParts = HelperFunctions.splitFullName(_nameController.text);
      final firstName = nameParts['firstName'] ?? '';
      final lastName = nameParts['lastName'] ?? '';
      final email = _emailController.text;
      final phoneNumber = _phoneNumberController.text;
      final password = _passwordController.text;

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
      appBar: CustomAuthAppBar(
        title: S.of(context).signupAccount,
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

                    textFieldLabelBuilder(context, S.of(context).fullName),
                    verticalSpace(6.h),
                    CustomTextFormField(
                      controller: _nameController,
                      errorMessage: _nameErrorMessage,
                      hintText: S.of(context).yourFullName,
                    ),
                    verticalSpace(8.h),

                    textFieldLabelBuilder(context, S.of(context).phoneNumber),

                    verticalSpace(6.h),
                    CustomTextFormField(
                      controller: _phoneNumberController,
                      errorMessage: _phoneNumberErrorMessage,
                      hintText: S.of(context).yourPhoneNumber,
                    ),
                    verticalSpace(24.h),

                    QCustomButton(
                      onTap: () {
                        _onSubmit();
                      },
                      child: EllipsedText(
                        text: S.of(context).signupAccount,
                        textStyle: AppTextStyles.font16SemiBold.copyWith(
                          color: context.customAppColors.white,
                        ),
                      ),
                    ),

                    verticalSpace(24.h),

                    PartialClickableText(
                      unClickableText: S.of(context).alreadyHaveAccount,
                      clickableText: S.of(context).loginAccount,
                      onTap: () {
                        context.pushNamed(Routes.loginScreen);
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
