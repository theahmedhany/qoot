import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geolocator/geolocator.dart';
import 'package:qoot/features/auth/register_restaurant/presentation/logic/cubit/register_restaurant_cubit.dart';

import '../../../../../core/common/widgets/q_custom_button.dart';
import '../../../../../core/helpers/app_validators.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../../core/theme/theme_manager/theme_extensions.dart';
import '../../../../../generated/l10n.dart';
import '../../../auth_choice/presentation/widgets/ellipsed_text.dart';
import '../../../login/presentation/widgets/custom_auth_appbar.dart';
import '../../../login/presentation/widgets/custom_text_form_field.dart';
import '../../../login/presentation/widgets/text_field_label_builder.dart';

class RegisterRestaurantScreenImpl extends StatefulWidget {
  const RegisterRestaurantScreenImpl({super.key});

  @override
  State<RegisterRestaurantScreenImpl> createState() =>
      _RegisterRestaurantScreenImplState();
}

class _RegisterRestaurantScreenImplState
    extends State<RegisterRestaurantScreenImpl> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _restaruantNameController =
      TextEditingController();
  final TextEditingController _restaruantAddressController =
      TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  File? _licenseFile;
  File? _commercialRegister;
  double? _latitude;
  double? _longitude;

  String? _restaruantNameErrorMessage;
  String? _restaruantAddressErrorMessage;
  String? _descriptionErrorMessage;
  String? _licenseErrorMessage;
  String? _commercialRegisterErrorMessage;

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
        _commercialRegisterErrorMessage == null &&
        _latitude != null &&
        _longitude != null) {
      await context.read<RegisterRestaurantCubit>().registerRestaurant(
        name: _restaruantNameController.text,
        description: _descriptionController.text,
        address: _restaruantAddressController.text,
        latitude: _latitude!,
        longitude: _longitude!,
        licenseDocument: _licenseFile!,
        commercialRegister: _commercialRegister!,
      );
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
      appBar: CustomAuthAppBar(title: S.of(context).restaurantRegister),
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
                    //restaurant Name TextField
                    textFieldLabelBuilder(context, S.of(context).restaurant),
                    //vertical space
                    verticalSpace(6.h),
                    //restaurant name text field
                    CustomTextFormField(
                      controller: _restaruantNameController,
                      errorMessage: _restaruantNameErrorMessage,
                      hintText: S.of(context).enterRestaurantName,
                    ),
                    //vertical space
                    verticalSpace(8.h),

                    //********[ Restaurant address TextField ]********/
                    //Restaurant address label
                    textFieldLabelBuilder(context, S.of(context).address),
                    //vertical space
                    verticalSpace(6.h),
                    //Restaurant Address text field
                    CustomTextFormField(
                      controller: _restaruantAddressController,
                      errorMessage: _restaruantAddressErrorMessage,
                      hintText: S.of(context).enterRestaurantAddress,
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
                      hintText: S.of(context).enterFullDescriptionRestaurant,
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
                    textFieldLabelBuilder(
                      context,
                      S.of(context).commercialRegister,
                    ),
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
