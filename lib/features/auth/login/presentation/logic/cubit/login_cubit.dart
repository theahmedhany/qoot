import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qoot/core/network/api_result.dart';

import '../../../data/model/login_response_model.dart';
import '../../../domain/repositories/login_repository.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepository _repository;

  LoginCubit(this._repository) : super(const LoginState.initial());

  Future<void> login(String email, String password) async {
    emit(const LoginState.loading());

    final result = await _repository.login(email: email, password: password);

    result.when(
      success: (response) {
        emit(LoginState.success(response.message, response.data));
      },
      failure: (failure) {
        emit(LoginState.failure(failure.toString()));
      },
    );
  }
}
