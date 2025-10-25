import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/common/buttons/custom_button.dart';
import 'package:qoot/core/helpers/app_logger.dart';
import 'package:qoot/core/helpers/app_validators.dart';
import 'package:qoot/core/helpers/extensions.dart';
import 'package:qoot/core/helpers/spacing.dart';
import 'package:qoot/core/theme/app_texts/app_text_styles.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';
import 'package:qoot/features/auth/auth_choice/presentation/widgets/ellipsed_text.dart';
import '../../../../../core/routing/routes.dart';
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
      //set _emailErrorMessage
      _emailErrorMessage = AppValidators.validateEmail(_emailController.text);
    });
    if (_emailErrorMessage == null) {
      AppLogger.log("validated and submited", name: "Success");
      //navigate to ForgetPasswordEmailSentScreen
      context.pushNamed(Routes.forgetPasswordEmailSentScreen, arguments: _emailController.text);
    } else {
      AppLogger.log("not validated", name: "Error");
    }
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
      //custom appbar [set title to center , and has back icon to pop()]
      appBar: CustomAuthAppBar(title: "Forget Password"),

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
                    //********[ message to user ]********/
                    //message to user
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(horizontal: 30.w),
                      child: Text(
                        "Please enter your email to reset your password",
                        textAlign: TextAlign.center,
                        style: AppTextStyles.font14Regular.copyWith(
                          color: context.customAppColors.black.withValues(alpha: 0.6),
                        ),
                      ),
                    ),
                    //vertical space
                    verticalSpace(24.h),

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
                    verticalSpace(24.h),

                    //********[ forget password Button ]********/
                    //login button
                    QCustomButton(
                      onTap: () {
                        _onSubmit();
                      },
                      child: EllipsedText(
                        text: "Forget Password",
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
