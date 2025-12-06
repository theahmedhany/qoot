import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qoot/core/common/widgets/snackbar_helper.dart';
import 'package:qoot/core/routing/routes.dart';
import 'package:qoot/features/all_restaurants/data/models/restaurants_with_donation/restaurants_with_donations_response.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/common/widgets/custom_button.dart';
import '../../../../core/helpers/extensions.dart';
import '../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../core/theme/theme_manager/theme_extensions.dart';
import '../../../../core/utils/app_icons.dart';
import '../../../../generated/l10n.dart';
import '../widgets/custom_restaurant_card.dart';

class RestaurantDetailsBottomSheet extends StatelessWidget {
  const RestaurantDetailsBottomSheet({super.key, required this.restaurantItem});
  final RestaurantItem restaurantItem;
  @override
  Widget build(BuildContext context) {
    Future<void> openMap(double latitude, double longitude) async {
      final googleMapUrl = Uri.parse(
        'geo:$latitude,$longitude?q=$latitude,$longitude(Restaurant)',
      );
      final appleMapUrl = Uri.parse(
        'https://maps.apple.com/?q=$latitude,$longitude',
      );
      debugPrint('Trying to open Google Maps: $googleMapUrl');
      if (await canLaunchUrl(googleMapUrl)) {
        await launchUrl(googleMapUrl, mode: LaunchMode.externalApplication);
      } else if (await canLaunchUrl(appleMapUrl)) {
        await launchUrl(appleMapUrl, mode: LaunchMode.externalApplication);
      } else {
        SnackbarHelper.showErrorSnackbar(
          context,
          'تعذر فتح الخريطة. تأكد من تثبيت تطبيق خرائط.',
        );
      }
    }

    return Container(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 16.h,
        top: 16.h,
      ),
      decoration: BoxDecoration(
        color: context.customAppColors.background,
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
                    S.of(context).restaurantDetails,
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
            CustomRestaurantCard(
              restaurantItem: restaurantItem,
              isContact: true,
            ),
            16.h.ph,
            Row(
              children: [
                Expanded(
                  child: _buildStatCard(
                    context,
                    value: '85',
                    label: S.of(context).totalDonations,
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
                    label: S.of(context).mealsDonated,
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
              restaurantItem.description ?? "",
              style: AppTextStyles.font12Regular.copyWith(
                color: context.customAppColors.grey700,
              ),
            ),
            16.h.ph,
            GestureDetector(
              onTap: () {
                context.pushNamed(
                  Routes.restaurantDonationsPage,
                  arguments: restaurantItem.id.toString(),
                );
              },
              child: Container(
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
                        S.of(context).viewDonations,
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
            ),
            32.h.ph,
            CustomButton(
              onTap: () {
                final lat = restaurantItem.latitude;
                final lng = restaurantItem.longitude;

                if (lat != null && lng != null) {
                  openMap(lat, lng);
                } else {
                  SnackbarHelper.showErrorSnackbar(
                    context,
                    'الموقع غير متاح حالياً',
                  );
                }
              },
              text: S.of(context).openLocation,
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
      height: 76.h,
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
