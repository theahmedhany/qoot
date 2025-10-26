import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/helpers/extensions.dart';
import '../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../core/theme/theme_manager/theme_extensions.dart';
import '../../../../core/utils/app_icons.dart';
import '../../../../core/utils/app_images.dart';
import '../../../../generated/l10n.dart';

class RestaurantDonateNowSection extends StatelessWidget {
  const RestaurantDonateNowSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100.h,
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage(AppImages.imagesRestaurantDonateNowPattern),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(16.r),
        color: context.customAppColors.primary800,
      ),
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  AppIcons.iconsPlusCircle,
                  width: 24.r,
                  height: 24.r,
                  colorFilter: ColorFilter.mode(
                    context.customAppColors.white,
                    BlendMode.srcIn,
                  ),
                ),
                8.h.ph,
                Text(
                  S.of(context).donateNow,
                  style: AppTextStyles.font13Bold.copyWith(color: Colors.white),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  AppIcons.iconsSchedule,
                  width: 24.r,
                  height: 24.r,
                  colorFilter: ColorFilter.mode(
                    context.customAppColors.white,
                    BlendMode.srcIn,
                  ),
                ),
                8.h.ph,
                Text(
                  S.of(context).schedule,
                  style: AppTextStyles.font13Bold.copyWith(color: Colors.white),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  AppIcons.iconsHistoryOutline,
                  width: 24.r,
                  height: 24.r,
                  colorFilter: ColorFilter.mode(
                    context.customAppColors.white,
                    BlendMode.srcIn,
                  ),
                ),
                8.h.ph,
                Text(
                  S.of(context).history,
                  style: AppTextStyles.font13Bold.copyWith(color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
