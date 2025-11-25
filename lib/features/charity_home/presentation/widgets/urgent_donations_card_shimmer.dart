import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/helpers/extensions.dart';
import 'package:shimmer/shimmer.dart';
import '../../../../core/theme/theme_manager/theme_extensions.dart';

class UrgentDonationsCardShimmer extends StatelessWidget {
  const UrgentDonationsCardShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: context.customAppColors.grey200,
      highlightColor: context.customAppColors.grey100,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(color: context.customAppColors.grey100),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 14.h),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 70.h,
                    height: 70.h,
                    decoration: BoxDecoration(
                      color: context.customAppColors.grey200,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  12.w.pw,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 120.w,
                        height: 16.h,
                        color: context.customAppColors.grey200,
                      ),
                      8.h.ph,
                      Row(
                        children: [
                          Container(
                            width: 80.w,
                            height: 14.h,
                            color: context.customAppColors.grey200,
                          ),
                          15.w.pw,
                          Container(
                            width: 60.w,
                            height: 20.h,
                            decoration: BoxDecoration(
                              color: context.customAppColors.grey200,
                              borderRadius: BorderRadius.circular(6.r),
                            ),
                          ),
                        ],
                      ),
                      5.h.ph,
                      Container(
                        width: 100.w,
                        height: 20.h,
                        decoration: BoxDecoration(
                          color: context.customAppColors.grey200,
                          borderRadius: BorderRadius.circular(6.r),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              13.h.ph,
              Container(
                width: double.infinity,
                height: 40.h,
                decoration: BoxDecoration(
                  color: context.customAppColors.grey200,
                  borderRadius: BorderRadius.circular(8.r),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
