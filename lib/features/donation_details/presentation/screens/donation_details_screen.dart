import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/common/widgets/api_image.dart';
import 'package:qoot/core/common/widgets/custom_build_tag.dart';
import 'package:qoot/core/common/widgets/custom_error_message.dart';
import 'package:qoot/core/common/widgets/custom_loading.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';
import 'package:qoot/core/utils/dummy_food.dart';
import 'package:qoot/features/donation_details/presentation/logic/create_reservation/create_reservation_cubit.dart';
import 'package:qoot/features/donation_details/presentation/logic/donation_details/donation_details_state.dart';
import 'package:qoot/features/donation_details/presentation/widgets/reserve_button.dart';

import '../../../../core/common/widgets/custom_app_bar.dart';
import '../../../../core/helpers/extensions.dart';
import '../../../../generated/l10n.dart';
import '../logic/donation_details/donation_details_cubit.dart';
import '../widgets/custom_info_donation.dart';
import '../widgets/custom_restaurant_impact_card.dart';
import '../widgets/custom_restaurant_information_card.dart';

class DonationDetailsScreen extends StatelessWidget {
  const DonationDetailsScreen({super.key, required this.donationId});
  final String donationId;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DonationDetailsCubit, DonationDetailsState>(
      builder: (context, state) {
        return state.when(
          initial: () => const SizedBox.shrink(),
          loading: () => Scaffold(body: CustomLoading(size: 60.h)),
          success: (details) {
            return Scaffold(
              body: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.h),
                child: SingleChildScrollView(
                  child: SafeArea(
                    child: Column(
                      children: [
                        CustomAppBar(text: S.of(context).donationDetails),
                        12.h.ph,
                        Stack(
                          children: [
                            ApiImage(
                              height: 250.h,
                              width: double.infinity,
                              borderRadius: 8,
                              imageUrl:
                                  details.data.images != null &&
                                      details.data.images!.isNotEmpty
                                  ? details.data.images!.first.imagePath ?? ''
                                  : DummyFood.getRandom(),
                            ),
                            Positioned(
                              top: 16.h,
                              right: 16.w,
                              child: CustomBuildTag(
                                text: details.data.statusDisplayName ?? "",
                                textColor: context.customAppColors.primary800,
                                backgroundColor: context
                                    .customAppColors
                                    .primary300
                                    .withValues(alpha: 0.2),
                              ),
                            ),
                          ],
                        ),
                        22.h.ph,
                        CustomInfoDonation(donationDetailsData: details.data),
                        12.h.ph,
                        CustomRestaurantInformationCard(
                          donationDetailsData: details.data,
                        ),
                        12.h.ph,
                        CustomRestaurantImpactCard(
                          donationDetailsData: details.data,
                        ),
                        38.h.ph,
                        ReserveButton(
                          donationDetailsData: details.data,
                          cubit: context.read<CreateReservationCubit>(),
                        ),
                        32.h.ph,
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
          error: (message) => Scaffold(
            body: Center(child: CustomErrorMessage(message: message)),
          ),
        );
      },
    );
  }
}
