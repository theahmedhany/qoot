import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/helpers/extensions.dart';
import 'package:qoot/core/theme/app_texts/app_text_styles.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';

class TopPartnerItem extends StatelessWidget {
  final int rank;
  final String name;
  final String meals;
  final Color color;

  const TopPartnerItem({
    super.key,
    required this.rank,
    required this.name,
    required this.meals,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: context.customAppColors.grey200, width: .5),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.h),
        child: Row(
          children: [
            CircleAvatar(
              radius: 20.r,
              backgroundColor: color.withValues(alpha: .15),
              child: Text(
                rank.toString(),
                style: AppTextStyles.font14Bold.copyWith(color: color),
              ),
            ),
            12.w.pw,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: AppTextStyles.font16SemiBold.copyWith(
                      color: context.customAppColors.grey900,
                    ),
                  ),
                  2.h.ph,
                  Text(
                    meals,
                    style: AppTextStyles.font14Regular.copyWith(
                      color: context.customAppColors.accent600,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
