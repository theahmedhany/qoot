import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/common/widgets/custom_app_bar.dart';
import 'package:qoot/core/common/widgets/custom_button.dart';
import 'package:qoot/core/helpers/extensions.dart';
import 'package:qoot/core/theme/app_texts/app_text_styles.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';
import 'package:qoot/features/charity_confirm_pickup/presentation/widgets/custom_any_comments_container.dart';
import 'package:qoot/features/charity_confirm_pickup/presentation/widgets/custom_confirm_pickup_info_card.dart';
import 'package:qoot/features/charity_confirm_pickup/presentation/widgets/custom_upload_Photo.dart';
import 'package:qoot/generated/l10n.dart';

class CharityConfirmPickupScreen extends StatelessWidget {
  const CharityConfirmPickupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            padding: EdgeInsets.all(16.h),
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: IntrinsicHeight(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomAppBar(text: S.of(context).confirmPickup),
                    16.h.ph,
                    CustomConfirmPickupInfoCard(),
                    12.h.ph,
                    Text(
                      S.of(context).proofOfPickup,
                      style: AppTextStyles.font18SemiBold.copyWith(
                        color: context.customAppColors.grey900,
                      ),
                    ),
                    6.h.ph,
                    CustomUploadPhoto(),
                    14.h.ph,
                    CustomAnyCommentsContainer(),
                    Spacer(),
                    CustomButton(
                      text: S.of(context).confirmPickup,
                      height: 52.h,
                    ),
                    40.h.ph,
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
