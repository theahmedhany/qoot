import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qoot/core/network/api_result.dart';
import 'package:qoot/core/network/network_error_mapper.dart';
import 'package:qoot/features/charity_info/data/models/update_charity/update_charity_request.dart';
import 'package:qoot/features/charity_info/data/repos/update_charity_info_repo.dart';
import 'update_charity_state.dart';

class UpdateCharityCubit extends Cubit<UpdateCharityState> {
  final UpdateCharityRepo repo;

  UpdateCharityCubit(this.repo) : super(const UpdateCharityState.initial());

  Future<void> updateCharity(
    UpdateCharityRequest request,
    BuildContext context,
  ) async {
    emit(const UpdateCharityState.loading());
    final result = await repo.updateCharity(request);

    result.when(
      success: (data) => emit(UpdateCharityState.success(data)),
      failure: (failure) {
        final massege = NetworkErrorMapper.toUserMessage(failure, context);
        emit(UpdateCharityState.failure(massege));
      },
    );
  }
}
