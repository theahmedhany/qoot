import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qoot/core/network/api_result.dart';
import '../../../data/repos/donation_images_repo.dart';
import 'donation_images_state.dart';

class DonationImagesCubit extends Cubit<DonationImagesState> {
  final DonationImagesRepo donationImagesRepo;

  DonationImagesCubit(this.donationImagesRepo)
    : super(const DonationImagesState.initial());

  Future<void> getDonationImages(String donationId) async {
    emit(const DonationImagesState.loading());

    final result = await donationImagesRepo.getDonationImages(donationId);
    if (isClosed) return;
    result.when(
      success: (data) => emit(DonationImagesState.success(data)),
      failure: (error) {
        emit(DonationImagesState.failure(error.toString()));
      },
    );
  }
}
