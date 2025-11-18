import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qoot/core/network/api_result.dart';
import 'package:qoot/features/charity_info/data/models/update_charity/update_charity_request.dart';
import 'package:qoot/features/charity_info/data/repos/update_charity_info_repo.dart';
import 'update_charity_state.dart';

class UpdateCharityCubit extends Cubit<UpdateCharityState> {
  final UpdateCharityRepo repo;

  UpdateCharityCubit(this.repo) : super(const UpdateCharityState.initial());

  Future<void> updateCharity(UpdateCharityRequest request) async {
    emit(const UpdateCharityState.loading());
    final result = await repo.updateCharity(request);

    result.when(
      success: (data) => emit(UpdateCharityState.success(data)),
      failure: (failure) => emit(UpdateCharityState.failure(failure)),
    );
  }
}
