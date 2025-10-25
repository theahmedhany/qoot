import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/common/widgets/custom_loading.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';
import 'package:qoot/core/utils/app_images.dart';

class CharityImagesRow extends StatelessWidget {
  const CharityImagesRow({super.key, required this.imageUrls});

  final List<String> imageUrls;

  @override
  Widget build(BuildContext context) {
    final appColors = context.customAppColors;

    final displayedImages = imageUrls.length > 4 ? imageUrls.sublist(0, 4) : imageUrls;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ...displayedImages.asMap().entries.map((entry) {
          int index = entry.key;
          String url = entry.value;
          return Expanded(
            child: Container(
              margin: EdgeInsets.only(
                right: index < displayedImages.length - 1 ? 8.r : 16.r,
                left: index > 0 ? 0 : 16.r,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.r),
                child: CachedNetworkImage(
                  imageUrl: url,
                  height: 70.h,
                  fit: BoxFit.cover,
                  placeholder: (context, url) {
                    return Container(
                      decoration: BoxDecoration(
                        color: appColors.primary300.withValues(alpha: 0.4),
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      child: const Center(child: CustomLoading(size: 50)),
                    );
                  },
                  errorWidget: (context, url, error) {
                    return Container(
                      decoration: BoxDecoration(
                        color: appColors.primary300.withValues(alpha: 0.4),
                        borderRadius: BorderRadius.circular(8.r),
                        border: Border.all(
                          color: appColors.grey100,
                          width: 1.w,
                        ),
                      ),
                      child: Center(
                        child: Image.asset(
                          AppImages.imagesMasterDarkLogo,
                          width: 32.w,
                          fit: BoxFit.contain,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          );
        }),
      ],
    );
  }
}
