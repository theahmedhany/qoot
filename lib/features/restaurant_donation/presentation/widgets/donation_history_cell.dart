import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/common/widgets/custom_button.dart';
import 'package:qoot/core/helpers/extensions.dart';
import 'package:qoot/core/theme/app_texts/app_text_styles.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';
import 'package:qoot/core/utils/app_placeholder.dart';
import 'package:qoot/features/restaurant_home/presentation/widgets/urgent_donations_cell.dart';
import 'package:qoot/generated/l10n.dart';

class DonationHistoryCell extends StatelessWidget {
  const DonationHistoryCell({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: IntrinsicHeight(
        child: Row(
          children: [
            // Left side - Image container
            Container(
              width: 120.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                image: const DecorationImage(
                  image: AssetImage(AppPlaceholder.placeholderFood4),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            12.w.pw,

            // Right side - Content
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Header row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Food Type',
                        style: AppTextStyles.font11SemiBold.copyWith(
                          color: context.customAppColors.neutral700,
                        ),
                      ),
                      Text(
                        'May 20, 2024',
                        style: AppTextStyles.font11Regular.copyWith(
                          color: context.customAppColors.neutral700,
                        ),
                      ),
                    ],
                  ),
                  4.h.ph,

                  // Main content
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Food Description food description...',
                        style: AppTextStyles.font11Bold.copyWith(
                          color: context.customAppColors.neutral800,
                        ),
                      ),
                      8.h.ph,
                      const CustomLinearProgressIndicator(
                        value: 0.35,
                      ),
                    ],
                  ),
                  4.h.ph,

                  // Footer row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            S.of(context).reservationCount,
                            style: AppTextStyles.font11Regular.copyWith(
                              color: context.customAppColors.grey600,
                            ),
                          ),
                          Text(
                            '9',
                            style: AppTextStyles.font11Bold.copyWith(
                              color: context.customAppColors.black,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            S.of(context).servings,
                            style: AppTextStyles.font11Regular.copyWith(
                              color: context.customAppColors.grey600,
                            ),
                          ),
                          Text(
                            '22',
                            style: AppTextStyles.font11Bold.copyWith(
                              color: context.customAppColors.black,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  4.h.ph,
                  // Button
                  Align(
                    alignment: Alignment.bottomRight,
                    child: CustomButton(
                      text: S.of(context).status,
                      width: 115.w,
                      height: 38.h,
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
