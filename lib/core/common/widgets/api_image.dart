import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/constants/api_constants.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';

class ApiImage extends StatelessWidget {
  final String imageUrl;
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
    final fixedUrl = imageUrl.startsWith('http')
        ? imageUrl
        : '${ApiConstants.baseUrl}$imageUrl';

    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: Image.network(
        fixedUrl,
        width: width,
        height: height,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) {
          return Container(
            width: width,
            height: height,
            color: context.customAppColors.grey200,
            child: Icon(Icons.broken_image, size: 40.sp),
          );
        },
      ),
    );
  }
}
