import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/data/local_data/current_user.dart';
import 'package:qoot/core/utils/dummy_restaurants.dart';
import 'package:qoot/features/auth/register_account/domain/entities/user_entity.dart';

import '../../../../core/common/widgets/custom_header_container.dart';
import '../../../../core/common/widgets/custom_search_text_field.dart';
import '../../../../core/helpers/extensions.dart';
import '../../../../generated/l10n.dart';
import '../widgets/restaurants_donate_now_section.dart';
import '../widgets/restaurants_sharing_kindness_section.dart';
import '../widgets/urgent_donations_restaurant_section.dart';

class RestaurantHomeScreenBody extends StatelessWidget {
  const RestaurantHomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    final UserEntity currentUser = CurrentUser.getCurrentUser();
    return Column(
      children: [
        CustomHeaderContainer(
          imagePath: DummyRestaurants.getRandom(),
          title: 'مرحبا، ${currentUser.firstName} ${currentUser.lastName}!',
          subtitle: S.of(context).restaurantHomeScreenSubtitle,
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                20.h.ph,
                const CustomSearchFormField(),
                20.h.ph,
                const RestaurantDonateNowSection(),
                20.h.ph,
                const RestaurantSharingKindnessSection(),
                20.h.ph,
                const RestaurantUrgentDonationsSection(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
