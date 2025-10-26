import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/common/widgets/custom_header_container.dart';
import '../../../../core/common/widgets/custom_search_text_field.dart';
import '../../../../core/helpers/extensions.dart';
import '../../../../core/utils/app_images.dart';
import '../widgets/restaurants_donate_now_section.dart';
import '../widgets/restaurants_sharing_kindness_section.dart';
import '../widgets/urgent_donations_restaurant_section.dart';
import '../../../../generated/l10n.dart';

class RestaurantHomeScreen extends StatelessWidget {
  const RestaurantHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomHeaderContainer(
            imagePath: AppImages.imagesOnboarding3,
            title: 'Hello, Restaurant Name',
            subtitle: S.of(context).restaurantHomeScreenSubtitle,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 16.h),
            child: Column(
              children: [
                const CustomSearchFormField(),
                24.h.ph,
                const RestaurantDonateNowSection(),
                21.h.ph,
                const RestaurantSharingKindnessSection(),
                21.h.ph,
                const RestaurantUrgentDonationsSection(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
