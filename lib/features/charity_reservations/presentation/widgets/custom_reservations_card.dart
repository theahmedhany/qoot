import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:qoot/core/common/widgets/api_image.dart';
import 'package:qoot/core/constants/api_constants.dart';
import 'package:qoot/core/helpers/spacing.dart';
import 'package:qoot/core/routing/routes.dart';
import 'package:qoot/core/utils/app_icons.dart';
import 'package:qoot/features/charity_reservations/data/models/charity_reservation/charity_reservation_response.dart';
import 'package:qoot/features/charity_reservations/data/models/donation_images/donation_images_response.dart';
import 'package:qoot/features/charity_reservations/presentation/logic/donation_images/donation_images_cubit.dart';
import 'package:qoot/features/charity_reservations/presentation/logic/donation_images/donation_images_state.dart';

import '../../../../core/common/widgets/custom_build_tag.dart';
import '../../../../core/common/widgets/custom_button.dart';
import '../../../../core/helpers/extensions.dart';
import '../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../core/theme/theme_manager/theme_extensions.dart';
import '../../../../generated/l10n.dart';

class CustomReservationsCard extends StatelessWidget {
  const CustomReservationsCard({
    super.key,
    required this.statusTextColor,
    required this.statusBackgroundColor,
    required this.charityReservationItem,
  });

  final CharityReservationItem charityReservationItem;
  final Color statusTextColor;
  final Color statusBackgroundColor;

  @override
  Widget build(BuildContext context) {
    final statusEnum = ReservationStatusExtension.fromValue(
      charityReservationItem.status,
    );
    final statusText = statusEnum.localized(context);

    final expiryDateString = charityReservationItem.donationExpiry;
    DateTime? expiryDate;

    try {
      expiryDate = DateTime.parse(expiryDateString);
    } catch (_) {}

    final formattedExpiryTime = expiryDate != null
        ? DateFormat.jm().format(expiryDate)
        : 'N/A';

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: context.customAppColors.grey100),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 14.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BlocBuilder<DonationImagesCubit, DonationImagesState>(
                  builder: (context, state) {
                    return state.when(
                      initial: () {
                        context.read<DonationImagesCubit>().getDonationImages(
                          charityReservationItem.donationId.toString(),
                          context,
                        );
                        return _loadingImagePlaceholder(context);
                      },
                      loading: () => _loadingImagePlaceholder(context),
                      success: (DonationImagesResponse data) {
                        final img =
                            '${ApiConstants.imageBaseUrl}${data.data!.first.imagePath}';

                        return ApiImage(
                          imageUrl: img,
                          width: 80.r,
                          height: 80.r,
                          borderRadius: 12.r,
                        );
                      },
                      failure: (_) => _loadingImagePlaceholder(context),
                    );
                  },
                ),

                12.w.pw,

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              charityReservationItem.restaurantName,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: AppTextStyles.font16SemiBold.copyWith(
                                color: context.customAppColors.grey900,
                              ),
                            ),
                          ),

                          8.w.pw,

                          CustomBuildTag(
                            text: statusText,
                            textColor: statusTextColor,
                            backgroundColor: statusBackgroundColor,
                          ),
                        ],
                      ),

                      6.h.ph,

                      Text(
                        charityReservationItem.donationFoodType,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyles.font14Regular.copyWith(
                          color: context.customAppColors.accent600,
                        ),
                      ),

                      10.h.ph,

                      Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                SvgPicture.asset(
                                  AppIcons.peopleFilldIcon,
                                  width: 16.w,
                                  height: 16.h,
                                ),
                                horizontalSpace(4),
                                Flexible(
                                  child: Text(
                                    '${charityReservationItem.restaurantId} ${S.of(context).servings}',
                                    style: AppTextStyles.font12Regular.copyWith(
                                      color: context.customAppColors.accent600,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SvgPicture.asset(
                                  AppIcons.clockIcon,
                                  width: 16.w,
                                  height: 16.h,
                                ),
                                horizontalSpace(4),
                                Flexible(
                                  child: Text(
                                    'تنتهي: $formattedExpiryTime',
                                    style: AppTextStyles.font12Regular.copyWith(
                                      color: context.customAppColors.error500,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),

            16.h.ph,

            CustomButton(
              text: S.of(context).confirmPickup,
              height: 44.h,
              onTap: () {
                context.pushNamed(
                  Routes.charityConfirmPickup,
                  arguments: charityReservationItem,
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _loadingImagePlaceholder(BuildContext context) {
    return Container(
      width: 80.r,
      height: 80.r,
      decoration: BoxDecoration(
        color: context.customAppColors.grey200,
        borderRadius: BorderRadius.circular(12.r),
      ),
    );
  }
}
