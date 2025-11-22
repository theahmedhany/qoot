import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'donation_details_state.dart';

class DonationDetailsCubit extends Cubit<DonationDetailsState> {
  DonationDetailsCubit() : super(DonationDetailsState.initial());
}
