import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qoot/core/theme/app_texts/app_text_styles.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';
import 'package:qoot/core/utils/app_icons.dart';

class CharityDocumentsSheetItem extends StatelessWidget {
  final String title, icon;
  final VoidCallback onTap;
  final Color? activeColor, backgroundColor;
  final String? secondaryIcon;

  const CharityDocumentsSheetItem({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
    this.activeColor,
    this.backgroundColor,
    this.secondaryIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor ?? context.customAppColors.background,
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(
          color: activeColor ?? context.customAppColors.grey100,
          width: 1.5,
        ),
        boxShadow: [
          BoxShadow(
            color: context.customAppColors.grey900.withValues(alpha: 0.03),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(16.r),
          child: Bounce(
            duration: const Duration(milliseconds: 150),
            from: 2,
            child: ListTile(
              contentPadding: EdgeInsets.symmetric(
                horizontal: 12.r,
                vertical: 2.r,
              ),
              leading: SvgPicture.asset(
                icon,
                width: 28.r,
                height: 28.r,
                colorFilter: ColorFilter.mode(
                  activeColor ?? context.customAppColors.grey900,
                  BlendMode.srcIn,
                ),
              ),
              title: Text(
                title,
                style: AppTextStyles.font16SemiBold.copyWith(
                  color: activeColor ?? context.customAppColors.grey900,
                ),
              ),
              trailing: SvgPicture.asset(
                secondaryIcon ?? AppIcons.iconsDocumentDownload,
                width: 24.r,
                height: 24.r,
                colorFilter: ColorFilter.mode(
                  activeColor ?? context.customAppColors.grey900,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
