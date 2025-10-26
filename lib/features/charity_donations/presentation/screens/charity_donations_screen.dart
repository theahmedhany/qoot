import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/common/widgets/custom_text_form_field.dart';
import '../../../../core/helpers/extensions.dart';
import '../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../core/theme/theme_manager/theme_extensions.dart';
import '../../../../core/utils/app_icons.dart';
import '../../../../core/utils/app_placeholder.dart';
import '../../../../generated/l10n.dart';
import '../widgets/custom_available_donations_card.dart';

class CharityDonationsScreen extends StatelessWidget {
  const CharityDonationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                padding: EdgeInsets.only(top: 12.h, bottom: 32.h),
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return const CustomAvailableDonationsCard(
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
      ),
    );
  }
}
