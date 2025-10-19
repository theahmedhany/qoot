import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/common/widgets/custom_button.dart';
import 'package:qoot/core/helpers/extensions.dart';
import 'package:qoot/core/theme/app_texts/app_text_styles.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';
import 'package:qoot/features/all_restaurants/presentation/screens/restaurant_details.dart';
import 'package:qoot/generated/l10n.dart';

class CustomRestaurantCard extends StatelessWidget {
  const CustomRestaurantCard({
    super.key,
    required this.imageUrl,
    this.isContact = false,
  });
  final String imageUrl;
  final bool isContact;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.h,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: context.customAppColors.grey100),
      ),
      child: Padding(
        padding: EdgeInsets.all(6.h),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.r),
              child: Image.asset(
                imageUrl,
                height: 75.h,
                width: 70.w,
                fit: BoxFit.cover,
              ),
            ),
            8.w.pw,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.h),
              child: SizedBox(
                height: 100.h,
                width: 230.w,
                child: Column(
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      minVerticalPadding: 0,
                      horizontalTitleGap: 0,
                      visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                      title: Text(
                        'Ambrosia Hotel & Restaurant',
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
                          Text(
                            'Ambrosia Hotel & Restaurant',
                            style: AppTextStyles.font12Regular.copyWith(
                              color: context.customAppColors.accent600,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    3.h.ph,
                    Row(
                      children: [
                        Icon(Icons.star, size: 16.sp, color: Colors.amber),
                        5.w.pw,
                        Text(
                          '2.7',
                          style: AppTextStyles.font12Regular.copyWith(
                            color: context.customAppColors.accent600,
                          ),
                        ),
                        Spacer(),
                        CustomButton(
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              builder: (context) =>
                                  const RestaurantDetailsBottomSheet(),
                            );
                          },
                          text: isContact
                              ? S.of(context).contact
                              : S.of(context).viewDetails,
                          hight: 32.h,
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
