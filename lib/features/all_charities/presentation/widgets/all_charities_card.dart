import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qoot/core/common/widgets/custom_loading.dart';
import 'package:qoot/core/helpers/spacing.dart';
import 'package:qoot/core/theme/app_texts/app_text_styles.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';
import 'package:qoot/core/utils/app_icons.dart';
import 'package:qoot/core/utils/app_images.dart';
import 'package:qoot/core/utils/dummy_charities.dart';
import 'package:qoot/features/all_charities/data/models/all_charities_model.dart';

class AllCharitiesCard extends StatelessWidget {
  const AllCharitiesCard({
    super.key,
    required this.charity,
    required this.onTap,
  });

  final CharityItem charity;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12.r),
      child: Container(
        decoration: BoxDecoration(
          color: context.customAppColors.background,
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(
            color: context.customAppColors.grey100,
            width: 1.w,
          ),
          boxShadow: [
            BoxShadow(
              color: context.customAppColors.grey200,
              spreadRadius: 1,
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.all(8.r),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.r),
                  child: CachedNetworkImage(
                    imageUrl: DummyCharities.getRandom(),
                    width: double.infinity,
                    fit: BoxFit.cover,
                    placeholder: (context, url) {
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
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    charity.name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyles.font14SemiBold.copyWith(
                      color: context.customAppColors.grey900,
                    ),
                  ),
                  verticalSpace(6),
                  Row(
                    children: [
                      SvgPicture.asset(
                        AppIcons.iconsLocation,
                        width: 16.w,
                        height: 16.h,
                        colorFilter: ColorFilter.mode(
                          context.customAppColors.primary800,
                          BlendMode.srcIn,
                        ),
                      ),
                      horizontalSpace(4),
                      Expanded(
                        child: Text(
                          charity.address,
                          style: AppTextStyles.font12Regular.copyWith(
                            color: context.customAppColors.grey600,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  verticalSpace(4),
                  Row(
                    children: [
                      SvgPicture.asset(
                        AppIcons.iconsPeople,
                        width: 16.w,
                        height: 16.h,
                        colorFilter: ColorFilter.mode(
                          context.customAppColors.primary800,
                          BlendMode.srcIn,
                        ),
                      ),
                      horizontalSpace(4),
                      Expanded(
                        child: Text(
                          charity.capacity.toString(),
                          style: AppTextStyles.font12Regular.copyWith(
                            color: context.customAppColors.grey600,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
