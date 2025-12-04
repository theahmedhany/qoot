import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qoot/core/network/api_result.dart';
import '../../../data/repos/charity_types_repo.dart';
import 'charity_types_state.dart';

class CharityTypesCubit extends Cubit<CharityTypesState> {
  final CharityTypesRepo repo;

  CharityTypesCubit(this.repo) : super(const CharityTypesState.initial());

  Future<void> getCharityTypes() async {
    emit(const CharityTypesState.loading());

    final result = await repo.getCharityTypes();

    result.when(
      success: (data) => emit(CharityTypesState.success(data)),
      failure: (error) => emit(CharityTypesState.failure(error.toString())),
    );
  }
}
