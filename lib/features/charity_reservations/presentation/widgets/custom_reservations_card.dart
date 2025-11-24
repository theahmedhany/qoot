import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:qoot/core/common/widgets/api_image.dart';
import 'package:qoot/core/routing/routes.dart';
import 'package:qoot/core/utils/dummy_food.dart';
import 'package:qoot/features/charity_reservations/data/models/charity_reservation/charity_reservation_response.dart';
import 'package:qoot/features/charity_reservations/data/models/donation_images/donation_images_response.dart';
import 'package:qoot/features/charity_reservations/presentation/logic/donation_images/donation_images_cubit.dart';
import 'package:qoot/features/charity_reservations/presentation/logic/donation_images/donation_images_state.dart';
import '../../../../core/common/widgets/custom_build_tag.dart';
import '../../../../core/common/widgets/custom_button.dart';
import '../../../../core/helpers/extensions.dart';
import '../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../core/theme/theme_manager/theme_extensions.dart';
import '../../../../core/utils/app_icons.dart';
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
    } catch (e) {
      expiryDate = null;
    }

    final formattedTime = expiryDate != null
        ? DateFormat.jm().format(expiryDate)
        : 'N/A';

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: context.customAppColors.grey100),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 10.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
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
                        return Container(
                          height: 60.h,
                          width: 60.h,
                          decoration: BoxDecoration(
                            color: context.customAppColors.grey200,
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                        );
                      },
                      loading: () {
                        return Container(
                          height: 60.h,
                          width: 60.h,
                          decoration: BoxDecoration(
                            color: context.customAppColors.grey200,
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                        );
                      },
                      success: (DonationImagesResponse data) {
                        if (data.data != null && data.data!.isNotEmpty) {
                          final imageUrl = data.data!.first.imagePath;
                          return ApiImage(
                            imageUrl: imageUrl,
                            height: 60.h,
                            width: 60.h,
                            borderRadius: 8,
                          );
                        } else {
                          return Image.network(DummyFood.getRandom());
                        }
                      },
                      failure: (String errorMessage) {
                        return Container(
                          height: 60.h,
                          width: 60.h,
                          decoration: BoxDecoration(
                            color: context.customAppColors.grey200,
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          child: const Icon(Icons.image_not_supported_outlined),
                        );
                      },
                    );
                  },
                ),
                12.w.pw,
                Expanded(
                  child: Column(
                    children: [
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        dense: true,
                        visualDensity: const VisualDensity(vertical: -4),
                        title: Text(
                          charityReservationItem.restaurantName,
                          style: AppTextStyles.font14SemiBold.copyWith(
                            color: context.customAppColors.grey900,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        subtitle: Text(
                          charityReservationItem.donationFoodType,
                          style: AppTextStyles.font12Regular.copyWith(
                            color: context.customAppColors.accent600,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        trailing: CustomBuildTag(
                          text: statusText,
                          textColor: statusTextColor,
                          backgroundColor: statusBackgroundColor,
                        ),
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(AppIcons.clockIcon),
                          8.w.pw,
                          Text(
                            '${S.of(context).expires}: $formattedTime',
                            style: AppTextStyles.font12Regular.copyWith(
                              color: context.customAppColors.error500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            8.h.ph,
            CustomButton(
              text: S.of(context).confirmPickup,
              height: 40.h,
              onTap: () {
                context.pushNamed(Routes.charityConfirmPickup);
              },
            ),
          ],
        ),
      ),
    );
  }
}
