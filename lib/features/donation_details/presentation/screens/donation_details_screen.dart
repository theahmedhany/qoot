import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/common/widgets/custom_error_message.dart';
import 'package:qoot/core/common/widgets/custom_loading.dart';
import 'package:qoot/features/donation_details/presentation/logic/donation_details/donation_details_state.dart';
import '../../../../core/common/widgets/custom_app_bar.dart';
import '../../../../core/common/widgets/custom_button.dart';
import '../../../../core/helpers/extensions.dart';
import '../../../../core/utils/app_placeholder.dart';
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
          loading: () {
            return Scaffold(body: CustomLoading(size: 60.h));
          },
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
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.r),
                              child: FadeInImage.assetNetwork(
                                placeholder: AppPlaceholder.placeholderFood3,
                                image:
                                    details.data.images!.first.imagePath ?? '',
                                width: double.infinity,
                                height: 200.h,
                                fit: BoxFit.cover,
                                imageErrorBuilder:
                                    (context, error, stackTrace) {
                                      return Image.asset(
                                        AppPlaceholder.placeholderFood3,
                                        width: double.infinity,
                                        height: 250.h,
                                        fit: BoxFit.cover,
                                      );
                                    },
                              ),
                            ),
                            // Align(
                            //   child: CustomBuildTag(text: details.data.statusDisplayName ??"", textColor: , backgroundColor: backgroundColor),
                            // )
                          ],
                        ),
                        22.h.ph,
                        CustomInfoDonation(
                          donationDetailsData: details.data,
                        ),
                        12.h.ph,
                        CustomRestaurantInformationCard(
                          donationDetailsData: details.data,
                        ),
                        12.h.ph,
                        CustomRestaurantImpactCard(
                          donationDetailsData: details.data,
                        ),
                        38.h.ph,
                        CustomButton(
                          text: S.of(context).reserveNow,
                          height: 52.h,
                        ),
                        32.h.ph,
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
          error: (message) {
            return Scaffold(
              body: Expanded(
                child: Center(
                  child: CustomErrorMessage(message: message),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
