import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/common/widgets/custom_button.dart';
import 'package:qoot/core/helpers/extensions.dart';
import '../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../core/theme/theme_manager/theme_extensions.dart';
import '../../../../core/utils/app_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NoDonationsWidget extends StatelessWidget {
  final String message;
  final VoidCallback? onActionPressed;
  final String? actionText;

  const NoDonationsWidget({
    super.key,
    this.message = "No donations available",
    this.onActionPressed,
    this.actionText,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 32.h),
        margin: EdgeInsets.symmetric(horizontal: 16.w),
        decoration: BoxDecoration(
          color: context.customAppColors.grey50,
          borderRadius: BorderRadius.circular(16.r),
          boxShadow: [
            BoxShadow(
              color: context.customAppColors.grey0.withValues(alpha: .05),
              blurRadius: 15.r,
              offset: Offset(0, 5.h),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              AppIcons.iconsErrorCheck,
              height: 120.h,
              width: 120.h,
            ),
            20.h.ph,
            Text(
              message,
              textAlign: TextAlign.center,
              style: AppTextStyles.font16Regular.copyWith(
                color: context.customAppColors.grey700,
                height: 1.5,
              ),
            ),
            25.h.ph,
            if (actionText != null && onActionPressed != null)
              CustomButton(
                width: 160.w,
                isIcon: true,
                icon: Icons.refresh_outlined,
                text: actionText!,
                onTap: onActionPressed,
              ),
          ],
        ),
      ),
    );
  }
}
