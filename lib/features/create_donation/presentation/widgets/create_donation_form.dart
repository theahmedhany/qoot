import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qoot/core/common/widgets/custom_button.dart';
import 'package:qoot/core/common/widgets/custom_text_form_field.dart';
import 'package:qoot/core/common/widgets/custom_upload_container.dart';
import 'package:qoot/core/helpers/spacing.dart';
import 'package:qoot/core/theme/app_texts/app_text_styles.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';
import 'package:qoot/core/utils/app_icons.dart';
import 'package:qoot/features/create_donation/presentation/widgets/create_donation_field.dart';
import 'package:qoot/generated/l10n.dart';

class CreateDonationForm extends StatelessWidget {
  const CreateDonationForm({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          verticalSpace(16),

          CreateDonationField(
            label: S.of(context).createDonationScreenFoodTypeLabel,
            child: AppTextFormField(
              hintText: S.of(context).createDonationScreenFoodTypeDescription,
              backgroundColor: context.customAppColors.background,
              hintStyle: AppTextStyles.font14SemiBold.copyWith(
                color: context.customAppColors.grey500,
              ),
            ),
          ),

          verticalSpace(16),

          CreateDonationField(
            label: S.of(context).createDonationScreenDescriptionLabel,
            child: AppTextFormField(
              hintText: S
                  .of(context)
                  .createDonationScreenDescriptionDescription,
              backgroundColor: context.customAppColors.background,
              hintStyle: AppTextStyles.font14SemiBold.copyWith(
                color: context.customAppColors.grey500,
              ),
            ),
          ),

          verticalSpace(16),

          CreateDonationField(
            label: S.of(context).createDonationScreenEstimatedServingsLabel,
            child: AppTextFormField(
              hintText: S
                  .of(context)
                  .createDonationScreenEstimatedServingsDescription,
              backgroundColor: context.customAppColors.background,
              hintStyle: AppTextStyles.font14SemiBold.copyWith(
                color: context.customAppColors.grey500,
              ),
            ),
          ),

          verticalSpace(16),

          CreateDonationField(
            label: S.of(context).createDonationScreenExpiryDateLabel,
            child: AppTextFormField(
              hintText: S.of(context).createDonationScreenExpiryDateDescription,
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
            ),
          ),

          verticalSpace(16),

          CreateDonationField(
            label: S.of(context).createDonationScreenContactPersonLabel,
            child: AppTextFormField(
              hintText: S
                  .of(context)
                  .createDonationScreenContactPersonDescription,
              backgroundColor: context.customAppColors.background,
              hintStyle: AppTextStyles.font14SemiBold.copyWith(
                color: context.customAppColors.grey500,
              ),
            ),
          ),

          verticalSpace(16),

          CreateDonationField(
            label: S.of(context).createDonationScreenContactPhoneLabel,
            child: AppTextFormField(
              hintText: S
                  .of(context)
                  .createDonationScreenContactPhoneDescription,
              backgroundColor: context.customAppColors.background,
              hintStyle: AppTextStyles.font14SemiBold.copyWith(
                color: context.customAppColors.grey500,
              ),
              keyboardType: TextInputType.phone,
            ),
          ),

          verticalSpace(24),

          CustomUploadContainer(
            title: S.of(context).createDonationScreenUploadImagesLabel,
            icon: AppIcons.iconsImageUpload,
            onTap: () {},
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
              // Handle submission logic here.
            },
          ),

          verticalSpace(24),
        ],
      ),
    );
  }
}
