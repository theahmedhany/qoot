import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qoot/core/common/widgets/custom_build_tag.dart';
import 'package:qoot/core/common/widgets/custom_button.dart';
import 'package:qoot/core/helpers/extensions.dart';
import 'package:qoot/core/theme/app_texts/app_text_styles.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';
import 'package:qoot/core/utils/app_icons.dart';
import 'package:qoot/generated/l10n.dart';

class CustomReservationsCard extends StatelessWidget {
  const CustomReservationsCard({
    super.key,
    required this.imageUrl,
    required this.status,
    required this.statusTextColor,
    required this.statusBackgroundColor,
  });

  final String imageUrl;
  final String status;
  final Color statusTextColor;
  final Color statusBackgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160.h,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: context.customAppColors.grey100),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 10.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.r),
                  child: Image.asset(
                    imageUrl,
                    height: 70.h,
                    width: 70.h,
                    fit: BoxFit.cover,
                  ),
                ),
                12.w.pw,
                SizedBox(
                  width: 220.w,
                  child: Column(
                    children: [
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        dense: true,
                        visualDensity: const VisualDensity(vertical: -4),
                        title: Text(
                          'Bella Vista Restaurant',
                          style: AppTextStyles.font14SemiBold.copyWith(
                            color: context.customAppColors.grey900,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        subtitle: Text(
                          'Italian Cuisine',
                          style: AppTextStyles.font12Regular.copyWith(
                            color: context.customAppColors.accent600,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        trailing: CustomBuildTag(
                          text: status,
                          textColor: statusTextColor,
                          backgroundColor: statusBackgroundColor,
                        ),
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(AppIcons.peopleFilldIcon),
                          8.w.pw,
                          Text(
                            '25 servings',
                            style: AppTextStyles.font12Regular.copyWith(
                              color: context.customAppColors.accent600,
                            ),
                          ),
                          30.w.pw,
                          SvgPicture.asset(AppIcons.clockIcon),
                          8.w.pw,
                          Text(
                            'Expires: 9 PM',
                            style: AppTextStyles.font12Regular.copyWith(
                              color: context.customAppColors.error500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            8.h.ph,
            CustomButton(text: S.of(context).confirmPickup, height: 40.h),
          ],
        ),
      ),
    );
  }
}
