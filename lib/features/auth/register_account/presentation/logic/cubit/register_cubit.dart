import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qoot/features/auth/register_account/domain/usecases/register_usecase.dart';
import 'package:qoot/features/auth/register_account/data/models/register_request_model.dart';
import 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final RegisterUseCase _useCase;

  RegisterCubit(this._useCase) : super(const RegisterState.initial());

  Future<void> register({
    required String firstName,
    required String lastName,
    required String email,
    required String phoneNumber,
    required String password,
    required String role,
  }) async {
    emit(const RegisterState.loading());
    try {
      final request = RegisterRequestModel(
        firstName: firstName,
        lastName: lastName,
        email: email,
        phoneNumber: phoneNumber,
        password: password,
        confirmPassword: password,
        role: role,
      );

      final result = await _useCase.call(request);

      if (!result.isSuccess) {
        emit(RegisterState.failure(result.message));
      } else {
        emit(RegisterState.success(result));
      }
    } on DioException catch (e) {
      String message = 'حدث خطأ غير متوقع';
      if (e.response?.data != null && e.response?.data is Map<String, dynamic>) {
        final data = e.response!.data as Map<String, dynamic>;
        message = data['message'] ?? message;
      }
      emit(RegisterState.failure(message));
    } catch (e) {
      emit(RegisterState.failure(e.toString()));
    }
  }
}
