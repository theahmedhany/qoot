import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../helpers/spacing.dart';
import '../../theme/app_texts/app_text_styles.dart';
import '../../theme/theme_manager/theme_extensions.dart';

class CustomUploadContainer extends StatelessWidget {
  const CustomUploadContainer({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
    this.verticalPadding,
  });

  final String title, icon;
  final VoidCallback onTap;
  final double? verticalPadding;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: onTap,
      padding: EdgeInsets.zero,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: 8.r,
          vertical: verticalPadding?.r ?? 0,
        ),
        decoration: ShapeDecoration(
          color: context.customAppColors.primary500.withValues(alpha: 0.15),
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
