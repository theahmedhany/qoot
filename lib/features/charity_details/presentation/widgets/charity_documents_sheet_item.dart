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

  const CharityDocumentsSheetItem({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.customAppColors.background,
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(color: context.customAppColors.grey100, width: 1.5),
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
                vertical: 4.r,
              ),
              leading: SvgPicture.asset(
                icon,
                width: 32.r,
                height: 32.r,
                colorFilter: ColorFilter.mode(
                  context.customAppColors.grey900,
                  BlendMode.srcIn,
                ),
              ),
              title: Text(
                title,
                style: AppTextStyles.font16SemiBold.copyWith(
                  color: context.customAppColors.grey900,
                ),
              ),
              trailing: SvgPicture.asset(
                AppIcons.iconsDocumentDownload,
                width: 32.r,
                height: 32.r,
                colorFilter: ColorFilter.mode(
                  context.customAppColors.grey900,
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
