import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qoot/core/network/api_result.dart';
import 'package:qoot/features/donation_details/presentation/logic/donation_details/donation_details_state.dart';
import '../../../data/repos/donation_details_repo.dart';

class DonationDetailsCubit extends Cubit<DonationDetailsState> {
  final DonationDetailsRepo repo;

  DonationDetailsCubit(this.repo) : super(const DonationDetailsState.initial());

  Future<void> getDonationDetails(String donationId) async {
    emit(const DonationDetailsState.loading());
    final result = await repo.fetchDonationDetails(donationId);
    result.when(
      success: (data) {
        emit(DonationDetailsState.success(data));
      },
      failure: (error) {
        emit(DonationDetailsState.error(error.toString()));
      },
    );
  }
}
