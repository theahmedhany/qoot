import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qoot/core/network/api_result.dart';
import '../../../domain/repository/forget_password_repository.dart';
import 'forget_password_state.dart';

class ForgetPasswordCubit extends Cubit<ForgetPasswordState> {
  final ForgetPasswordRepository repository;

  ForgetPasswordCubit(this.repository) : super(const ForgetPasswordState.initial());

  Future<void> forgetPassword(String email) async {
    emit(const ForgetPasswordState.loading());

    final result = await repository.forgetPassword(email);

    result.when(
      success: (response) {
        if (response.isSuccess) {
          emit(ForgetPasswordState.success(response));
        } else {
          emit(ForgetPasswordState.failure(response.message));
        }
      },
      failure: (error) {
        emit(ForgetPasswordState.failure(error.toString()));
      },
    );
  }
}
