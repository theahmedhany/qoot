import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:qoot/core/common/widgets/custom_button.dart';
import 'package:qoot/core/helpers/extensions.dart';

import '../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../core/theme/theme_manager/theme_extensions.dart';
import '../../../../core/utils/app_icons.dart';

class NoDonationsWidget extends StatelessWidget {
  final String message;
  final VoidCallback? onActionPressed;
  final String? actionText;

  const NoDonationsWidget({
    super.key,
    this.message = "No donations available",
    this.onActionPressed,
    this.actionText,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            AppIcons.iconsErrorCheck,
            height: 160.h,
            width: 160.h,
          ),
          20.h.ph,
          Text(
            message,
            textAlign: TextAlign.center,
            style: AppTextStyles.font16Regular.copyWith(
              color: context.customAppColors.grey700,
              height: 1.5,
            ),
          ),
          25.h.ph,
          if (actionText != null && onActionPressed != null)
            CustomButton(
              width: 160.w,
              isIcon: true,
              icon: Icons.refresh_outlined,
              text: actionText!,
              onTap: onActionPressed,
              color: context.customAppColors.error900,
            ),
        ],
      ),
    );
  }
}
