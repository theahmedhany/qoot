import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/common/widgets/custom_app_bar.dart';
import '../../../../core/common/widgets/custom_button.dart';
import '../../../../core/helpers/extensions.dart';
import '../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../core/theme/theme_manager/theme_extensions.dart';
import '../../../../generated/l10n.dart';
import '../widgets/custom_any_comments_container.dart';
import '../widgets/custom_confirm_pickup_info_card.dart';
import '../widgets/custom_upload_Photo.dart';

class CharityConfirmPickupScreen extends StatelessWidget {
  const CharityConfirmPickupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 16.h),
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: IntrinsicHeight(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomAppBar(text: S.of(context).confirmPickup),
                      16.h.ph,
                      const CustomConfirmPickupInfoCard(),
                      12.h.ph,
                      Text(
                        S.of(context).proofOfPickup,
                        style: AppTextStyles.font18SemiBold.copyWith(
                          color: context.customAppColors.grey900,
                        ),
                      ),
                      6.h.ph,
                      const CustomUploadPhoto(),
                      14.h.ph,
                      const CustomAnyCommentsContainer(),
                      const Spacer(),
                      14.h.ph,
                      CustomButton(
                        text: S.of(context).confirmPickup,
                        height: 52.h,
                      ),
                      28.h.ph,
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
