import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/common/widgets/custom_loading.dart';
import 'package:qoot/core/helpers/spacing.dart';
import 'package:qoot/core/utils/app_images.dart';

import '../../theme/app_texts/app_text_styles.dart';
import '../../theme/theme_manager/theme_extensions.dart';

class CustomHeaderContainer extends StatelessWidget {
  const CustomHeaderContainer({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
  });

  final String imagePath;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 20.h, left: 16.w, right: 16.w),
      decoration: BoxDecoration(
        color: context.customAppColors.primary800,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20.r),
          bottomRight: Radius.circular(20.r),
        ),
      ),

      child: SafeArea(
        bottom: false,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 56.r,
              height: 56.r,
              child: ClipOval(
                child: CachedNetworkImage(
                  imageUrl: imagePath,
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
                    title,
                    style: AppTextStyles.font16Bold.copyWith(
                      color: context.customAppColors.grey0,
                    ),
                  ),

                  verticalSpace(5),

                  Text(
                    subtitle,
                    style: AppTextStyles.font13Regular.copyWith(
                      color: context.customAppColors.grey0,
                    ),
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
