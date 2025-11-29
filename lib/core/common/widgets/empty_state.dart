import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:qoot/core/helpers/spacing.dart';
import 'package:qoot/core/theme/app_texts/app_text_styles.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';
import 'package:qoot/core/utils/app_animations.dart';

class EmptyState extends StatelessWidget {
  const EmptyState({
    super.key,
    required this.message,
  });

  final String message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(
            AppAnimations.animationsEmptyBox,
            width: 200.w,
            height: 200.h,
            fit: BoxFit.cover,
          ),
          verticalSpace(24.h),
          Text(
            message,
            style: AppTextStyles.font18SemiBold.copyWith(
              color: context.customAppColors.grey600,
            ),
          ),
        ],
      ),
    );
  }
}
