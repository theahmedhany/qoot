import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/helpers/extensions.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerAvailableDonationsCard extends StatelessWidget {
  const ShimmerAvailableDonationsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: Container(
        height: 150.h,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(color: Colors.grey.shade200),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.r),
              child: Container(
                height: double.infinity,
                width: 97.w,
                color: Colors.grey.shade300,
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
                                color: Colors.grey.shade300,
                              ),
                              5.h.ph,
                              Container(
                                height: 14.h,
                                width: 80.w,
                                color: Colors.grey.shade300,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 25.h,
                          width: 60.w,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade300,
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
                          color: Colors.grey.shade300,
                        ),
                        const Spacer(),
                        Container(
                          height: 12.h,
                          width: 90.w,
                          color: Colors.grey.shade300,
                        ),
                      ],
                    ),
                    10.h.ph,
                    Container(
                      height: 35.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
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
