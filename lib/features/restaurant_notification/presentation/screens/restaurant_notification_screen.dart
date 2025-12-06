import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/common/widgets/custom_button.dart';
import '../../../../core/helpers/extensions.dart';
import '../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../core/theme/theme_manager/theme_extensions.dart';
import '../../../../core/utils/app_images.dart';
import '../../../../generated/l10n.dart';

class RestaurantNotificationScreen extends StatelessWidget {
  const RestaurantNotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.r),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: const AssetImage(
                  AppImages.imagesRestaurantNoNotification,
                ),
                fit: BoxFit.contain,
                height: 200.h,
              ),
              32.h.ph,
              Text(
                S.of(context).restaurantNotificationsScreenTitle,
                textAlign: TextAlign.center,
                style: AppTextStyles.font16Bold.copyWith(
                  color: context.customAppColors.grey900,
                ),
              ),
              12.h.ph,
              Text(
                S.of(context).restaurantNotificationsScreenSubtitle,
                textAlign: TextAlign.center,
                style: AppTextStyles.font13Regular.copyWith(
                  color: context.customAppColors.grey900,
                ),
              ),
              32.h.ph,
              CustomButton(text: S.of(context).donateNow, width: 140.w),
            ],
          ),
        ),
      ),
    );
  }
}
