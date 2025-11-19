import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/data/local_data/current_user.dart';
import 'package:qoot/features/auth/register_account/domain/entities/user_entity.dart';
import '../../../../core/common/widgets/custom_header_container.dart';
import '../../../../core/common/widgets/custom_search_text_field.dart';
import '../../../../core/helpers/extensions.dart';
import '../../../../core/utils/app_images.dart';
import '../widgets/restaurants_donate_now_section.dart';
import '../widgets/restaurants_sharing_kindness_section.dart';
import '../widgets/urgent_donations_restaurant_section.dart';
import '../../../../generated/l10n.dart';

class RestaurantHomeScreenBody extends StatelessWidget {
  const RestaurantHomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    final UserEntity currentUser = CurrentUser.getCurrentUser();
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomHeaderContainer(
            imagePath: AppImages.imagesOnboarding3,
            title: 'Hello, ${currentUser.firstName} ${currentUser.lastName}!',
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
