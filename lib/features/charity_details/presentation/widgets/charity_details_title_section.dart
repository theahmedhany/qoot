import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/helpers/spacing.dart';
import 'package:qoot/core/theme/app_texts/app_text_styles.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';

class CharityDetailsTitleSection extends StatelessWidget {
  const CharityDetailsTitleSection({
    super.key,
    required this.charityTitle,
    required this.charityLocation,
    required this.charityType,
  });

  final String charityTitle, charityLocation, charityType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.r),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  charityTitle,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyles.font16Bold.copyWith(
                    color: context.customAppColors.grey900,
                  ),
                ),
                verticalSpace(4),
                Text(
                  charityLocation,
                  style: AppTextStyles.font14Regular.copyWith(
                    color: context.customAppColors.grey600,
                  ),
                ),
              ],
            ),
          ),
          horizontalSpace(12),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.r, vertical: 6.r),
            decoration: BoxDecoration(
              color: context.customAppColors.primary500.withValues(alpha: 0.2),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              charityType,
              style: AppTextStyles.font12SemiBold.copyWith(
                color: context.customAppColors.primary800,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
