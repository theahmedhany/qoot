import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/common/widgets/custom_button.dart';
import 'package:qoot/core/helpers/extensions.dart';
import 'package:qoot/core/theme/app_texts/app_text_styles.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';
import 'package:qoot/generated/l10n.dart';

class UrgentDonationsCell extends StatelessWidget {
  const UrgentDonationsCell({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
      color: context.customAppColors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Top image section (kept minimal)
          Container(
            height: 105.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16.r),
                topRight: Radius.circular(16.r),
              ),
              image: DecorationImage(
                image: AssetImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ), // just placeholder background
          ),

          // Main content section
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title and logo
                Row(
                  children: [
                    Text(
                      'Orphan Foundation',
                      style: AppTextStyles.font11Regular.copyWith(
                        color: context.customAppColors.neutral700,
                      ),
                    ),
                    8.w.pw,
                    Icon(Icons.verified, color: Colors.cyan, size: 16.sp),
                  ],
                ),

                8.h.ph,
                Text(
                  'Help children for orphanage scholarship in New Zealand',
                  style: AppTextStyles.font13Bold.copyWith(
                    color: context.customAppColors.neutral800,
                  ),
                ),
                8.h.ph,
                const CustomLinearProgressIndicator(
                  value: 0.25,
                ),
                8.h.ph,
                // Address and capacity
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          S.of(context).address,
                          style: AppTextStyles.font11Regular.copyWith(
                            color: context.customAppColors.grey600,
                          ),
                        ),
                        Text(
                          'Egypt',
                          style: AppTextStyles.font13Bold.copyWith(
                            color: context.customAppColors.black,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          S.of(context).capacity,
                          style: AppTextStyles.font11Regular.copyWith(
                            color: context.customAppColors.grey600,
                          ),
                        ),
                        Text(
                          '22',
                          style: AppTextStyles.font13Bold.copyWith(
                            color: context.customAppColors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                const SizedBox(height: 8),

                // Donate button
                CustomButton(
                  text: S.of(context).donate,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomLinearProgressIndicator extends StatelessWidget {
  final double value;
  const CustomLinearProgressIndicator({
    super.key,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(100.r),
      child: LinearProgressIndicator(
        value: value, // approximate progress
        minHeight: 6.h,
        backgroundColor: context.customAppColors.grey300,
        valueColor: AlwaysStoppedAnimation<Color>(
          context.customAppColors.primary800,
        ),
      ),
    );
  }
}
