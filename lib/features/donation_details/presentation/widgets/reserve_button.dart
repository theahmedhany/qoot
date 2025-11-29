import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/common/widgets/custom_button.dart';
import 'package:qoot/core/common/widgets/custom_success_dialog.dart';
import 'package:qoot/core/common/widgets/snackbar_helper.dart';
import 'package:qoot/core/routing/routes.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';
import 'package:qoot/features/donation_details/data/models/create_reservetion/create_reservation_request.dart';
import 'package:qoot/features/donation_details/data/models/donation_details/donation_details_data.dart';
import 'package:qoot/features/donation_details/presentation/logic/create_reservation/create_reservation_cubit.dart';
import 'package:qoot/features/donation_details/presentation/logic/create_reservation/create_reservation_state.dart';
import 'package:qoot/generated/l10n.dart';

class ReserveButton extends StatelessWidget {
  final DonationDetailsData donationDetailsData;
  final CreateReservationCubit cubit;

  const ReserveButton({
    super.key,

    required this.cubit,
    required this.donationDetailsData,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CreateReservationCubit, CreateReservationState>(
      bloc: cubit,
      listener: (context, state) {
        state.whenOrNull(
          success: (data) {
            showDialog(
              context: context,
              builder: (context) => CustomSuccessDialog(
                onOkPressed: () {
                  Future.microtask(() {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                      Routes.navbarCharity,
                      (route) => false,
                    );
                  });
                },
                content: S.of(context).reservationcreatedsuccessfully,
              ),
            );
          },
          failure: (message) {
            SnackbarHelper.showErrorSnackbar(context, message);
          },
        );
      },
      builder: (context, state) {
        return state.when(
          initial: () => CustomButton(
            text: S.of(context).reserveNow,
            height: 52.h,
            onTap: () {
              final request = CreateReservationRequest(
                donationId: donationDetailsData.id!,
                notes: donationDetailsData.specialInstructions ?? '',
                pickupTime: DateTime.now(),
                pickupPersonName: donationDetailsData.contactPerson ?? '',
                pickupPersonPhone: donationDetailsData.contactPhone ?? '',
              );
              cubit.createReservation(request);
            },
          ),

          loading: () => SizedBox(
            height: 40.h,
            width: double.infinity,
            child: Center(
              child: CircularProgressIndicator(
                color: context.customAppColors.primary700,
              ),
            ),
          ),
          success: (_) => CustomButton(
            text: S.of(context).reserveNow,
            height: 52.h,
            onTap: null,
          ),
          failure: (message) => CustomButton(
            text: S.of(context).reserveNow,
            height: 52.h,
            onTap: () {
              final request = CreateReservationRequest(
                donationId: donationDetailsData.id!,
                notes: donationDetailsData.specialInstructions ?? '',
                pickupTime: DateTime.now(),
                pickupPersonName: donationDetailsData.contactPerson ?? '',
                pickupPersonPhone: donationDetailsData.contactPhone ?? '',
              );
              cubit.createReservation(request);
            },
          ),
        );
      },
    );
  }
}
