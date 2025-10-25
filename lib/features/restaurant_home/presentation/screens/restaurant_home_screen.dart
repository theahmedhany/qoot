import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/common/widgets/custom_header_container.dart';
import 'package:qoot/core/common/widgets/custom_search_text_field.dart';
import 'package:qoot/core/helpers/extensions.dart';
import 'package:qoot/core/utils/app_images.dart';
import 'package:qoot/features/restaurant_home/presentation/widgets/restaurants_donate_now_section.dart';
import 'package:qoot/features/restaurant_home/presentation/widgets/restaurants_sharing_kindness_section.dart';
import 'package:qoot/features/restaurant_home/presentation/widgets/urgent_donations_restaurant_section.dart';
import 'package:qoot/generated/l10n.dart';

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
