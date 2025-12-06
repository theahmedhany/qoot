import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:qoot/core/common/widgets/custom_loading.dart';
import 'package:qoot/core/constants/api_constants.dart';
import 'package:qoot/core/helpers/spacing.dart';
import 'package:qoot/core/routing/routes.dart';
import 'package:qoot/core/utils/app_images.dart';
import 'package:qoot/features/restaurant_home/data/models/restaurant_urgent_donation_model.dart';

import '../../../../core/common/widgets/custom_button.dart';
import '../../../../core/helpers/extensions.dart';
import '../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../core/theme/theme_manager/theme_extensions.dart';
import '../../../../generated/l10n.dart';

class UrgentDonationsCell extends StatelessWidget {
  const UrgentDonationsCell({
    super.key,
    required this.onTap,
  });
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final model = context.read<RestaurantUrgentDonationModel>();
    return GestureDetector(
      onTap: onTap,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
        color: context.customAppColors.grey0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16.r),
                  topRight: Radius.circular(16.r),
                ),
                child: CachedNetworkImage(
                  imageUrl:
                      '${ApiConstants.imageBaseUrl}${model.images.first.imagePath}',
                  width: double.infinity,
                  fit: BoxFit.cover,
                  placeholder: (context, url) {
                    return Container(
                      decoration: BoxDecoration(
                        color: context.customAppColors.primary300.withValues(
                          alpha: 0.4,
                        ),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16.r),
                          topRight: Radius.circular(16.r),
                        ),
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
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16.r),
                          topRight: Radius.circular(16.r),
                        ),
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

            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Flexible(
                        child: Text(
                          model.name,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: AppTextStyles.font11Regular.copyWith(
                            color: context.customAppColors.neutral700,
                          ),
                        ),
                      ),
                      8.w.pw,
                      Icon(Icons.verified, color: Colors.cyan, size: 16.sp),
                    ],
                  ),

                  verticalSpace(12),

                  Text(
                    model.description,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyles.font13Bold.copyWith(
                      color: context.customAppColors.neutral800,
                    ),
                  ),

                  verticalSpace(12),

                  CustomLinearProgressIndicator(
                    value: capacityToDecimal(model.capacity),
                  ),

                  verticalSpace(12),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              S.of(context).address,
                              style: AppTextStyles.font11Regular.copyWith(
                                color: context.customAppColors.grey600,
                              ),
                            ),
                            Text(
                              model.address,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: AppTextStyles.font13Bold.copyWith(
                                color: context.customAppColors.black,
                              ),
                            ),
                          ],
                        ),
                      ),

                      Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              S.of(context).capacity,
                              style: AppTextStyles.font11Regular.copyWith(
                                color: context.customAppColors.grey600,
                              ),
                            ),
                            Text(
                              model.capacity.toString(),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: AppTextStyles.font13Bold.copyWith(
                                color: context.customAppColors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 14),

                  CustomButton(
                    text: S.of(context).donate,
                    height: 46.h,
                    onTap: () {
                      context.pushNamed(Routes.createDonationScreen);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  double capacityToDecimal(int capacity, {int maxCapacity = 300}) {
    if (maxCapacity == 0) return 0;
    return capacity / maxCapacity;
  }
}

class CustomLinearProgressIndicator extends StatelessWidget {
  final double value;
  const CustomLinearProgressIndicator({
    super.key,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(100.r),
      child: LinearProgressIndicator(
        value: value,
        minHeight: 6.h,
        backgroundColor: context.customAppColors.grey300,
        valueColor: AlwaysStoppedAnimation<Color>(
          context.customAppColors.primary800,
        ),
      ),
    );
  }
}
