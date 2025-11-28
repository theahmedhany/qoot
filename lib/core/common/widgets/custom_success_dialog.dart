import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:qoot/core/theme/app_texts/app_text_styles.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';
import 'package:qoot/core/utils/app_icons.dart';
import 'package:qoot/generated/l10n.dart';

class CustomSuccessDialog extends StatelessWidget {
  const CustomSuccessDialog({
    super.key,
    required this.content,
    this.onOkPressed,
  });
  final String content;
  final VoidCallback? onOkPressed;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: context.customAppColors.grey0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.r),
      ),
      title: SvgPicture.asset(AppIcons.iconsCongratsCheck),
      content: Text(
        content,
        textAlign: TextAlign.center,
        style: AppTextStyles.font16Regular.copyWith(
          color: context.customAppColors.grey900,
        ),
      ),
      actions: [
        Center(
          child: TextButton(
            onPressed: onOkPressed ?? () => Navigator.of(context).pop(),
            child: Text(
              S.of(context).okey,
              style: AppTextStyles.font16SemiBold.copyWith(
                color: context.customAppColors.primary700,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
