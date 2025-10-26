import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../core/theme/theme_manager/theme_extensions.dart';

class CustomRestaurantInformationListTile extends StatelessWidget {
  const CustomRestaurantInformationListTile({
    super.key,
    required this.title,
    required this.subTitle,
    required this.imageUrl,
    this.bgColor,
  });
  final String title;
  final String subTitle;
  final String imageUrl;
  final Color? bgColor;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Container(
        height: 48.h,
        width: 48.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          color: bgColor ?? context.customAppColors.accent300,
        ),
        child: Center(
          child: SvgPicture.asset(imageUrl, height: 20.h, width: 20.h),
        ),
      ),
      title: Text(
        title,
        style: AppTextStyles.font16SemiBold.copyWith(
          color: context.customAppColors.grey900,
        ),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: Text(
        subTitle,
        style: AppTextStyles.font14Regular.copyWith(
          color: context.customAppColors.accent600,
        ),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
