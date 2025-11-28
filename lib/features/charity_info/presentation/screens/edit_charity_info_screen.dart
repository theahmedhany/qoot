import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/common/widgets/custom_app_bar.dart';
import 'package:qoot/core/common/widgets/custom_button.dart';
import 'package:qoot/core/common/widgets/custom_text_form_field.dart';
import 'package:qoot/core/common/widgets/custom_loading.dart';
import 'package:qoot/core/common/widgets/snackbar_helper.dart';
import 'package:qoot/core/di/service_locator.dart';
import 'package:qoot/core/helpers/extensions.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';
import 'package:qoot/features/charity_info/data/models/my_charity/charity_response.dart';
import 'package:qoot/features/charity_info/data/models/update_charity/update_charity_request.dart';
import 'package:qoot/features/charity_info/presentation/logic/update_charity/update_charity_cubit.dart';
import 'package:qoot/features/charity_info/presentation/logic/update_charity/update_charity_state.dart';
import 'package:qoot/generated/l10n.dart';
import 'package:qoot/core/theme/app_texts/app_text_styles.dart';

class EditCharityInfoScreen extends StatefulWidget {
  const EditCharityInfoScreen({super.key, required this.charity});
  final CharityData charity;

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
  void initState() {
    super.initState();
    nameController.text = widget.charity.name;
    addressController.text = widget.charity.address;
    descriptionController.text = widget.charity.description;
    capacityController.text = widget.charity.capacity.toString();
    latitudeController.text = widget.charity.latitude.toString();
    longitudeController.text = widget.charity.longitude.toString();
    typeController.text = widget.charity.type.toString();
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return BlocProvider(
      create: (_) => getIt<UpdateCharityCubit>(),
      child: BlocConsumer<UpdateCharityCubit, UpdateCharityState>(
        listener: (context, state) {
          state.maybeWhen(
            success: (data) {
              SnackbarHelper.showSuccessSnackbar(
                context,
                S.of(context).saveChanges + " " + S.of(context).success,
                onDismissed: () {
                  Navigator.pop(context, true);
                },
              );
            },
            failure: (message) {
              SnackbarHelper.showErrorSnackbar(context, message);
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => Scaffold(
              body: Center(child: CustomLoading(size: 60.h)),
            ),
            orElse: () => Scaffold(
              body: SafeArea(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        20.h.ph,
                        CustomAppBar(text: S.of(context).editCharityInfo),
                        20.h.ph,
                        Text(
                          S.of(context).charityInformation,
                          style: AppTextStyles.font18SemiBold.copyWith(
                            color: colorScheme.secondary,
                          ),
                        ),
                        20.h.ph,
                        _buildLabel(S.of(context).name),
                        AppTextFormField(
                          controller: nameController,
                          hintText: S.of(context).enterName,
                          inputTextStyle: AppTextStyles.font16Regular,
                          hintStyle: AppTextStyles.font14Regular.copyWith(
                            color: colorScheme.secondary.withValues(alpha: .4),
                          ),
                        ),
                        16.h.ph,
                        _buildLabel(S.of(context).address),
                        AppTextFormField(
                          controller: addressController,
                          hintText: S.of(context).enterAddress,
                          inputTextStyle: AppTextStyles.font16Regular,
                          hintStyle: AppTextStyles.font14Regular.copyWith(
                            color: colorScheme.secondary.withValues(alpha: .4),
                          ),
                        ),
                        16.h.ph,
                        _buildLabel(S.of(context).capacity),
                        AppTextFormField(
                          controller: capacityController,
                          keyboardType: TextInputType.number,
                          hintText: S.of(context).enterCapacity,
                          inputTextStyle: AppTextStyles.font16Regular,
                          hintStyle: AppTextStyles.font14Regular.copyWith(
                            color: colorScheme.secondary.withValues(alpha: 0.4),
                          ),
                        ),
                        16.h.ph,
                        _buildLabel(S.of(context).latitude),
                        AppTextFormField(
                          controller: latitudeController,
                          keyboardType: TextInputType.number,
                          hintText: S.of(context).enterLatitude,
                          inputTextStyle: AppTextStyles.font16Regular,
                          hintStyle: AppTextStyles.font14Regular.copyWith(
                            color: colorScheme.secondary.withValues(alpha: 0.4),
                          ),
                        ),
                        16.h.ph,
                        _buildLabel(S.of(context).longitude),
                        AppTextFormField(
                          controller: longitudeController,
                          keyboardType: TextInputType.number,
                          hintText: S.of(context).enterLongitude,
                          inputTextStyle: AppTextStyles.font16Regular,
                          hintStyle: AppTextStyles.font14Regular.copyWith(
                            color: colorScheme.secondary.withValues(alpha: 0.4),
                          ),
                        ),
                        16.h.ph,
                        _buildLabel(S.of(context).type),
                        AppTextFormField(
                          controller: typeController,
                          keyboardType: TextInputType.number,
                          hintText: S.of(context).enterType,
                          inputTextStyle: AppTextStyles.font16Regular,
                          hintStyle: AppTextStyles.font14Regular.copyWith(
                            color: colorScheme.secondary.withValues(alpha: .4),
                          ),
                        ),
                        16.h.ph,
                        _buildLabel(S.of(context).description),
                        AppTextFormField(
                          controller: descriptionController,
                          maxLines: 3,
                          hintText: S.of(context).enterDescription,
                          inputTextStyle: AppTextStyles.font16Regular,
                          hintStyle: AppTextStyles.font14Regular.copyWith(
                            color: colorScheme.secondary.withValues(alpha: 0.4),
                          ),
                        ),
                        30.h.ph,
                        CustomButton(
                          text: S.of(context).saveChanges,
                          height: 60.h,
                          onTap: () {
                            final request = UpdateCharityRequest(
                              name: nameController.text,
                              address: addressController.text,
                              description: descriptionController.text,
                              capacity:
                                  int.tryParse(capacityController.text) ?? 0,
                              latitude:
                                  double.tryParse(latitudeController.text) ?? 0,
                              longitude:
                                  double.tryParse(longitudeController.text) ??
                                  0,
                              type: int.tryParse(typeController.text) ?? 0,
                            );
                            context.read<UpdateCharityCubit>().updateCharity(
                              request,
                              context,
                            );
                          },
                        ),
                        40.h.ph,
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildLabel(String text) {
    return Padding(
      padding: EdgeInsets.only(bottom: 6.h),
      child: Text(
        text,
        style: AppTextStyles.font14SemiBold.copyWith(
          color: context.customAppColors.grey900,
        ),
      ),
    );
  }
}
