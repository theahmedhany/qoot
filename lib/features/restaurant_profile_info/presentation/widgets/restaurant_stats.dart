import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/data/local_data/current_user.dart';

import '../../../../core/helpers/extensions.dart';
import '../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../core/theme/theme_manager/theme_extensions.dart';
import '../../../../generated/l10n.dart';

class RestaurantStats extends StatelessWidget {
  const RestaurantStats({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        16.h.ph,
        Container(
          padding: EdgeInsets.all(16.h),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12.r),
            border: Border.all(color: context.customAppColors.grey100),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                S.of(context).status,
                style: AppTextStyles.font16Bold.copyWith(
                  color: context.customAppColors.grey900,
                ),
              ),

              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: context.customAppColors.primary800,
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Text(
                  CurrentUser.restaurantData.statusDisplayName,
                  style: AppTextStyles.font16Bold.copyWith(
                    color: context.customAppColors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
        16.h.ph,
      ],
    );
  }
}
