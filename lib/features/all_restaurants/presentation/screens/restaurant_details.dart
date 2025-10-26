import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/common/widgets/custom_button.dart';
import '../../../../core/helpers/extensions.dart';
import '../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../core/theme/theme_manager/theme_extensions.dart';
import '../../../../core/utils/app_icons.dart';
import '../../../../core/utils/app_placeholder.dart';
import '../../../../generated/l10n.dart';
import '../widgets/custom_restaurant_card.dart';

class RestaurantDetailsBottomSheet extends StatelessWidget {
  const RestaurantDetailsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 16.h,
        top: 16.h,
      ),
      decoration: BoxDecoration(
        color: context.customAppColors.grey0,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: 40.w,
                height: 4.h,
                decoration: BoxDecoration(
                  color: context.customAppColors.grey200,
                  borderRadius: BorderRadius.circular(10.r),
                ),
              ),
            ),
            16.h.ph,
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    context.pop();
                  },
                  icon: Icon(
                    Icons.close,
                    color: context.customAppColors.grey900,
                  ),
                ),
                const Spacer(),
                Center(
                  child: Text(
                    'Restaurant Details',
                    style: AppTextStyles.font16SemiBold.copyWith(
                      color: context.customAppColors.grey900,
                    ),
                  ),
                ),
                20.w.pw,
                const Spacer(),
              ],
            ),
            20.h.ph,
            const CustomRestaurantCard(
              imageUrl: AppPlaceholder.placeholderPlace10,
              isContact: true,
            ),
            16.h.ph,
            Row(
              children: [
                Expanded(
                  child: _buildStatCard(
                    context,
                    value: '85',
                    label: 'Total Donations',
                    bgColor: context.customAppColors.primary700.withValues(
                      alpha: .15,
                    ),
                    textColor: context.customAppColors.primary800,
                  ),
                ),
                18.w.pw,
                Expanded(
                  child: _buildStatCard(
                    context,
                    value: '2,150',
                    label: 'Meals Donated',
                    bgColor: context.customAppColors.orangeGradient.first
                        .withValues(alpha: .15),
                    textColor: context.customAppColors.orangeGradient.first,
                  ),
                ),
              ],
            ),
            16.h.ph,
            Text(
              S.of(context).description,
              style: AppTextStyles.font16SemiBold.copyWith(
                color: context.customAppColors.grey900,
              ),
            ),
            12.h.ph,
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
              style: AppTextStyles.font12Regular.copyWith(
                color: context.customAppColors.grey700,
              ),
            ),
            16.h.ph,
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: context.customAppColors.grey200),
                borderRadius: BorderRadius.circular(12.r),
              ),
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
              child: Row(
                children: [
                  SvgPicture.asset(
                    AppIcons.iconsDonationOutline,
                    colorFilter: ColorFilter.mode(
                      context.customAppColors.grey900,
                      BlendMode.srcIn,
                    ),
                  ),
                  20.w.pw,
                  Expanded(
                    child: Text(
                      'View Donations',
                      style: AppTextStyles.font14Regular.copyWith(
                        color: context.customAppColors.grey900,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 16.sp,
                    color: context.customAppColors.grey600,
                  ),
                ],
              ),
            ),
            32.h.ph,
            CustomButton(
              text: 'Open Location',
              color: context.customAppColors.primary800,
            ),
            25.h.ph,
          ],
        ),
      ),
    );
  }

  Widget _buildStatCard(
    BuildContext context, {
    required String value,
    required String label,
    required Color bgColor,
    required Color textColor,
  }) {
    return Container(
      height: 68.h,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            value,
            style: AppTextStyles.font16Bold.copyWith(color: textColor),
          ),
          4.h.ph,
          Text(
            label,
            style: AppTextStyles.font12Regular.copyWith(
              color: context.customAppColors.grey700,
            ),
          ),
        ],
      ),
    );
  }
}
