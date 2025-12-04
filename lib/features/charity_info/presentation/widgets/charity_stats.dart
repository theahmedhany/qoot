import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/extensions.dart';
import '../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../core/theme/theme_manager/theme_extensions.dart';
import '../../../../generated/l10n.dart';
import 'custom_Quick_stat_card.dart';
import 'custom_document_card.dart';

class CharityStats extends StatelessWidget {
  const CharityStats({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(16.h),
          decoration: BoxDecoration(
            color: context.customAppColors.grey0,
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
              CustomDocumentCard(
                icon: Icons.help_outline,
                title: S.of(context).licenseDocument,
                status: S.of(context).verified,
              ),
              8.h.ph,
              CustomDocumentCard(
                icon: Icons.insert_drive_file,
                title: S.of(context).proofDocument,
                status: S.of(context).verified,
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
                    value: '12,450 ج.م',
                    label: 'التبرعات الكلية',
                    color: context.customAppColors.info900,
                  ),
                  12.w.pw,
                  CustomStatCard(
                    value: '2,340',
                    label: 'وجبة مقدمة',
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
                      'آخر تبرع تم استلامه',
                      style: AppTextStyles.font14Regular.copyWith(
                        color: context.customAppColors.grey600,
                      ),
                    ),
                    4.h.ph,
                    Text(
                      '15 أغسطس 2025',
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
