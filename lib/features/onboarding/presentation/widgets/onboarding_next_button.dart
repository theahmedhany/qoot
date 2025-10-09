import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';

import '../../../../core/theme/app_texts/app_text_styles.dart';

class OnboardingNextButton extends StatelessWidget {
  const OnboardingNextButton({
    required this.onNextClicked,
    required this.currentPageIndex,
    super.key,
  });
  final void Function() onNextClicked;
  final int currentPageIndex;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 55.h,
      left: 16.w,
      right: 16.w,
      child: GestureDetector(
        onTap: onNextClicked,
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: context.customAppColors.primary800,
            borderRadius: BorderRadius.circular(12.r),
          ),
          width: 328.w,
          height: 52.h,
          child: Text(
            currentPageIndex == 2 ? "Get Started" : "Next",
            style: AppTextStyles.font16SemiBold.copyWith(color: context.customAppColors.white),
          ),
        ),
      ),
    );
  }
}
