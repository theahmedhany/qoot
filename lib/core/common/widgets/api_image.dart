import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/common/widgets/custom_loading.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';

class ApiImage extends StatelessWidget {
  final String? imageUrl;
  final double width;
  final double height;
  final double borderRadius;

  const ApiImage({
    super.key,
    required this.imageUrl,
    required this.width,
    required this.height,
    this.borderRadius = 12,
  });

  @override
  Widget build(BuildContext context) {
    if (imageUrl == null || imageUrl!.isEmpty) {
      return Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: context.customAppColors.primary300.withValues(alpha: 0.2),
          borderRadius: BorderRadius.circular(borderRadius.r),
        ),
        child: Icon(
          Icons.image,
          color: context.customAppColors.primary800,
          size: 40.r,
        ),
      );
    }
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius.r),
      child: CachedNetworkImage(
        imageUrl: imageUrl!,
        width: width,
        height: height,
        fit: BoxFit.cover,
        placeholder: (context, url) => const Center(
          child: CustomLoading(size: 50),
        ),
        errorWidget: (context, url, error) {
          return Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              color: context.customAppColors.primary300.withValues(alpha: 0.2),
              borderRadius: BorderRadius.circular(borderRadius.r),
            ),
            child: Icon(
              Icons.broken_image,
              color: context.customAppColors.primary800,
              size: 40.r,
            ),
          );
        },
      ),
    );
  }
}
