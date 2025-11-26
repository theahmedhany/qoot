import 'dart:io';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../core/theme/theme_manager/theme_extensions.dart';
import '../../../../core/utils/app_icons.dart';
import '../../../../core/utils/image_picker_util.dart';
import '../../../charity_details/presentation/widgets/charity_documents_sheet_item.dart';

class ImagePickerBottomSheet extends StatelessWidget {
  final Function(List<File>) onImagesSelected;
  final int maxImages;

  const ImagePickerBottomSheet({
    super.key,
    required this.onImagesSelected,
    this.maxImages = 3,
  });

  Future<void> _requestCameraPermission(BuildContext context) async {
    final status = await Permission.camera.request();
    if (status.isDenied || status.isPermanentlyDenied) {
      if (context.mounted) {
        _showPermissionDialog(
          context,
          'إذن الكاميرا مطلوب',
          'يرجى السماح بالوصول إلى الكاميرا لالتقاط الصور.',
        );
      }
    }
  }

  Future<void> _requestGalleryPermission(BuildContext context) async {
    PermissionStatus status;

    if (Platform.isAndroid) {
      final androidInfo = await Permission.photos.status;
      if (androidInfo.isDenied) {
        status = await Permission.photos.request();
      } else {
        status = androidInfo;
      }
    } else {
      status = await Permission.photos.request();
    }

    if (status.isDenied || status.isPermanentlyDenied) {
      if (context.mounted) {
        _showPermissionDialog(
          context,
          'إذن المعرض مطلوب',
          'يرجى السماح بالوصول إلى المعرض لاختيار الصور.',
        );
      }
    }
  }

  void _showPermissionDialog(
    BuildContext context,
    String title,
    String message,
  ) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(
          title,
          style: AppTextStyles.font18Bold.copyWith(
            color: context.customAppColors.grey900,
          ),
        ),
        content: Text(
          message,
          style: AppTextStyles.font14Regular.copyWith(
            color: context.customAppColors.grey700,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(
              'إلغاء',
              style: AppTextStyles.font16SemiBold.copyWith(
                color: context.customAppColors.grey600,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              openAppSettings();
            },
            child: Text(
              'الإعدادات',
              style: AppTextStyles.font16SemiBold.copyWith(
                color: context.customAppColors.primary800,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: context.customAppColors.background,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30.r),
        ),
      ),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              verticalSpace(12),

              FadeInDown(
                duration: const Duration(milliseconds: 300),
                child: Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 20.r,
                    vertical: 10.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'اختر مصدر الصور',
                        style: AppTextStyles.font18Bold.copyWith(
                          color: context.customAppColors.grey900,
                        ),
                      ),
                      IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: Icon(
                          Icons.close,
                          size: 28.r,
                          color: context.customAppColors.grey900,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              FadeIn(
                duration: const Duration(milliseconds: 400),
                delay: const Duration(milliseconds: 150),
                child: Container(
                  height: 1,
                  color: context.customAppColors.grey300,
                  margin: EdgeInsets.symmetric(
                    horizontal: 20.r,
                    vertical: 10.h,
                  ),
                ),
              ),

              verticalSpace(12),

              FadeInUp(
                duration: const Duration(milliseconds: 500),
                delay: const Duration(milliseconds: 200),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.r),
                  child: CharityDocumentsSheetItem(
                    icon: AppIcons.cameraUploadIcon,
                    secondaryIcon: AppIcons.iconsMinusCircle,
                    title: 'الكاميرا',
                    onTap: () async {
                      await _requestCameraPermission(context);

                      if (context.mounted) {
                        Navigator.pop(context);
                        final image = await ImagePickerUtil.pickImageFromCamera(
                          imageQuality: 85,
                        );
                        if (image != null) {
                          onImagesSelected([image]);
                        }
                      }
                    },
                  ),
                ),
              ),

              verticalSpace(12),

              FadeInUp(
                duration: const Duration(milliseconds: 500),
                delay: const Duration(milliseconds: 300),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.r),
                  child: CharityDocumentsSheetItem(
                    icon: AppIcons.galleryUploadIcon,
                    secondaryIcon: AppIcons.iconsMinusCircle,
                    title: 'المعرض',
                    onTap: () async {
                      await _requestGalleryPermission(context);

                      if (context.mounted) {
                        Navigator.pop(context);
                        final images = await ImagePickerUtil.pickMultipleImages(
                          limit: maxImages,
                          imageQuality: 85,
                        );
                        if (images != null && images.isNotEmpty) {
                          onImagesSelected(images);
                        }
                      }
                    },
                  ),
                ),
              ),

              verticalSpace(22),
            ],
          ),
        ),
      ),
    );
  }
}
