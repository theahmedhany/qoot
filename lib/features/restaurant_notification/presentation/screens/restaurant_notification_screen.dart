import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/common/widgets/custom_button.dart';
import 'package:qoot/core/helpers/extensions.dart';
import 'package:qoot/core/theme/app_texts/app_text_styles.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';
import 'package:qoot/core/utils/app_images.dart';
import 'package:qoot/generated/l10n.dart';

class RestaurantNotificationScreen extends StatelessWidget {
  const RestaurantNotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: const AssetImage(AppImages.imagesRestaurantNoNotification),
              fit: BoxFit.contain,
              height: 200.h,
            ),
            24.h.ph,
            Text(
              S.of(context).restaurantNotificationsScreenTitle,
              textAlign: TextAlign.center,
              style: AppTextStyles.font16Bold.copyWith(
                color: context.customAppColors.black,
              ),
            ),
            4.h.ph,
            Text(
              S.of(context).restaurantNotificationsScreenSubtitle,
              textAlign: TextAlign.center,
              style: AppTextStyles.font13Regular.copyWith(
                color: context.customAppColors.black,
              ),
            ),
            16.h.ph,
            CustomButton(text: S.of(context).donateNow, width: 100.w),
          ],
        ),
      ),
    );
  }
}
