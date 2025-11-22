import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:qoot/core/common/widgets/custom_button.dart';
import 'package:qoot/core/helpers/extensions.dart';
import 'package:qoot/core/theme/app_texts/app_text_styles.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';
import 'package:qoot/core/utils/app_icons.dart';
import 'package:qoot/generated/l10n.dart';

class CustomErrorMessage extends StatelessWidget {
  final String message;
  final VoidCallback? onRetry;

  const CustomErrorMessage({
    super.key,
    required this.message,
    this.onRetry,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedScale(
        scale: 1,
        duration: const Duration(milliseconds: 350),
        curve: Curves.easeOutBack,
        child: AnimatedOpacity(
          opacity: 1,
          duration: const Duration(milliseconds: 300),
          child: Container(
            padding: EdgeInsets.all(24.h),
            margin: EdgeInsets.symmetric(horizontal: 20.w),
            decoration: BoxDecoration(
              color: context.customAppColors.error700.withValues(alpha: 0.08),
              borderRadius: BorderRadius.circular(16.r),
              border: Border.all(
                color: context.customAppColors.error700.withValues(alpha: 0.3),
                width: 1.3.w,
              ),
              boxShadow: [
                BoxShadow(
                  color: context.customAppColors.error700.withValues(
                    alpha: .06,
                  ),
                  blurRadius: 10,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(AppIcons.iconsErrorCheck),
                10.h.ph,
                Text(
                  message,
                  textAlign: TextAlign.center,
                  style: AppTextStyles.font16Regular.copyWith(
                    color: context.customAppColors.grey900,
                  ),
                ),
                if (onRetry != null) ...[
                  15.h.ph,
                  CustomButton(
                    borderColor: context.customAppColors.error700,
                    text: S.of(context).reload,
                    onTap: onRetry,
                    color: context.customAppColors.error700,
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}
