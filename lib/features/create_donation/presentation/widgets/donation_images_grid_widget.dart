import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:qoot/core/common/widgets/custom_upload_container.dart';
import 'package:qoot/core/theme/app_texts/app_text_styles.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';
import 'package:qoot/core/utils/app_icons.dart';
import 'package:qoot/core/utils/image_picker_util.dart';

class DonationImagesGridWidget extends StatelessWidget {
  final List<File> images;
  final int maxImages;
  final Function(List<File>) onImagesChanged;
  final String? imagesLabelText;
  final VoidCallback? onUploadTap;

  const DonationImagesGridWidget({
    super.key,
    required this.images,
    required this.maxImages,
    required this.onImagesChanged,
    this.imagesLabelText,
    this.onUploadTap,
  });

  void _addImages(BuildContext context) async {
    final pickedImages = await ImagePickerUtil.pickMultipleImages(
      limit: maxImages,
    );
    if (pickedImages != null && pickedImages.isNotEmpty) {
      final currentImages = List<File>.from(images);
      currentImages.addAll(pickedImages);
      final limitedImages = currentImages.take(maxImages).toList();
      onImagesChanged(limitedImages);
    }
  }

  void _removeImage(int index) {
    final updatedImages = List<File>.from(images);
    updatedImages.removeAt(index);
    onImagesChanged(updatedImages);
  }

  @override
  Widget build(BuildContext context) {
    if (images.isEmpty) {
      return CustomUploadContainer(
        title: imagesLabelText ?? 'صور الطعام',
        icon: AppIcons.iconsImageUpload,
        verticalPadding: 24,
        onTap: onUploadTap ?? () => _addImages(context),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              imagesLabelText ?? 'صور الطعام',
              style: AppTextStyles.font14SemiBold.copyWith(
                color: context.customAppColors.grey700,
              ),
            ),
            SizedBox(width: 4.w),
            Text(
              "(${images.length}/$maxImages)",
              style: AppTextStyles.font14SemiBold.copyWith(
                color: images.length == maxImages
                    ? context.customAppColors.primary800
                    : context.customAppColors.primary800,
              ),
            ),
            if (images.length == maxImages) ...[
              SizedBox(width: 4.w),
              Icon(
                Icons.check_circle,
                size: 16.w,
                color: context.customAppColors.primary800,
              ),
            ],
          ],
        ),
        SizedBox(height: 12.h),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 12.w,
            mainAxisSpacing: 12.h,
            childAspectRatio: 1,
          ),
          itemCount: images.length < maxImages
              ? images.length + 1
              : images.length,
          itemBuilder: (context, index) {
            if (index == images.length && images.length < maxImages) {
              return GestureDetector(
                onTap: () => _addImages(context),
                child: Container(
                  decoration: BoxDecoration(
                    color: context.customAppColors.primary800.withValues(
                      alpha: 0.1,
                    ),
                    borderRadius: BorderRadius.circular(12.r),
                    border: Border.all(
                      color: context.customAppColors.primary800,
                      width: 2,
                      style: BorderStyle.solid,
                    ),
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      AppIcons.iconsImageUpload,
                      width: 28.w,
                      height: 28.h,
                      colorFilter: ColorFilter.mode(
                        context.customAppColors.primary800,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                ),
              );
            }

            return Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    image: DecorationImage(
                      image: FileImage(images[index]),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 4.h,
                  right: 4.w,
                  child: GestureDetector(
                    onTap: () => _removeImage(index),
                    child: Container(
                      padding: EdgeInsets.all(4.r),
                      decoration: BoxDecoration(
                        color: context.customAppColors.error700.withValues(
                          alpha: 0.9,
                        ),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.close,
                        color: Colors.white,
                        size: 16.w,
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}
