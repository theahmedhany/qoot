import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/common/widgets/custom_loading.dart';
import '../../../../core/theme/theme_manager/theme_extensions.dart';
import '../../../../core/utils/app_images.dart';

class CharityDetailsMainImage extends StatelessWidget {
  const CharityDetailsMainImage({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16.r),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12.r),
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          width: double.infinity,
          height: 216.h,
          fit: BoxFit.cover,
          placeholder: (context, url) {
            return Container(
              decoration: BoxDecoration(
                color: context.customAppColors.primary300.withValues(
                  alpha: 0.4,
                ),
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: const Center(child: CustomLoading(size: 100)),
            );
          },
          errorWidget: (context, url, error) {
            return Container(
              decoration: BoxDecoration(
                color: context.customAppColors.primary300.withValues(
                  alpha: 0.4,
                ),
                borderRadius: BorderRadius.circular(12.r),
                border: Border.all(
                  color: context.customAppColors.grey100,
                  width: 1.w,
                ),
              ),
              child: Center(
                child: Image.asset(
                  AppImages.imagesMasterDarkLogo,
                  width: 100.w,
                  fit: BoxFit.contain,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
