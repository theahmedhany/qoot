import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qoot/core/common/widgets/custom_button.dart';
import 'package:qoot/core/common/widgets/custom_text_form_field.dart';
import 'package:qoot/core/common/widgets/snackbar_helper.dart';
import 'package:qoot/core/helpers/app_regex.dart';
import 'package:qoot/core/helpers/spacing.dart';
import 'package:qoot/core/theme/app_texts/app_fonts.dart';
import 'package:qoot/core/theme/app_texts/app_text_styles.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';
import 'package:qoot/core/utils/app_icons.dart';
import 'package:qoot/features/create_donation/presentation/manager/create_donation_cubit.dart';
import 'package:qoot/features/create_donation/presentation/widgets/create_donation_field.dart';
import 'package:qoot/features/create_donation/presentation/widgets/donation_images_grid_widget.dart';
import 'package:qoot/features/create_donation/presentation/widgets/image_picker_bottom_sheet.dart';
import 'package:qoot/generated/l10n.dart';

class CreateDonationForm extends StatelessWidget {
  const CreateDonationForm({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<CreateDonationCubit>();

    return Form(
      key: cubit.formKey,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.r, vertical: 8.r),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpace(16),

              CreateDonationField(
                label: S.of(context).createDonationScreenFoodTypeLabel,
                child: AppTextFormField(
                  controller: cubit.foodTypeController,
                  hintText: S
                      .of(context)
                      .createDonationScreenFoodTypeDescription,
                  backgroundColor: context.customAppColors.background,
                  hintStyle: AppTextStyles.font14SemiBold.copyWith(
                    color: context.customAppColors.grey500,
                  ),
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'يرجى إدخال نوع الطعام';
                    }
                    return null;
                  },
                ),
              ),

              verticalSpace(16),

