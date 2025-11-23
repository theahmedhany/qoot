import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../helpers/spacing.dart';
import '../../theme/theme_manager/theme_extensions.dart';

class QCustomButton extends StatelessWidget {
  const QCustomButton({
    super.key,
    required this.onTap,
    required this.child,
    this.width,
    this.height,
    this.backgroundColor,
    this.border,
    this.radius,
    this.icon,
  });

  final void Function() onTap;
  final Widget child;
  final double? width;
  final double? height;
  final double? radius;
  final Color? backgroundColor;
  final BoxBorder? border;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: backgroundColor ?? context.customAppColors.primary800,
          borderRadius: BorderRadius.circular(radius ?? 12.r),
          border: border,
        ),
        width: width ?? double.infinity,
        height: height ?? 52.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (icon != null) SizedBox(width: 24.w, height: 24.h, child: icon!),
            if (icon != null) horizontalSpace(12.w),
            child,
          ],
        ),
      ),
    );
  }
}
