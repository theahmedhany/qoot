import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardinPageViewIndecators extends StatelessWidget {
  const OnboardinPageViewIndecators({
    required this.pageController,
    required this.onDotClicked,
    super.key,
  });
  final void Function(int)? onDotClicked;
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 130.h,
      left: 16.w,
      right: 16.w,
      child: Container(
        alignment: Alignment.center,
        child: SmoothPageIndicator(
          onDotClicked: onDotClicked,
          controller: pageController,
          count: 3,
          effect: ExpandingDotsEffect(
            activeDotColor: context.customAppColors.primary800,
            dotColor: context.customAppColors.grey300,
            dotHeight: 8.sp,
            dotWidth: 8.sp,
            spacing: 4.sp,
            expansionFactor: 3,
          ),
        ),
      ),
    );
  }
}
