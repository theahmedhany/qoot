import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/theme/app_texts/app_text_styles.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String? hintText;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Color? backgroundColor;
  final Widget? prefixIcon;
  final FocusNode? focusNode;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final InputBorder? errorBorder;
  final int? maxLines;
  final bool isUnderline;
  final TextInputType? keyboardType;
  final TextAlign? textAlign;

  const AppTextFormField({
    super.key,
    this.contentPadding,
    this.focusedBorder,
    this.enabledBorder,
    this.inputTextStyle,
    this.hintStyle,
    this.hintText,
    this.isObscureText,
    this.suffixIcon,
    this.backgroundColor,
    this.controller,
    this.validator,
    this.prefixIcon,
    this.focusNode,
    this.onChanged,
    this.errorBorder,
    this.maxLines,
    this.isUnderline = false,
    this.keyboardType,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    InputBorder border = isUnderline
        ? UnderlineInputBorder(
            borderSide: BorderSide(
              color: context.customAppColors.grey400,
              width: 1.w,
            ),
          )
        : OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide: BorderSide(
              color: context.customAppColors.grey400,
              width: 1.w,
            ),
          );

    return FormField<String>(
      validator: validator,
      builder: (FormFieldState<String> state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              keyboardType: keyboardType,
              textAlign: textAlign ?? TextAlign.start,
              maxLines: maxLines,
              controller: controller,
              onChanged: (value) {
                state.didChange(value);
                onChanged?.call(value);
              },
              focusNode: focusNode,
              obscureText: isObscureText ?? false,
              cursorColor: context.customAppColors.primary800,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: InputDecoration(
                isDense: true,
                contentPadding:
                    contentPadding ??
                    EdgeInsets.symmetric(horizontal: 12.w, vertical: 16.h),
                focusedBorder:
                    focusedBorder ??
                    border.copyWith(
                      borderSide: BorderSide(
                        color: context.customAppColors.primary600,
                        width: 1.5.w,
                      ),
                    ),
                enabledBorder: enabledBorder ?? border,
                errorBorder:
                    errorBorder ??
                    border.copyWith(
                      borderSide: BorderSide(
                        color: colorScheme.error,
                        width: 1.2.w,
                      ),
                    ),
                focusedErrorBorder:
                    errorBorder ??
                    border.copyWith(
                      borderSide: BorderSide(
                        color: colorScheme.error,
                        width: 1.2.w,
                      ),
                    ),

                hintText: hintText,
                hintStyle:
                    hintStyle ??
                    AppTextStyles.font14Regular.copyWith(
                      color: colorScheme.secondary.withValues(alpha: 0.5),
                    ),
                suffixIcon: suffixIcon,
                prefixIcon: prefixIcon,
                fillColor:
                    backgroundColor ?? context.customAppColors.background,
                filled: true,
              ),
              style:
                  inputTextStyle ??
                  AppTextStyles.font16Regular.copyWith(
                    color: colorScheme.secondary,
                  ),
            ),
            if (state.hasError)
              Padding(
                padding: EdgeInsets.only(top: 6.h, left: 8.w),
                child: Row(
                  children: [
                    Icon(
                      Icons.error_outline,
                      color: colorScheme.error,
                      size: 16.sp,
                    ),
                    5.w.horizontalSpace,
                    Flexible(
                      child: Text(
                        state.errorText ?? '',
                        style: AppTextStyles.font12Regular.copyWith(
                          color: colorScheme.error,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
          ],
        );
      },
    );
  }
}
