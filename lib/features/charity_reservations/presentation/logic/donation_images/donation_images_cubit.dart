import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qoot/core/network/api_result.dart';
import 'package:qoot/core/network/network_error_mapper.dart';
import '../../../data/repos/donation_images_repo.dart';
import 'donation_images_state.dart';

class DonationImagesCubit extends Cubit<DonationImagesState> {
  final DonationImagesRepo donationImagesRepo;

  DonationImagesCubit(this.donationImagesRepo)
    : super(const DonationImagesState.initial());

  Future<void> getDonationImages(
    String donationId,
    BuildContext context,
  ) async {
    emit(const DonationImagesState.loading());

    final result = await donationImagesRepo.getDonationImages(donationId);
    result.when(
      success: (data) => emit(DonationImagesState.success(data)),
      failure: (error) {
        final message = NetworkErrorMapper.toUserMessage(error, context);
        emit(DonationImagesState.failure(message));
      },
    );
  }
}
