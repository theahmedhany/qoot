import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';

class SnackbarHelper {
  static void showSuccessSnackbar(
    BuildContext context,
    String message, {
    VoidCallback? onDismissed,
  }) {
    final snackBar = SnackBar(
      content: Text(
        message,
        style: const TextStyle(color: Colors.white),
      ),
      behavior: SnackBarBehavior.floating,
      margin: EdgeInsets.symmetric(vertical: 28.h, horizontal: 16.w),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(500.r),
      ),
      backgroundColor: context.customAppColors.primary800,
      duration: const Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar).closed.then((_) {
      if (onDismissed != null) {
        onDismissed();
      }
    });
  }

  static void showErrorSnackbar(BuildContext context, String message) {
    final snackBar = SnackBar(
      content: Text(
        message,
        style: const TextStyle(color: Colors.white),
      ),
      backgroundColor: context.customAppColors.error900,
      behavior: SnackBarBehavior.floating,
      margin: EdgeInsets.symmetric(vertical: 28.h, horizontal: 16.w),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(500.r),
      ),
      duration: const Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
