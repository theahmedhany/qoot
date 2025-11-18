import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/common/widgets/custom_app_bar.dart';
import 'package:qoot/core/common/widgets/custom_button.dart';
import 'package:qoot/core/common/widgets/custom_text_form_field.dart';
import 'package:qoot/core/helpers/extensions.dart';
import 'package:qoot/generated/l10n.dart';
import 'package:qoot/core/theme/app_texts/app_text_styles.dart';

class EditCharityInfoScreen extends StatefulWidget {
  const EditCharityInfoScreen({super.key});

  @override
  State<EditCharityInfoScreen> createState() => _EditCharityInfoScreenState();
}

class _EditCharityInfoScreenState extends State<EditCharityInfoScreen> {
  final nameController = TextEditingController();
  final addressController = TextEditingController();
  final descriptionController = TextEditingController();
  final capacityController = TextEditingController();
  final latitudeController = TextEditingController();
  final longitudeController = TextEditingController();
  final typeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                20.h.ph,

                /// TOP BAR
                CustomAppBar(text: S.of(context).editCharityInfo),
                20.h.ph,

                /// SECTION TITLE
                Text(
                  S.of(context).charityInformation,
                  style: AppTextStyles.font18SemiBold.copyWith(
                    color: colorScheme.secondary,
                  ),
                ),
                20.h.ph,

                /// NAME
                _buildLabel("Name"),
                AppTextFormField(
                  controller: nameController,
                  hintText: "Enter name",
                  inputTextStyle: AppTextStyles.font16Regular,
                  hintStyle: AppTextStyles.font14Regular.copyWith(
                    color: colorScheme.secondary.withValues(alpha: .4),
                  ),
                ),
                16.h.ph,

                /// ADDRESS
                _buildLabel("Address"),
                AppTextFormField(
                  controller: addressController,
                  hintText: "Enter address",
                  inputTextStyle: AppTextStyles.font16Regular,
                  hintStyle: AppTextStyles.font14Regular.copyWith(
                    color: colorScheme.secondary.withValues(alpha: .4),
                  ),
                ),
                16.h.ph,

                /// CAPACITY
                _buildLabel("Capacity"),
                AppTextFormField(
                  controller: capacityController,
                  keyboardType: TextInputType.number,
                  hintText: "Enter capacity",
                  inputTextStyle: AppTextStyles.font16Regular,
                  hintStyle: AppTextStyles.font14Regular.copyWith(
                    color: colorScheme.secondary.withValues(alpha: .4),
                  ),
                ),
                16.h.ph,

                /// LATITUDE
                _buildLabel("Latitude"),
                AppTextFormField(
                  controller: latitudeController,
                  keyboardType: TextInputType.number,
                  hintText: "Enter latitude",
                  inputTextStyle: AppTextStyles.font16Regular,
                  hintStyle: AppTextStyles.font14Regular.copyWith(
                    color: colorScheme.secondary.withValues(alpha: .4),
                  ),
                ),
                16.h.ph,

                /// LONGITUDE
                _buildLabel("Longitude"),
                AppTextFormField(
                  controller: longitudeController,
                  keyboardType: TextInputType.number,
                  hintText: "Enter longitude",
                  inputTextStyle: AppTextStyles.font16Regular,
                  hintStyle: AppTextStyles.font14Regular.copyWith(
                    color: colorScheme.secondary.withValues(alpha: .4),
                  ),
                ),
                16.h.ph,

                /// TYPE
                _buildLabel("Type"),
                AppTextFormField(
                  controller: typeController,
                  keyboardType: TextInputType.number,
                  hintText: "Enter type",
                  inputTextStyle: AppTextStyles.font16Regular,
                  hintStyle: AppTextStyles.font14Regular.copyWith(
                    color: colorScheme.secondary.withValues(alpha: .4),
                  ),
                ),
                16.h.ph,

                /// DESCRIPTION
                _buildLabel("Description"),
                AppTextFormField(
                  controller: descriptionController,
                  maxLines: 3,
                  hintText: "Enter description",
                  inputTextStyle: AppTextStyles.font16Regular,
                  hintStyle: AppTextStyles.font14Regular.copyWith(
                    color: colorScheme.secondary.withValues(alpha: .4),
                  ),
                ),
                30.h.ph,

                /// SAVE BUTTON
                CustomButton(text: S.of(context).saveChanges, height: 60.h),
                40.h.ph,
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLabel(String text) {
    return Padding(
      padding: EdgeInsets.only(bottom: 6.h),
      child: Text(
        text,
        style: AppTextStyles.font14SemiBold,
      ),
    );
  }
}
