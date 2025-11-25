import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/utils/dummy_restaurants.dart';
import 'package:qoot/features/all_restaurants/data/models/restaurants_with_donation/restaurants_with_donations_response.dart';

import '../../../../core/common/widgets/custom_button.dart';
import '../../../../core/helpers/extensions.dart';
import '../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../core/theme/theme_manager/theme_extensions.dart';
import '../../../../generated/l10n.dart';
import '../screens/restaurant_details.dart';

class CustomRestaurantCard extends StatelessWidget {
  const CustomRestaurantCard({
    super.key,
    required this.restaurantItem,
    required this.isContact,
  });
  final bool isContact;
  final RestaurantItem restaurantItem;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: context.customAppColors.grey100),
      ),
      child: Padding(
        padding: EdgeInsets.all(8.h),
        child: Row(
          children: [
            8.w.pw,
            ClipRRect(
              borderRadius: BorderRadius.circular(8.r),
              child: Image.network(
                DummyRestaurants.getRandom(),
                height: 80.h,
                width: 75.w,
                fit: BoxFit.cover,
              ),
            ),
            8.w.pw,
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 6.h),
                child: Column(
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      minVerticalPadding: 0,
                      horizontalTitleGap: 0,
                      visualDensity: const VisualDensity(
                        horizontal: 0,
                        vertical: -4,
                      ),
                      title: Text(
                        restaurantItem.name ?? "",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyles.font14SemiBold.copyWith(
                          color: context.customAppColors.grey900,
                        ),
                      ),
                      subtitle: Row(
                        children: [
                          Icon(
                            Icons.image_outlined,
                            color: context.customAppColors.primary800,
                            size: 14.sp,
                          ),
                          5.w.pw,
                          Expanded(
                            child: Text(
                              restaurantItem.address ?? '',
                              style: AppTextStyles.font12Regular.copyWith(
                                color: context.customAppColors.accent600,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                    3.h.ph,
                    Row(
                      children: [
                        Icon(Icons.star, size: 16.sp, color: Colors.amber),
                        5.w.pw,
                        Expanded(
                          child: Text(
                            '2.7',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: AppTextStyles.font12Regular.copyWith(
                              color: context.customAppColors.accent600,
                            ),
                          ),
                        ),
                        const Spacer(),
                        CustomButton(
                          onTap: () {
                            isContact
                                ? null
                                : showModalBottomSheet(
                                    context: context,
                                    isScrollControlled: true,
                                    backgroundColor: Colors.transparent,
                                    builder: (context) =>
                                        RestaurantDetailsBottomSheet(
                                          restaurantItem: restaurantItem,
                                        ),
                                  );
                          },
                          text: isContact
                              ? S.of(context).contact
                              : S.of(context).viewDetails,
                          height: 32.h,
                          width: 113.w,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
