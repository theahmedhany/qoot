import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qoot/core/common/widgets/custom_text_form_field.dart';
import 'package:qoot/core/helpers/extensions.dart';
import 'package:qoot/core/theme/app_texts/app_text_styles.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';
import 'package:qoot/core/utils/app_icons.dart';
import 'package:qoot/core/utils/app_placeholder.dart';
import 'package:qoot/features/charity_donations/presentation/widgets/custom_available_donations_card.dart';
import 'package:qoot/generated/l10n.dart';

class CharityDonationsScreen extends StatelessWidget {
  const CharityDonationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          48.h.ph,
          Text(
            S.of(context).charityDonationsAllAvailableDonations,
            style: AppTextStyles.font20Bold.copyWith(
              color: context.customAppColors.grey900,
            ),
          ),
          12.h.ph,
          AppTextFormField(
            prefixIcon: Padding(
              padding: EdgeInsets.all(12.h),
              child: SvgPicture.asset(
                AppIcons.iconsSearch,
                height: 16.h,
                width: 16.h,
              ),
            ),
            hintText: 'Search for orphanage or donation...',
          ),
          12.h.ph,
          Expanded(
            child: ListView.separated(
              itemCount: 4,
              itemBuilder: (context, index) {
                return CustomAvailableDonationsCard(
                  imageUrl: AppPlaceholder.placeholderFood5,
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return 12.h.ph;
              },
            ),
          ),
        ],
      ),
    );
  }
}
