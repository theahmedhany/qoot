import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:qoot/core/theme/app_texts/app_text_styles.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';

class CustomProfileListTile extends StatelessWidget {
  const CustomProfileListTile({
    super.key,
    required this.iconUrl,
    required this.title,
    this.onPressed,
  });
  final String iconUrl;
  final String title;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.h,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(color: context.customAppColors.grey100),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          contentPadding: EdgeInsets.zero,
          dense: true,
          visualDensity: const VisualDensity(vertical: -4),
          leading: SvgPicture.asset(iconUrl),
          title: Text(
            title,
            style: AppTextStyles.font12Regular.copyWith(
              color: context.customAppColors.neutral800,
            ),
          ),
          trailing: IconButton(
            padding: EdgeInsets.zero,
            onPressed: onPressed,
            icon: Icon(
              Icons.arrow_forward_ios,
              color: context.customAppColors.grey700,
              size: 18.sp,
            ),
          ),
        ),
      ),
    );
  }
}
