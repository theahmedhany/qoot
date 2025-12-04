import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/theme/app_texts/app_text_styles.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';

class AppDropdownField<T> extends StatelessWidget {
  final T? value;
  final String? hintText;
  final List<DropdownMenuItem<T>> items;
  final void Function(T?)? onChanged;
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final InputBorder? errorBorder;
  final TextStyle? textStyle;
  final TextStyle? hintStyle;
  final Color? backgroundColor;
  final double? maxHeight;
  final double? itemHeight;

  const AppDropdownField({
    super.key,
    required this.value,
    required this.items,
    required this.onChanged,
    this.hintText,
    this.contentPadding,
    this.focusedBorder,
    this.enabledBorder,
    this.errorBorder,
    this.textStyle,
    this.hintStyle,
    this.backgroundColor,
    this.maxHeight,
    this.itemHeight,
    required bool enabled,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return DropdownButtonFormField2<T>(
      iconStyleData: IconStyleData(
        icon: Icon(
          Icons.keyboard_arrow_down_rounded,
          color: context.customAppColors.grey400,
        ),
        openMenuIcon: Icon(
          Icons.keyboard_arrow_up_rounded,
          color: context.customAppColors.grey400,
          size: 24,
        ),
      ),

      value: value,
      isExpanded: true,
      decoration: InputDecoration(
        isDense: true,
        contentPadding:
            contentPadding ?? EdgeInsets.fromLTRB(12.w, 18.h, 12.w, 16.h),

        focusedBorder:
            focusedBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: BorderSide(
                color: context.customAppColors.grey400,
                width: 1.3,
              ),
            ),
        enabledBorder:
            enabledBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: BorderSide(
                color: context.customAppColors.grey400,
                width: 1,
              ),
            ),
        errorBorder:
            errorBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: BorderSide(color: colorScheme.error, width: 1),
            ),
        focusedErrorBorder:
            errorBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: BorderSide(color: colorScheme.error, width: 1),
            ),
        hintText: hintText,
        hintStyle:
            hintStyle ??
            AppTextStyles.font16Regular.copyWith(
              color: context.customAppColors.grey900,
            ),
        filled: true,
        fillColor: backgroundColor ?? context.customAppColors.grey0,
      ),
      style:
          textStyle ??
          AppTextStyles.font16Regular.copyWith(
            color: context.customAppColors.grey700,
          ),
      items: items,
      onChanged: onChanged,
      dropdownStyleData: DropdownStyleData(
        maxHeight: maxHeight ?? 200.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.r),
          color: context.customAppColors.grey0,
        ),
      ),
      menuItemStyleData: MenuItemStyleData(
        height: itemHeight ?? 45.h,
        padding: EdgeInsets.symmetric(horizontal: 15.w),
      ),
    );
  }
}
