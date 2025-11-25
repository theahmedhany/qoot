import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/helpers/extensions.dart';
import 'package:qoot/core/theme/app_texts/app_text_styles.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';
import 'package:qoot/generated/l10n.dart';

class ConfirmDeleteDialog extends StatelessWidget {
  final VoidCallback onConfirm;

  const ConfirmDeleteDialog({
    super.key,
    required this.onConfirm,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.symmetric(horizontal: 24.h),
      backgroundColor: context.customAppColors.grey0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
      child: Padding(
        padding: EdgeInsets.all(22.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: EdgeInsets.all(18.h),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red.withValues(alpha: .1),
              ),
              child: Icon(
                Icons.warning_amber_rounded,
                size: 60.sp,
                color: Colors.red,
              ),
            ),
            16.h.ph,
            Text(
              S.of(context).deleteConfirmationTitle,
              style: AppTextStyles.font20SemiBold.copyWith(
                color: context.customAppColors.grey900,
              ),
              textAlign: TextAlign.center,
            ),
            14.h.ph,
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(14.h),
              decoration: BoxDecoration(
                color: Colors.red.withValues(alpha: .07),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.red.withValues(alpha: .2)),
              ),
              child: Text(
                S.of(context).deleteConfirmationMessage,
                style: AppTextStyles.font16Regular.copyWith(color: Colors.red),
                textAlign: TextAlign.center,
              ),
            ),
            20.h.ph,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _warningItem(
                  context,
                  S.of(context).warningPoint1,
                ),
                _warningItem(
                  context,
                  S.of(context).warningPoint2,
                ),
                _warningItem(
                  context,
                  S.of(context).warningPoint3,
                ),
              ],
            ),
            24.h.ph,
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      foregroundColor: context.customAppColors.grey900,
                      side: BorderSide(color: context.customAppColors.grey400),
                      padding: EdgeInsets.symmetric(vertical: 14.h),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                    ),
                    onPressed: () => Navigator.pop(context),
                    child: Text(
                      S.of(context).cancel,
                      style: AppTextStyles.font16Regular.copyWith(
                        color: context.customAppColors.grey900,
                      ),
                    ),
                  ),
                ),
                12.w.pw,
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: context.customAppColors.grey0,
                      padding: EdgeInsets.symmetric(vertical: 14.h),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                      onConfirm();
                    },
                    child: Text(
                      S.of(context).confirmDelete,
                      style: AppTextStyles.font16Regular,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _warningItem(BuildContext context, String text) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.error_outline, color: Colors.red, size: 20.sp),
          8.w.pw,
          Expanded(
            child: Text(
              text,
              style: AppTextStyles.font14Regular.copyWith(
                height: 1.5,
                color: context.customAppColors.grey800,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
