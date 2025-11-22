import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../helpers/spacing.dart';
import '../../theme/app_texts/app_text_styles.dart';
import '../../theme/theme_manager/theme_extensions.dart';

class CustomAlertDialog extends StatelessWidget {
  const CustomAlertDialog({
    super.key,
    required this.dialogHeader,
    required this.dialogBody,
    required this.dialogIcon,
    required this.dialogColor,
    required this.press,
    this.buttonText,
  });

  final String dialogHeader;
  final String dialogBody;
  final IconData dialogIcon;
  final Color dialogColor;
  final VoidCallback press;
  final String? buttonText;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Padding(
        padding: EdgeInsets.all(24.r),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: EdgeInsets.all(16.r),
              decoration: BoxDecoration(
                color: dialogColor.withValues(alpha: 0.1),
                shape: BoxShape.circle,
              ),
              child: Icon(
                dialogIcon,
                size: 48.r,
                color: dialogColor,
              ),
            ),
            verticalSpace(16),
            Text(
              dialogHeader,
              style: AppTextStyles.font18Bold.copyWith(
                color: context.customAppColors.grey900,
              ),
              textAlign: TextAlign.center,
            ),
            verticalSpace(12),
            Text(
              dialogBody,
              style: AppTextStyles.font14Regular.copyWith(
                color: context.customAppColors.grey600,
              ),
              textAlign: TextAlign.center,
            ),
            verticalSpace(24),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: press,
                style: ElevatedButton.styleFrom(
                  backgroundColor: dialogColor,
                  padding: EdgeInsets.symmetric(vertical: 12.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                ),
                child: Text(
                  buttonText ?? 'حسناً',
                  style: AppTextStyles.font16Bold.copyWith(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
