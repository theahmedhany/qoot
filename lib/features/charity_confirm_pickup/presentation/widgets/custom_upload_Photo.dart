import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/common/widgets/snackbar_helper.dart';

import '../../../../core/common/widgets/custom_upload_container.dart';
import '../../../../core/helpers/extensions.dart';
import '../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../core/theme/theme_manager/theme_extensions.dart';
import '../../../../core/utils/app_icons.dart';
import '../../../../generated/l10n.dart';

class CustomUploadPhoto extends StatelessWidget {
  const CustomUploadPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: context.customAppColors.grey100),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  S.of(context).uploadPhoto,
                  style: AppTextStyles.font14Regular.copyWith(
                    color: context.customAppColors.grey900,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  S.of(context).required,
                  style: AppTextStyles.font12Regular.copyWith(
                    color: context.customAppColors.accent600,
                  ),
                ),
              ],
            ),
            15.h.ph,
            CustomUploadContainer(
              title: S.of(context).confirmPickupTakePhoto,
              icon: AppIcons.cameraIcon,
              verticalPadding: 24,
              onTap: () {
                SnackbarHelper.showErrorSnackbar(
                  context,
                  'هذا الاستلام لا يحتاج ادخال صورة.',
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
