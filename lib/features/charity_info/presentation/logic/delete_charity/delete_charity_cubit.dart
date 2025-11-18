import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qoot/core/network/api_result.dart';
import 'package:qoot/features/charity_info/data/repos/delete_charity_repo.dart';
import 'delete_charity_state.dart';

class DeleteCharityCubit extends Cubit<DeleteCharityState> {
  final DeleteCharityRepo repo;

  DeleteCharityCubit(this.repo) : super(const DeleteCharityState.initial());

  Future<void> deleteCharity() async {
    emit(const DeleteCharityState.loading());
    final result = await repo.deleteCharity();

    result.when(
      success: (data) => emit(DeleteCharityState.success(data)),
      failure: (failure) => emit(
        DeleteCharityState.failure(failure),
      ),
    );
  }
}
