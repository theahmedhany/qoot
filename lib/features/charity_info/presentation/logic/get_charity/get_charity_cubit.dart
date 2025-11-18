import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qoot/core/network/api_result.dart';
import 'package:qoot/features/charity_info/data/repos/get_charity_info_repo.dart';
import 'get_charity_state.dart';

class GetCharityCubit extends Cubit<GetCharityState> {
  final GetCharityInfoRepo repo;

  GetCharityCubit(this.repo) : super(const GetCharityState.initial());

  Future<void> fetchCharityInfo() async {
    emit(const GetCharityState.loading());
    final result = await repo.getCharityInfo();
    result.when(
      success: (data) => emit(GetCharityState.success(data)),
      failure: (failure) => emit(GetCharityState.failure(failure)),
    );
  }
}
