import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/theme/app_texts/app_text_styles.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    this.color,
    this.onTap,
    this.width,
    this.textcolor,
    this.isborder = true,
    this.isIcon = false,
    this.hight,
    this.style,
    this.border,
  });

  final String text;
  final Color? textcolor;
  final Color? color;
  final double? width;
  final void Function()? onTap;
  final bool isborder;
  final bool isIcon;
  final double? hight;
  final TextStyle? style;
  final double? border;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width ?? double.infinity,
        height: hight ?? 56.h,
        decoration: BoxDecoration(
          border: isborder
              ? Border.all(color: context.customAppColors.primary800)
              : null,
          borderRadius: BorderRadius.circular(border ?? 10.r),
          color: color ?? context.customAppColors.primary800,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              text,
              style:
                  style ??
                  AppTextStyles.font14SemiBold.copyWith(
                    color: textcolor ?? Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
              textAlign: TextAlign.center,
            ),
            if (isIcon == true) ...[
              SizedBox(width: 8.w),
              Icon(
                Icons.arrow_forward_outlined,
                color: Colors.white,
                size: 18.sp,
              ),
            ],
          ],
        ),
      ),
    );
  }
}
