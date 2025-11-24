import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qoot/core/network/api_result.dart';
import 'package:qoot/core/network/network_error_mapper.dart';
import 'package:qoot/features/charity_info/data/repos/get_charity_info_repo.dart';
import 'get_charity_state.dart';

class GetCharityCubit extends Cubit<GetCharityState> {
  final GetCharityInfoRepo repo;

  GetCharityCubit(this.repo) : super(const GetCharityState.initial());

  Future<void> fetchCharityInfo(BuildContext context) async {
    emit(const GetCharityState.loading());
    final result = await repo.getCharityInfo();
    result.when(
      success: (data) => emit(GetCharityState.success(data)),
      failure: (failure) {
        final massege = NetworkErrorMapper.toUserMessage(failure, context);
        emit(GetCharityState.failure(massege));
      },
    );
  }
}
