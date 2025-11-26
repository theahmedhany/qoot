import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/common/widgets/custom_text_form_field.dart';

import '../../../../core/helpers/extensions.dart';
import '../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../core/theme/theme_manager/theme_extensions.dart';

class CustomRestaurantInfoCard extends StatelessWidget {
  const CustomRestaurantInfoCard({
    super.key,
    required this.title,
    required this.controller,
    required this.width,
    this.maxLines,
    this.validator,
  });
  final String title;
  final TextEditingController controller;
  final double width;
  final int? maxLines;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        color: context.customAppColors.grey50,
      ),
      child: Padding(
        padding: EdgeInsets.all(16.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: AppTextStyles.font12Regular.copyWith(
                color: context.customAppColors.grey600,
              ),
            ),
            6.h.ph,
            AppTextFormField(
              controller: controller,
              maxLines: maxLines,
              validator: validator,
            ),
          ],
        ),
      ),
    );
  }
}
