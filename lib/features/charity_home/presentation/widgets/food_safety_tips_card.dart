import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qoot/core/helpers/extensions.dart';
import 'package:qoot/core/routing/routes.dart';

import '../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../core/theme/theme_manager/theme_extensions.dart';
import '../../../../core/utils/app_icons.dart';
import '../../../../generated/l10n.dart';

class FoodSafetyTipsCard extends StatelessWidget {
  const FoodSafetyTipsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75.h,
      width: double.infinity,

      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: context.customAppColors.greenYellowGradient,
        ),
        border: Border.all(
          color: const Color(0xff10B981).withValues(alpha: .2),
        ),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Center(
        child: ListTile(
          contentPadding: EdgeInsets.only(right: 12.h),
          leading: CircleAvatar(
            radius: 20.r,
            backgroundColor: const Color(0xff10B981).withValues(alpha: .2),
            child: SvgPicture.asset(AppIcons.lampIcon),
          ),
          title: Text(
            S.of(context).charityHomeFoodSafetyTips,
            style: AppTextStyles.font14SemiBold.copyWith(
              color: context.customAppColors.grey900,
            ),
          ),
          subtitle: Text(
            S.of(context).charityHomeFoodSafetyTipsSubtitle,
            style: AppTextStyles.font12Regular.copyWith(
              color: context.customAppColors.accent600,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          trailing: IconButton(
            onPressed: () {
              context.pushNamed(
                Routes.foodSafetyTipsScreen,
              );
            },
            icon: Icon(Icons.arrow_forward_ios, size: 12.sp),
          ),
        ),
      ),
    );
  }
}
