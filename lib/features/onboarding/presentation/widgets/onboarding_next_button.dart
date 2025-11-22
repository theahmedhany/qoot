import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/common/widgets/q_custom_button.dart';

class OnboardingNextButton extends StatelessWidget {
  const OnboardingNextButton({
    required this.onNextClicked,
    required this.child,
    super.key,
  });
  final void Function() onNextClicked;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 55.h,
      left: 16.w,
      right: 16.w,
      child: QCustomButton(
        onTap: onNextClicked,
        width: 328.w,
        height: 52.h,
        child: child,
      ),
    );
  }
}
