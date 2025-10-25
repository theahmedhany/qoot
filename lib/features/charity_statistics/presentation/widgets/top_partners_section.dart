import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/helpers/extensions.dart';
import 'package:qoot/core/theme/app_texts/app_text_styles.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';
import 'top_partner_item.dart';

class TopPartnersSection extends StatelessWidget {
  const TopPartnersSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: context.customAppColors.grey100),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 16.h, top: 16.h),
            child: Text(
              "Top Partner Restaurants",
              style: AppTextStyles.font18SemiBold.copyWith(
                color: context.customAppColors.grey900,
              ),
            ),
          ),
          16.h.ph,
          TopPartnerItem(
            rank: 1,
            name: "Al-Amal Restaurant",
            meals: "1,200 meals donated",
            color: context.customAppColors.warning500,
          ),

          TopPartnerItem(
            rank: 2,
            name: "Nour Restaurant",
            meals: "900 meals donated",
            color: context.customAppColors.grey400,
          ),

          TopPartnerItem(
            rank: 3,
            name: "Barakah Kitchen",
            meals: "750 meals donated",
            color: context.customAppColors.accent700,
          ),
        ],
      ),
    );
  }
}
