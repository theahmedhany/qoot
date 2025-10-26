import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/helpers/extensions.dart';
import '../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../core/theme/theme_manager/theme_extensions.dart';
import '../../../../core/utils/app_placeholder.dart';
import '../../../../generated/l10n.dart';

class DonationFlowCard extends StatelessWidget {
  const DonationFlowCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: .2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.r),
        child: Stack(
          children: [
            Image.asset(
              AppPlaceholder.placeholderFood7,
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Colors.black.withValues(alpha: .7),
                    Colors.black.withValues(alpha: .0),
                  ],
                ),
              ),
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                14.h.ph,
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 18.w),
                  child: Text(
                    S.of(context).charityDonationFlowHeader,
                    style: AppTextStyles.font18Bold.copyWith(
                      color: const Color(0xffF3F8F5),
                    ),
                  ),
                ),
                13.h.ph,
                Container(
                  height: 32.h,
                  width: 116.w,
                  padding: EdgeInsets.symmetric(vertical: 6.h),
                  decoration: BoxDecoration(
                    color: context.customAppColors.primary800,
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                  child: Row(
                    children: [
                      19.w.pw,
                      Text(
                        S.of(context).charityHomeViewmore,
                        style: AppTextStyles.font12Regular.copyWith(
                          color: context.customAppColors.white,
                        ),
                      ),
                      14.w.pw,
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 12.sp,
                        color: context.customAppColors.white,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
