import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geolocator/geolocator.dart';

import '../../../../../core/common/widgets/q_custom_button.dart';
import '../../../../../core/helpers/app_validators.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../../core/theme/theme_manager/theme_extensions.dart';
import '../../../../../core/utils/enums.dart';
import '../../../../../generated/l10n.dart';
import '../../../auth_choice/presentation/widgets/ellipsed_text.dart';
import '../../../login/presentation/widgets/custom_auth_appbar.dart';
import '../../../login/presentation/widgets/custom_text_form_field.dart';
import '../../../login/presentation/widgets/text_field_label_builder.dart';
import '../logic/cubit/register_charity_cubit.dart';

class RegisterCharityScreenImpl extends StatefulWidget {
  const RegisterCharityScreenImpl({super.key});

  @override
  State<RegisterCharityScreenImpl> createState() =>
      _RegisterCharityScreenImplState();
}

class _RegisterCharityScreenImplState extends State<RegisterCharityScreenImpl> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _charityNameController = TextEditingController();
  final TextEditingController _charityAddressController =
      TextEditingController();
  final TextEditingController _capacityController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  int? _selectedCharityType;
  File? _licenseFile;
  File? _proofFile;
  double? _latitude;
  double? _longitude;

  String? _charityNameErrorMessage;
  String? _charityAddressErrorMessage;
  String? _capacityErrorMessage;
  String? _charityTypeErrorMessage;
  String? _descriptionErrorMessage;
  String? _licenseErrorMessage;
  String? _proofErrorMessage;

  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
  }

  Future<void> _getCurrentLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Check if location service is enabled
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return;
    }

    // Check permission
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return;
    }

    //Get current position
    final position = await Geolocator.getCurrentPosition(
      locationSettings: const LocationSettings(
        accuracy: LocationAccuracy.high,
        distanceFilter: 10,
      ),
    );

    setState(() {
      _latitude = position.latitude;
      _longitude = position.longitude;
    });
  }

  void _onSubmit() async {
    setState(() {
      //set _nameErrorMessage
      _charityNameErrorMessage = AppValidators.validateName(
        _charityNameController.text,
      );
      //set _addressErrorMessage
      _charityAddressErrorMessage = AppValidators.validateAddress(
        _charityAddressController.text,
      );
      //set _capacityErrorMessage
      _capacityErrorMessage = AppValidators.validateCapacity(
        _capacityController.text,
      );
      //set _typeErrorMessage
      _charityTypeErrorMessage = AppValidators.validateCharityType(
        _selectedCharityType,
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
        _proofErrorMessage == null &&
        _latitude != null &&
        _longitude != null) {
      await context.read<RegisterCharityCubit>().registerCharity(
        name: _charityNameController.text,
        description: _descriptionController.text,
        address: _charityAddressController.text,
        latitude: _latitude!,
        longitude: _longitude!,
        capacity: int.parse(_capacityController.text),
        type: _selectedCharityType!,
        licenseDocument: _licenseFile!,
        proofDocument: _proofFile!,
      );
      //log all data
    } else {
      if (_latitude == null || _longitude == null) {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog.adaptive(
              title: const Text("Location Permission"),
              content: const Text(
                "please , give the app the permission to access your location",
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text("Cancel"),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    _getCurrentLocation();
                  },
                  child: const Text("Ok"),
                ),
              ],
            );
          },
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //custom appbar [set title to center , and has back icon to implement pop()]
      appBar: CustomAuthAppBar(title: S.of(context).charityRegister),
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
                    //********[ charity name TextField ]********/
                    //charity Name TextField
                    textFieldLabelBuilder(context, S.of(context).charityName),
                    //vertical space
                    verticalSpace(6.h),
                    //charity name text field
                    CustomTextFormField(
                      controller: _charityNameController,
                      errorMessage: _charityNameErrorMessage,
                      hintText: S.of(context).enterCharityName,
                    ),
                    //vertical space
                    verticalSpace(8.h),

                    //********[ charity address TextField ]********/
                    //charity address label
                    textFieldLabelBuilder(context, S.of(context).address),
                    //vertical space
                    verticalSpace(6.h),
                    //Charity Address text field
                    CustomTextFormField(
                      controller: _charityAddressController,
                      errorMessage: _charityAddressErrorMessage,
                      hintText: S.of(context).enterCharityAddress,
                    ),
                    //vertical space
                    verticalSpace(8.h),

                    //********[ capacity TextField ]********/
                    //capacity label
                    textFieldLabelBuilder(context, S.of(context).capacity),
                    //vertical space
                    verticalSpace(6.h),
                    //Capacity text field
                    CustomTextFormField(
                      controller: _capacityController,
                      errorMessage: _capacityErrorMessage,
                      hintText: S.of(context).enterCharityCapacity,
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
                        return DropdownMenuItem<int>(
                          value: type.value,
                          child: Text(type.uiName),
                        );
                      }).toList(),
                      selectedDropdownValue: _selectedCharityType,
                      onDropdownChanged: (value) {
                        setState(() => _selectedCharityType = value);
                        log(_selectedCharityType.toString());
                      },
                      dropdownHintText: S.of(context).enterCharityType,
                      errorMessage: _charityTypeErrorMessage,
                    ),
                    //vertical space
                    verticalSpace(8.h),

                    //********[ description TextField ]********/
                    //description label
                    textFieldLabelBuilder(context, S.of(context).description),
                    //vertical space
                    verticalSpace(6.h),
                    //description text field
                    CustomTextFormField(
                      controller: _descriptionController,
                      errorMessage: _descriptionErrorMessage,
                      hintText: S.of(context).enterFullDescriptionCharity,
                    ),
                    //vertical space
                    verticalSpace(8.h),

                    //********[ license TextField ]********/
                    //license label
                    textFieldLabelBuilder(context, S.of(context).license),
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
                        text: S.of(context).register,
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
