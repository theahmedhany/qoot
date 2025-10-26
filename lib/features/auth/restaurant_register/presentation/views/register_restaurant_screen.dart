import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/common/buttons/custom_button.dart';
import '../../../../../core/helpers/app_logger.dart';
import '../../../../../core/helpers/app_validators.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../../core/theme/theme_manager/theme_extensions.dart';
import '../../../auth_choice/presentation/widgets/ellipsed_text.dart';
import '../../../login/presentation/widgets/custom_auth_appbar.dart';
import '../../../login/presentation/widgets/custom_text_form_field.dart';
import '../../../login/presentation/widgets/text_field_label_builder.dart';

class RegisterRestaurantScreen extends StatefulWidget {
  const RegisterRestaurantScreen({super.key});

  @override
  State<RegisterRestaurantScreen> createState() =>
      _RegisterRestaurantScreenState();
}

class _RegisterRestaurantScreenState extends State<RegisterRestaurantScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _restaruantNameController =
      TextEditingController();
  final TextEditingController _restaruantAddressController =
      TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  File? _licenseFile;
  File? _commercialRegister;

  String? _restaruantNameErrorMessage;
  String? _restaruantAddressErrorMessage;
  String? _descriptionErrorMessage;
  String? _licenseErrorMessage;
  String? _commercialRegisterErrorMessage;

  void _onSubmit() {
    setState(() {
      //set _nameErrorMessage
      _restaruantNameErrorMessage = AppValidators.validateName(
        _restaruantNameController.text,
      );
      //set _addressErrorMessage
      _restaruantAddressErrorMessage = AppValidators.validateAddress(
        _restaruantAddressController.text,
      );
      //set _descriptionErrorMessage
      _descriptionErrorMessage = AppValidators.validateDescription(
        _descriptionController.text,
      );
      //set _licenseErrorMessage
      _licenseErrorMessage = AppValidators.validateFile(
        _licenseFile,
        allowedExtensions: ['pdf'],
        maxFileSizeMB: 5,
        fieldName: "License",
      );
      //set  _commercialRegisterErrorMessage
      _commercialRegisterErrorMessage = AppValidators.validateFile(
        _commercialRegister,
        allowedExtensions: ['pdf'],
        maxFileSizeMB: 5,
        fieldName: "Commercial Register",
      );
    });
    if (_restaruantNameErrorMessage == null &&
        _restaruantAddressErrorMessage == null &&
        _descriptionErrorMessage == null &&
        _licenseErrorMessage == null &&
        _commercialRegisterErrorMessage == null) {
      AppLogger.log("validated and submited", name: "Success");
    } else {
      //print all values
      AppLogger.log(_restaruantNameController.text, name: "name");
      AppLogger.log(_restaruantAddressController.text, name: "address");
      AppLogger.log(_descriptionController.text, name: "description");
      AppLogger.log(_licenseFile.toString(), name: "license");
      AppLogger.log(_commercialRegister.toString(), name: "proof");

      //log all erros
      AppLogger.log(_restaruantNameErrorMessage.toString(), name: "name error");
      AppLogger.log(
        _restaruantAddressErrorMessage.toString(),
        name: "address error",
      );
      AppLogger.log(
        _descriptionErrorMessage.toString(),
        name: "description error",
      );
      AppLogger.log(_licenseErrorMessage.toString(), name: "license error");
      AppLogger.log(
        _commercialRegisterErrorMessage.toString(),
        name: "proof error",
      );
    }
  }

  @override
  void dispose() {
    _formKey.currentState?.dispose();
    _restaruantNameController.dispose();
    _restaruantAddressController.dispose();
    _descriptionController.dispose();
    _licenseFile = null;
    _commercialRegister = null;
    _restaruantNameErrorMessage = null;
    _restaruantAddressErrorMessage = null;
    _descriptionErrorMessage = null;
    _licenseErrorMessage = null;
    _commercialRegisterErrorMessage = null;

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //custom appbar [set title to center , and has back icon to implement pop()]
      appBar: const CustomAuthAppBar(title: "Restaurant Register"),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          padding: EdgeInsets.only(
            left: 16.w,
            right: 16.w,
            top: 18.h,
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
                    //********[ Restaurant name TextField ]********/
                    //Restaurant name label
                    textFieldLabelBuilder(context, "Name"),
                    //vertical space
                    verticalSpace(6.h),
                    //Restaurant name text field
                    CustomTextFormField(
                      controller: _restaruantNameController,
                      errorMessage: _restaruantNameErrorMessage,
                      hintText: "Enter restaurant name.",
                    ),
                    //vertical space
                    verticalSpace(8.h),

                    //********[ Restaurant address TextField ]********/
                    //Restaurant address label
                    textFieldLabelBuilder(context, "Address"),
                    //vertical space
                    verticalSpace(6.h),
                    //Restaurant Address text field
                    CustomTextFormField(
                      controller: _restaruantAddressController,
                      errorMessage: _restaruantAddressErrorMessage,
                      hintText: "Enter restaurant address.",
                    ),
                    //vertical space
                    verticalSpace(8.h),

                    //********[ description TextField ]********/
                    //description label
                    textFieldLabelBuilder(context, "Description"),
                    //vertical space
                    verticalSpace(6.h),
                    //description text field
                    CustomTextFormField(
                      controller: _descriptionController,
                      errorMessage: _descriptionErrorMessage,
                      hintText: "Enter a full description about restaurant.",
                    ),
                    //vertical space
                    verticalSpace(8.h),

                    //********[ license TextField ]********/
                    //license label
                    textFieldLabelBuilder(context, "License"),
                    //vertical space
                    verticalSpace(6.h),
                    //license text field
                    CustomTextFormField(
                      errorMessage: _licenseErrorMessage,
                      isFilePicker: true,
                      hintText: 'Upload restaurant license document.',
                      allowedExtensions: ['pdf'],
                      maxFileSizeMB: 5,
                      onFileSelected: (file) {
                        // store file in form state or bloc
                        setState(() => _licenseFile = file);
                      },
                    ),
                    //vertical space
                    verticalSpace(8.h),

                    //********[ Commercial Register TextField ]********/
                    //proof label
                    textFieldLabelBuilder(context, "Commercial Register"),
                    //vertical space
                    verticalSpace(6.h),
                    //Commercial Register text field
                    CustomTextFormField(
                      errorMessage: _commercialRegisterErrorMessage,
                      isFilePicker: true,
                      hintText:
                          'Upload restaurant commercial register document.',
                      allowedExtensions: ['pdf'],
                      maxFileSizeMB: 5,
                      onFileSelected: (file) {
                        // store file in form state or bloc
                        setState(() => _commercialRegister = file);
                      },
                    ),
                    //vertical space
                    verticalSpace(24.h),

                    //********[ Register Button ]********/
                    //register button
                    QCustomButton(
                      onTap: () {
                        _onSubmit();
                      },
                      child: EllipsedText(
                        text: "Register",
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
