import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/common/buttons/custom_button.dart';
import 'package:qoot/core/helpers/app_logger.dart';
import 'package:qoot/core/helpers/app_validators.dart';
import 'package:qoot/core/helpers/spacing.dart';
import 'package:qoot/core/theme/app_texts/app_text_styles.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';
import 'package:qoot/features/auth/auth_choice/presentation/widgets/ellipsed_text.dart';
import '../../../../../core/utils/enums.dart';
import '../../../login/presentation/widgets/custom_auth_appbar.dart';
import '../../../login/presentation/widgets/custom_text_form_field.dart';
import '../../../login/presentation/widgets/text_field_label_builder.dart';

class RegisterCharityScreen extends StatefulWidget {
  const RegisterCharityScreen({super.key});

  @override
  State<RegisterCharityScreen> createState() => _RegisterCharityScreenState();
}

class _RegisterCharityScreenState extends State<RegisterCharityScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _charityNameController = TextEditingController();
  final TextEditingController _charityAddressController = TextEditingController();
  final TextEditingController _capacityController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  int? _selectedCharityType;
  File? _licenseFile;
  File? _proofFile;

  String? _charityNameErrorMessage;
  String? _charityAddressErrorMessage;
  String? _capacityErrorMessage;
  String? _charityTypeErrorMessage;
  String? _descriptionErrorMessage;
  String? _licenseErrorMessage;
  String? _proofErrorMessage;

  void _onSubmit() {
    setState(() {
      //set _nameErrorMessage
      _charityNameErrorMessage = AppValidators.validateName(_charityNameController.text);
      //set _addressErrorMessage
      _charityAddressErrorMessage = AppValidators.validateAddress(_charityAddressController.text);
      //set _capacityErrorMessage
      _capacityErrorMessage = AppValidators.validateCapacity(_capacityController.text);
      //set _typeErrorMessage
      _charityTypeErrorMessage = AppValidators.validateCharityType(_selectedCharityType);
      //set _descriptionErrorMessage
      _descriptionErrorMessage = AppValidators.validateDescription(_descriptionController.text);
      //set _licenseErrorMessage
      _licenseErrorMessage = AppValidators.validateFile(
        _licenseFile,
        allowedExtensions: ['pdf'],
        maxFileSizeMB: 5,
        fieldName: "License",
      );
      //set _proofErrorMessage
      _proofErrorMessage = AppValidators.validateFile(
        _proofFile,
        allowedExtensions: ['pdf'],
        maxFileSizeMB: 5,
        fieldName: "Proof",
      );
    });
    if (_charityNameErrorMessage == null &&
        _charityAddressErrorMessage == null &&
        _capacityErrorMessage == null &&
        _charityTypeErrorMessage == null &&
        _descriptionErrorMessage == null &&
        _licenseErrorMessage == null &&
        _proofErrorMessage == null) {
      AppLogger.log("validated and submited", name: "Success");
    } else {
      //print all values
      AppLogger.log(_charityNameController.text, name: "name");
      AppLogger.log(_charityAddressController.text, name: "address");
      AppLogger.log(_capacityController.text, name: "capacity");
      AppLogger.log(_selectedCharityType.toString(), name: "type");
      AppLogger.log(_descriptionController.text, name: "description");
      AppLogger.log(_licenseFile.toString(), name: "license");
      AppLogger.log(_proofFile.toString(), name: "proof");

      //log all erros
      AppLogger.log(_charityNameErrorMessage.toString(), name: "name error");
      AppLogger.log(_charityAddressErrorMessage.toString(), name: "address error");
      AppLogger.log(_capacityErrorMessage.toString(), name: "capacity error");
      AppLogger.log(_charityTypeErrorMessage.toString(), name: "type error");
      AppLogger.log(_descriptionErrorMessage.toString(), name: "description error");
      AppLogger.log(_licenseErrorMessage.toString(), name: "license error");
      AppLogger.log(_proofErrorMessage.toString(), name: "proof error");
    }
  }

  @override
  void dispose() {
    _formKey.currentState?.dispose();
    _charityNameController.dispose();
    _charityAddressController.dispose();
    _capacityController.dispose();
    _descriptionController.dispose();
    _charityNameErrorMessage = null;
    _charityAddressErrorMessage = null;
    _capacityErrorMessage = null;
    _charityTypeErrorMessage = null;
    _descriptionErrorMessage = null;
    _licenseErrorMessage = null;
    _proofErrorMessage = null;
    _selectedCharityType = null;
    _licenseFile = null;
    _proofFile = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //custom appbar [set title to center , and has back icon to implement pop()]
      appBar: CustomAuthAppBar(title: "Charity Register"),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 18.h, bottom: 34.h),
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
                    //********[ charity name TextField ]********/
                    //charity name label
                    textFieldLabelBuilder(context, "Name"),
                    //vertical space
                    verticalSpace(6.h),
                    //charity name text field
                    CustomTextFormField(
                      controller: _charityNameController,
                      errorMessage: _charityNameErrorMessage,
                      hintText: "Enter charity name.",
                    ),
                    //vertical space
                    verticalSpace(8.h),

                    //********[ charity address TextField ]********/
                    //charity address label
                    textFieldLabelBuilder(context, "Address"),
                    //vertical space
                    verticalSpace(6.h),
                    //Charity Address text field
                    CustomTextFormField(
                      controller: _charityAddressController,
                      errorMessage: _charityAddressErrorMessage,
                      hintText: "Enter charity address.",
                    ),
                    //vertical space
                    verticalSpace(8.h),

                    //********[ capacity TextField ]********/
                    //capacity label
                    textFieldLabelBuilder(context, "Capacity"),
                    //vertical space
                    verticalSpace(6.h),
                    //Capacity text field
                    CustomTextFormField(
                      controller: _capacityController,
                      errorMessage: _capacityErrorMessage,
                      hintText: "Enter charity capacity.",
                    ),
                    //vertical space
                    verticalSpace(8.h),

                    //********[ charity type TextField ]********/
                    //charity type label
                    textFieldLabelBuilder(context, "Type"),
                    //vertical space
                    verticalSpace(6.h),
                    //charity type text field
                    CustomTextFormField(
                      isDropdown: true,
                      dropdownItems: CharityType.values.map((type) {
                        return DropdownMenuItem<int>(value: type.value, child: Text(type.uiName));
                      }).toList(),
                      selectedDropdownValue: _selectedCharityType,
                      onDropdownChanged: (value) {
                        setState(() => _selectedCharityType = value);
                        log(_selectedCharityType.toString());
                      },
                      dropdownHintText: "Enter charity type.",
                      errorMessage: _charityTypeErrorMessage,
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
                      hintText: "Enter a full description about charity.",
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
                      hintText: 'Upload charity license document.',
                      allowedExtensions: ['pdf'],
                      maxFileSizeMB: 5,
                      onFileSelected: (file) {
                        // store file in form state or bloc
                        setState(() => _licenseFile = file);
                      },
                    ),
                    //vertical space
                    verticalSpace(8.h),

                    //********[ proof TextField ]********/
                    //proof label
                    textFieldLabelBuilder(context, "Proof"),
                    //vertical space
                    verticalSpace(6.h),
                    //proof text field
                    CustomTextFormField(
                      errorMessage: _proofErrorMessage,
                      isFilePicker: true,
                      hintText: 'Upload charity proof document.',
                      allowedExtensions: ['pdf'],
                      maxFileSizeMB: 5,
                      onFileSelected: (file) {
                        // store file in form state or bloc
                        setState(() => _proofFile = file);
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
