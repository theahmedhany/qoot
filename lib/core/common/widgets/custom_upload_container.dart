import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qoot/core/helpers/spacing.dart';
import 'package:qoot/core/theme/app_texts/app_text_styles.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';

class CustomUploadContainer extends StatelessWidget {
  const CustomUploadContainer({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
  });

  final String title, icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: onTap,
      padding: EdgeInsets.zero,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 45.r, vertical: 30.r),
        decoration: ShapeDecoration(
          color: context.customAppColors.primary500.withValues(alpha: 0.25),
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 1,
              color: context.customAppColors.primary800,
            ),
            borderRadius: BorderRadius.circular(20.r),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              icon,
              width: 24.r,
              height: 24.r,
              colorFilter: ColorFilter.mode(
                context.customAppColors.primary800,
                BlendMode.srcIn,
              ),
            ),

            verticalSpace(6),

            Text(
              title,
              textAlign: TextAlign.center,
              style: AppTextStyles.font16Bold.copyWith(
                color: context.customAppColors.primary800,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
