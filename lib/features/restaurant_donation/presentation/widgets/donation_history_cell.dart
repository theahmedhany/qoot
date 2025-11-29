import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/helpers/app_image_url_builder.dart';
import 'package:qoot/core/helpers/helper_functions.dart';
import 'package:qoot/features/restaurant_donation/data/models/donation_history_model.dart';

import '../../../../core/common/widgets/custom_button.dart';
import '../../../../core/helpers/extensions.dart';
import '../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../core/theme/theme_manager/theme_extensions.dart';
import '../../../../generated/l10n.dart';
import '../../../restaurant_home/presentation/widgets/urgent_donations_cell.dart';

class DonationHistoryCell extends StatelessWidget {
  const DonationHistoryCell({super.key});

  @override
  Widget build(BuildContext context) {
    final donation = context.read<DonationHistoryModel>();
    return SizedBox(
      width: double.infinity,
      child: IntrinsicHeight(
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.r),
              child: CachedNetworkImage(
                width: 120.w,
                imageUrl: AppImageUrlBuilder.build(
                  donation.images.first.imagePath,
                ),
                fit: BoxFit.cover,
              ),
            ),
            12.w.pw,

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Text(
                          donation.foodType,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: AppTextStyles.font11SemiBold.copyWith(
                            color: context.customAppColors.neutral700,
                          ),
                        ),
                      ),
                      Flexible(
                        child: Text(
                          HelperFunctions.formatDate(donation.createdAt),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: AppTextStyles.font11Regular.copyWith(
                            color: context.customAppColors.neutral700,
                          ),
                        ),
                      ),
                    ],
                  ),
                  4.h.ph,

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        donation.description,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyles.font11Bold.copyWith(
                          color: context.customAppColors.neutral800,
                        ),
                      ),
                      8.h.ph,
                      const CustomLinearProgressIndicator(
                        value: 0.35,
                      ),
                    ],
                  ),
                  4.h.ph,

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              S.of(context).reservationCount,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: AppTextStyles.font11Regular.copyWith(
                                color: context.customAppColors.grey600,
                              ),
                            ),
                            Text(
                              donation.reservationCount.toString(),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: AppTextStyles.font11Bold.copyWith(
                                color: context.customAppColors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              S.of(context).servings,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: AppTextStyles.font11Regular.copyWith(
                                color: context.customAppColors.grey600,
                              ),
                            ),
                            Text(
                              donation.estimatedServings.toString(),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: AppTextStyles.font11Bold.copyWith(
                                color: context.customAppColors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  4.h.ph,

                  Align(
                    alignment: Alignment.bottomRight,
                    child: CustomButton(
                      text: donation.statusDisplayName,
                      width: 115.w,
                      height: 38.h,
                    ),
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
