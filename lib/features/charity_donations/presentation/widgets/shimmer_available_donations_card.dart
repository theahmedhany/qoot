import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/helpers/extensions.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerAvailableDonationsCard extends StatelessWidget {
  const ShimmerAvailableDonationsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: context.customAppColors.grey200,
      highlightColor: context.customAppColors.grey100,
      child: Container(
        height: 150.h,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(color: context.customAppColors.grey200),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.r),
              child: Container(
                height: double.infinity,
                width: 97.w,
                color: context.customAppColors.grey200,
              ),
            ),
            3.w.pw,
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 6.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    15.h.ph,
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 15.h,
                                width: 120.w,
                                color: context.customAppColors.grey200,
                              ),
                              5.h.ph,
                              Container(
                                height: 14.h,
                                width: 80.w,
                                color: context.customAppColors.grey200,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 25.h,
                          width: 60.w,
                          decoration: BoxDecoration(
                            color: context.customAppColors.grey200,
                            borderRadius: BorderRadius.circular(20.r),
                          ),
                        ),
                      ],
                    ),
                    12.h.ph,
                    Row(
                      children: [
                        Container(
                          height: 12.h,
                          width: 80.w,
                          color: context.customAppColors.grey200,
                        ),
                        const Spacer(),
                        Container(
                          height: 12.h,
                          width: 90.w,
                          color: context.customAppColors.grey200,
                        ),
                      ],
                    ),
                    10.h.ph,
                    Container(
                      height: 35.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: context.customAppColors.grey200,
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
