import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/helpers/extensions.dart';
import 'package:qoot/core/theme/app_texts/app_text_styles.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    this.color,
    this.onTap,
    this.width,
    this.textColor,
    this.isBorder = true,
    this.isIcon = false,
    this.hight,
    this.style,
    this.border,
    this.icon,
    this.iconColor,
    this.borderColor,
  });

  final String text;
  final Color? textColor;
  final Color? color;
  final double? width;
  final void Function()? onTap;
  final bool isBorder;
  final bool isIcon;
  final double? hight;
  final TextStyle? style;
  final double? border;
  final IconData? icon;
  final Color? iconColor;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width ?? double.infinity,
        height: hight ?? 56.h,
        decoration: BoxDecoration(
          border: isBorder
              ? Border.all(
                  color: borderColor ?? context.customAppColors.primary800,
                )
              : null,
          borderRadius: BorderRadius.circular(border ?? 10.r),
          color: color ?? context.customAppColors.primary800,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (isIcon == true) ...[
              Icon(
                icon ?? Icons.arrow_forward_outlined,
                color: iconColor ?? Colors.white,
                size: 18.sp,
              ),
              8.w.pw,
            ],
            Text(
              text,
              style:
                  style ??
                  AppTextStyles.font14SemiBold.copyWith(
                    color: textColor ?? Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