              CreateDonationField(
                label: S.of(context).createDonationScreenDescriptionLabel,
                child: AppTextFormField(
                  controller: cubit.descriptionController,
                  hintText: S
                      .of(context)
                      .createDonationScreenDescriptionDescription,
                  backgroundColor: context.customAppColors.background,
                  hintStyle: AppTextStyles.font14SemiBold.copyWith(
                    color: context.customAppColors.grey500,
                  ),
                  maxLines: 3,
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'يرجى إدخال الوصف';
                    }
                    return null;
                  },
                ),
              ),

              verticalSpace(16),

              CreateDonationField(
                label: S.of(context).createDonationScreenEstimatedServingsLabel,
                child: AppTextFormField(
                  controller: cubit.estimatedServingsController,
                  hintText: S
                      .of(context)
                      .createDonationScreenEstimatedServingsDescription,
                  backgroundColor: context.customAppColors.background,
                  hintStyle: AppTextStyles.font14SemiBold.copyWith(
                    color: context.customAppColors.grey500,
                  ),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'يرجى إدخال عدد الحصص';
                    }
                    if (int.tryParse(value) == null) {
                      return 'يرجى إدخال رقم صحيح';
                    }
                    return null;
                  },
                ),
              ),

              verticalSpace(16),

              CreateDonationField(
                label: S.of(context).notes,
                child: AppTextFormField(
                  controller: cubit.specialInstructionsController,
                  hintText: S
                      .of(context)
                      .createDonationScreenDescriptionDescription,
                  backgroundColor: context.customAppColors.background,
                  hintStyle: AppTextStyles.font14SemiBold.copyWith(
                    color: context.customAppColors.grey500,
                  ),
                  maxLines: 2,
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'يرجى إدخال التعليمات الخاصة';
                    }
                    return null;
                  },
                ),
              ),

              verticalSpace(16),

              CreateDonationField(
                label: S.of(context).createDonationScreenExpiryDateLabel,
                child: GestureDetector(
                  onTap: () async {
                    final picked = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now().add(const Duration(days: 1)),
                      firstDate: DateTime.now(),
                      lastDate: DateTime.now().add(const Duration(days: 365)),
                      builder: (context, child) {
                        return Theme(
                          data: Theme.of(context).copyWith(
                            colorScheme: ColorScheme.light(
                              primary: context.customAppColors.primary800,
                              onPrimary: context.customAppColors.white,
                              surface: context.customAppColors.white,
                              onSurface: context.customAppColors.grey700,
                            ),
                            textButtonTheme: TextButtonThemeData(
                              style: TextButton.styleFrom(
                                foregroundColor:
                                    context.customAppColors.primary800,
                                textStyle: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: AppFonts.cairo,
                                ),
                              ),
                            ),
                            dialogTheme: DialogThemeData(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                              elevation: 8,
                            ),
                            datePickerTheme: DatePickerThemeData(
                              backgroundColor: context.customAppColors.white,
                              headerBackgroundColor:
                                  context.customAppColors.primary800,
                              headerForegroundColor:
                                  context.customAppColors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                              dayStyle: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                fontFamily: AppFonts.cairo,
                              ),
                              yearStyle: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                fontFamily: AppFonts.cairo,
                              ),
                              dayOverlayColor: WidgetStateProperty.resolveWith((
                                states,
                              ) {
                                if (states.contains(WidgetState.selected)) {
                                  return context.customAppColors.primary800
                                      .withValues(alpha: 0.12);
                                }
                                if (states.contains(WidgetState.hovered)) {
                                  return context.customAppColors.primary800
                                      .withValues(alpha: 0.08);
                                }
                                return null;
                              }),
                            ),
                          ),
                          child: child!,
                        );
                      },
                    );

                    if (picked != null) {
                      cubit.setExpiryDate(picked);
                    }
                  },
                  child: AbsorbPointer(
                    child: AppTextFormField(
                      controller: cubit.expiryDateController,
                      hintText: S
                          .of(context)
                          .createDonationScreenExpiryDateDescription,
                      backgroundColor: context.customAppColors.background,
                      hintStyle: AppTextStyles.font14SemiBold.copyWith(
                        color: context.customAppColors.grey500,
                      ),
                      suffixIcon: Padding(
                        padding: EdgeInsets.all(10.r),
                        child: SvgPicture.asset(
                          AppIcons.iconsDateCalendar,
                          width: 20.r,
                          height: 20.r,
                          colorFilter: ColorFilter.mode(
                            context.customAppColors.grey900,
                            BlendMode.srcIn,
                          ),
                        ),
                      ),
                      validator: (value) {
                        if (cubit.selectedExpiryDate == null) {
                          return 'يرجى اختيار تاريخ الانتهاء';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
              ),

              verticalSpace(16),

              CreateDonationField(
                label: S.of(context).createDonationScreenContactPersonLabel,
                child: AppTextFormField(
                  controller: cubit.contactPersonController,
                  hintText: S
                      .of(context)
                      .createDonationScreenContactPersonDescription,
                  backgroundColor: context.customAppColors.background,
                  hintStyle: AppTextStyles.font14SemiBold.copyWith(
                    color: context.customAppColors.grey500,
                  ),
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'يرجى إدخال اسم جهة الاتصال';
                    }
                    return null;
                  },
                ),
              ),

              verticalSpace(16),

              CreateDonationField(
                label: S.of(context).createDonationScreenContactPhoneLabel,
                child: AppTextFormField(
                  controller: cubit.contactPhoneController,
                  hintText: S
                      .of(context)
                      .createDonationScreenContactPhoneDescription,
                  backgroundColor: context.customAppColors.background,
                  hintStyle: AppTextStyles.font14SemiBold.copyWith(
                    color: context.customAppColors.grey500,
                  ),
                  keyboardType: TextInputType.phone,
                  validator: (value) {
                    if (value == null ||
                        value.trim().isEmpty ||
                        !AppRegex.isPhoneNumberValid(value.trim())) {
                      return 'يرجى إدخال رقم الهاتف';
                    }
                    return null;
                  },
                ),
              ),

              verticalSpace(24),

              ValueListenableBuilder<List<File>>(
                valueListenable: cubit.donationImagesNotifier,
                builder: (context, images, child) {
                  return DonationImagesGridWidget(
                    images: images,
                    maxImages: 3,
                    onImagesChanged: cubit.setDonationImages,
                    imagesLabelText: S
                        .of(context)
                        .createDonationScreenUploadImagesLabel,
                    onUploadTap: () =>
                        _showImagePickerBottomSheet(context, cubit),
                  );
                },
              ),

              verticalSpace(46),

              CustomButton(
                text: S.of(context).createDonationScreenSubmitDonation,
                color: context.customAppColors.primary800,
                border: 12.r,
                style: AppTextStyles.font16Bold.copyWith(
                  color: context.customAppColors.grey0,
                ),
                onTap: () {
                  validateThenCreateDonation(context);
                },
              ),

              verticalSpace(24),
            ],
          ),
        ),
      ),
    );
  }

  void validateThenCreateDonation(BuildContext context) {
    if (!context.read<CreateDonationCubit>().formKey.currentState!.validate()) {
      return;
    }

    if (context.read<CreateDonationCubit>().donationImages.isEmpty) {
      SnackbarHelper.showErrorSnackbar(
        context,
        'يرجى اختيار صورة واحدة على الأقل للتبرع.',
      );
      return;
    }

    if (context.read<CreateDonationCubit>().expiryDateController.text.isEmpty) {
      SnackbarHelper.showErrorSnackbar(
        context,
        'يرجى اختيار تاريخ انتهاء صلاحية الطعام.',
      );
      return;
    }

    context.read<CreateDonationCubit>().createDonation();
  }

  void _showImagePickerBottomSheet(
    BuildContext context,
    CreateDonationCubit cubit,
  ) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (BuildContext bottomSheetContext) {
        return ImagePickerBottomSheet(
          maxImages: 3,
          onImagesSelected: (images) {
            cubit.setDonationImages(images);
          },
        );
      },
    );
  }
}
