import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/helpers/extensions.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../core/theme/theme_manager/theme_extensions.dart';

class ShimmerReservationsCard extends StatelessWidget {
  const ShimmerReservationsCard({super.key});

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
          padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 10.h),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 60.h,
                    width: 60.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                  ),

                  12.w.pw,

                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 14.h,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(4.r),
                                    ),
                                  ),
                                  6.h.ph,

                                  Container(
                                    height: 12.h,
                                    width: 120.w,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(4.r),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            8.w.pw,

                            Container(
                              height: 24.h,
                              width: 60.w,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(6.r),
                              ),
                            ),
                          ],
                        ),

                        12.h.ph,

                        Row(
                          children: [
                            Container(
                              height: 20.h,
                              width: 20.h,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(4.r),
                              ),
                            ),
                            8.w.pw,
                            Container(
                              height: 12.h,
                              width: 130.w,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(4.r),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              12.h.ph,

              Container(
                height: 40.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
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
