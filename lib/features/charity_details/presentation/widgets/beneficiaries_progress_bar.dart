import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/helpers/spacing.dart';
import 'package:qoot/core/theme/app_texts/app_text_styles.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';
import 'package:qoot/generated/l10n.dart';

class BeneficiariesProgressBar extends StatelessWidget {
  final double progress;
  final int count;

  const BeneficiariesProgressBar({
    super.key,
    required this.progress,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.r),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12.r),
            child: LinearProgressIndicator(
              value: progress,
              minHeight: 8.h,
              backgroundColor: context.customAppColors.grey300,
              borderRadius: BorderRadius.circular(12.r),
              valueColor: AlwaysStoppedAnimation<Color>(
                context.customAppColors.primary800,
              ),
            ),
          ),

          verticalSpace(12),

          Row(
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    S.of(context).charityDetailsScreenBeneficiariesNumber,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyles.font14SemiBold.copyWith(
                      color: context.customAppColors.grey600,
                    ),
                  ),
                ),
              ),

              horizontalSpace(8),

              Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    '$count',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyles.font14Bold.copyWith(
                      color: context.customAppColors.grey800,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
