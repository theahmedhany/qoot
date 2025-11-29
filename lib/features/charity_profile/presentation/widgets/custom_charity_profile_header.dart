import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/common/widgets/custom_loading.dart';
import 'package:qoot/core/di/service_locator.dart';
import 'package:qoot/core/helpers/spacing.dart';
import 'package:qoot/core/services/storage/charity_local_storage.dart';
import 'package:qoot/core/utils/app_images.dart';
import 'package:qoot/core/utils/dummy_charities.dart';

import '../../../../core/helpers/extensions.dart';
import '../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../core/theme/theme_manager/theme_extensions.dart';
import '../../../../generated/l10n.dart';

class CustomCharityProfileHeader extends StatelessWidget {
  const CustomCharityProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final charity = getIt<CharityLocalStorage>();
    return SafeArea(
      bottom: false,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 10.r,
          vertical: 8.r,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 56.r,
              height: 56.r,
              child: ClipOval(
                child: CachedNetworkImage(
                  imageUrl: DummyCharities.getRandom(),
                  fit: BoxFit.cover,
                  placeholder: (context, url) {
                    return Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: context.customAppColors.primary300.withValues(
                          alpha: 0.4,
                        ),
                        border: Border.all(
                          color: context.customAppColors.grey100,
                          width: 1.w,
                        ),
                      ),
                      child: const Center(
                        child: CustomLoading(size: 40),
                      ),
                    );
                  },
                  errorWidget: (context, url, error) {
                    return Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: context.customAppColors.primary300.withValues(
                          alpha: 0.4,
                        ),
                        border: Border.all(
                          color: context.customAppColors.grey100,
                          width: 1.w,
                        ),
                      ),
                      child: Center(
                        child: Image.asset(
                          AppImages.imagesMasterLightLogo,
                          width: 36.r,
                          fit: BoxFit.contain,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),

            horizontalSpace(12),

            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    charity.charityName ?? "",
                    style: AppTextStyles.font16Bold.copyWith(
                      color: context.customAppColors.accent600,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),

                  verticalSpace(5),

                  Row(
                    children: [
                      Text(
                        S.of(context).verifiedAccount,
                        style: AppTextStyles.font13Regular.copyWith(
                          color: context.customAppColors.neutral800,
                        ),
                      ),
                      8.w.pw,
                      const Icon(Icons.verified, color: Colors.green, size: 16),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
