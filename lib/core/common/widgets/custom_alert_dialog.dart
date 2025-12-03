import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:qoot/core/common/widgets/custom_button.dart';
import 'package:qoot/core/helpers/spacing.dart';
import 'package:qoot/core/theme/app_texts/app_text_styles.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';

class CustomAlertDialog extends StatelessWidget {
  final String dialogHeader;
  final String dialogBody;
  final String dialogButtonTitle;
  final String dialogAlertIcon;
  final VoidCallback press;
  final Color? backgroundColor;

  const CustomAlertDialog({
    super.key,
    required this.dialogHeader,
    required this.dialogBody,
    required this.press,
    required this.dialogButtonTitle,
    required this.dialogAlertIcon,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: context.customAppColors.grey50,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
      child: Container(
        padding: EdgeInsets.only(
          left: 20.r,
          right: 20.r,
          top: 30.r,
          bottom: 20.r,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(
                dialogAlertIcon,
                width: 160.w,
                height: 160.h,
              ),

              verticalSpace(20),

              Text(
                dialogHeader,
                textAlign: TextAlign.center,
                style: AppTextStyles.font18Bold.copyWith(
                  color: backgroundColor ?? context.customAppColors.primary900,
                ),
              ),

              verticalSpace(14),

              Text(
                dialogBody,
                textAlign: TextAlign.center,
                style: AppTextStyles.font16SemiBold.copyWith(
                  color: context.customAppColors.grey600,
                ),
              ),

              verticalSpace(24),

              CustomButton(
                text: dialogButtonTitle,
                textColor: context.customAppColors.grey0,
                color: backgroundColor ?? context.customAppColors.primary800,
                borderColor:
                    backgroundColor ?? context.customAppColors.primary800,
                onTap: press,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
