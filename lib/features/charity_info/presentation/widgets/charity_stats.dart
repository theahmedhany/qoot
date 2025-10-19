import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/helpers/extensions.dart';
import 'package:qoot/core/theme/app_texts/app_text_styles.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';
import 'package:qoot/features/charity_info/presentation/widgets/custom_Quick_stat_card.dart';
import 'package:qoot/generated/l10n.dart';
import 'package:qoot/features/charity_info/presentation/widgets/custom_document_card.dart';

class CharityStats extends StatelessWidget {
  const CharityStats({super.key});

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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                S.of(context).documents,
                style: AppTextStyles.font16Bold.copyWith(
                  color: context.customAppColors.grey900,
                ),
              ),
              12.h.ph,
              const CustomDocumentCard(
                icon: Icons.help_outline,
                title: 'License Document',
                status: 'Verified',
              ),
              8.h.ph,
              const CustomDocumentCard(
                icon: Icons.insert_drive_file,
                title: 'Proof Document',
                status: 'Verified',
              ),
            ],
          ),
        ),
        16.h.ph,
        Container(
          padding: EdgeInsets.all(16.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            border: Border.all(color: context.customAppColors.grey100),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                S.of(context).quickStats,
                style: AppTextStyles.font16Bold.copyWith(
                  color: context.customAppColors.grey900,
                ),
              ),
              12.h.ph,
              Row(
                children: [
                  CustomStatCard(
                    value: '\$12,450',
                    label: 'Total Donations',
                    color: Colors.blueAccent,
                  ),
                  12.w.pw,
                  CustomStatCard(
                    value: '2,340',
                    label: 'Meals Received',
                    color: context.customAppColors.primary700,
                  ),
                ],
              ),
              16.h.ph,
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(16.h),
                decoration: BoxDecoration(
                  color: context.customAppColors.grey50,
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Column(
                  children: [
                    Text(
                      'Last Donation',
                      style: AppTextStyles.font14Regular.copyWith(
                        color: context.customAppColors.grey600,
                      ),
                    ),
                    4.h.ph,
                    Text(
                      'March 15, 2024',
                      style: AppTextStyles.font18SemiBold.copyWith(
                        color: context.customAppColors.grey900,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
